class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  # create a new recipe
  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    new_recipe = Recipe.new(params)
    if new_recipe.save
      redirect "/recipes/#{new_recipe.id}"
    else
      erb :error
    end
  end

  # edit a recipe

  # display all recipes

  # delete a recipe

  get '/recipes' do
    erb :index
  end

  # display a recipe
  get '/recipes/:id' do
    @recipe = Recipes.find(params[:id])
    reb :recipe
  end


end
