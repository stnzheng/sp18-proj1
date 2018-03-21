class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id= current_trainer.id
		pokemon.save()

		redirect_to "/"
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		if pokemon.health <= 0
			pokemon.destroy()
		else
			pokemon.save()
		end

		redirect_to "/trainers/" + pokemon.trainer_id.to_s 
		# redirect_to trainer_path(id: pokemon.trainer.trainer_id)
	end
end
