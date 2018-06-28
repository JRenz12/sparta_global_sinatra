require "sinatra"
require "sinatra/contrib" # PREVENTS SERVER FROM HAVING TO RESTART
require_relative "./controllers/teams_controller.rb"

run TeamsController
