# Q0: Why is this error being thrown?
We have not created a pokemon controller yet


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
trainer_id is NULL


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Creates a button that does a patch via the capture_path, defined in our routes.rb file. The capture_path causes the app to route to pokemons#capture, with a parameter :id of pokemon. The capture method in PokemonsController is called, setting the trainer_id of the pokemon to be current_trainer.id.


# Question 3: What would you name your own Pokemon?
regiruby


# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed a path to trainers/[trainer id]. That path needed the specific trainer's ID, converted to string form. 


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
