require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb(:index)
end

get '/secret' do
  erb(:index)
end

get '/moreroutes' do
  erb(:index)
end

get '/routesagain' do
  erb(:index)
end

get '/random-cat' do
  @random_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:index_two)
end