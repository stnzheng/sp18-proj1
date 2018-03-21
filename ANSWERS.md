# Q0: Why is this error being thrown?
We have not created a pokemon controller yet


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
trainer_id is NULL


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Creates a button that does a patch via the capture_path, defined in our routes.rb file. The capture_path causes the app to route to pokemons#capture, with a parameter :id of pokemon. The capture method in PokemonsController is called, setting the trainer_id of the pokemon to be current_trainer.id.


# Question 3: What would you name your own Pokemon?
regiruby


# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path to trainers/. That path needed the specific trainer's ID, which was passed in to trainer_path(). 


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
ActiveRecord performs validation when a pokemon is created through the simple_form_for form. If there are any failed validations, the error messages can be accessed via errors.full_messages. The application.html.erb page renders any messages (via _messages.html.erb), which is what shows the error message at the top of the form's page.

# Give us feedback on the project and decal below!
I like pokemon very fun project

# Extra credit: Link your Heroku deployed app
