class TeamsController < Sinatra::Base # INHERIT THE IN-BUILT CLASS BASE
#-------------------------------------------------------------------------------
    # THESE TWO LINES ARE MANDATORY IN EACH FILE
    set :root, File.join(File.dirname(__FILE__), '..')

    set :views, Proc.new {File.join(root, "views")}

    configure :development do
      register Sinatra::Reloader
    end
#-------------------------------------------------------------------------------

  teams = [
    {
      id: 0,
      name:"Manchester United",
      kit_color: "Red",
      nickname:"Red Devils",
      location:"Manchester United"
    },
    {
      id: 1,
      name:"Tottenham",
      kit_color: "White",
      nickname:"The Lillywhites",
      location:"London"
    },
    {
      id: 2,
      name:"West Bromwich",
      kit_color: "Blue and White",
      nickname:"The Throstles",
      location:"Birmingham"
    },
    {
      id: 3,
      name:"Everton",
      kit_color: "Blue",
      nickname:"Toffees",
      location:"Liverpool"
    }
  ]

  get "/" do
    @title = "My Top Teams"
    @teams = teams #CREATES AN INSTANCE VARIABLE
    erb :'/teams/index' # LINK TO THE HTML PAGE
  end

  get "/teams/:id" do # id is replaced with anything
    id = params[:id].to_i # TAKES THE ID
    @team = teams[id] # DECLARES A VARIABLE FOR THE ARRAY
    # @team # PASSES EVERYTHING IN THE ARRAY
    # ANOTHER WAY BELOW, INDIVDUALLY
    # @id = team[:id]
    # @name = team[:name]
    # @kit_color = team[:kit_color]
    # @nickname = team[:nickname]
    # @location = team[:location]
    erb :'/teams/show' #LINKS TO THE FOLDERS
  end

  get "/:id" do # ROUTES TO ANYTHING. IF A ROUTE IS AHEAD OF THIS THOUGH THEN IT WILL GO TO THAT INSTEAD.

  end

  post "/" do

  end

  get "/something" do

  end

  get "/teams" do

  end

  get "/teams/new" do

  end

  post "/teams" do

  end

  get "/teams/:id/edit" do

  end

  put "/teams/:id" do

  end

  delete "/teams/:id" do

  end

  post "/lunch" do

  end

end
