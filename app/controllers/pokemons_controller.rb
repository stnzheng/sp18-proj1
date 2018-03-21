class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id= current_trainer.id
		pokemon.save()

		redirect_to "/"
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		trainer = pokemon.trainer_id
		pokemon.health -= 10
		if pokemon.health <= 0
			pokemon.destroy()
		else
			pokemon.save()
		end

		# redirect_to "/trainers/" + pokemon.trainer_id.to_s 
		redirect_to trainer_path(current_trainer.id)
	end

	def new
		@pokemon_new = Pokemon.new
	end

	def create
    	pokemon = Pokemon.create(pokemon_params)
    	pokemon.health = 100
    	pokemon.level = 1
    	pokemon.trainer_id = current_trainer.id

    	# pokemon = Pokemon.create(pokemon_params, health: 100, level: 1, trainer_id: current_trainer.id)
    	if pokemon.save
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to pokemons_new_path
			flash[:error] = pokemon.errors.full_messages.to_sentence
		end
  	end

  	private

  	def pokemon_params
    	params.require(:pokemon).permit(:name, :ndex)
  	end
end
