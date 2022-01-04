require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello!'
end

get '/secret' do
  'You know the thing about a shark? He\'s got lifeless eyes, black eyes, like a doll\'s eyes. When he comes at ya, doesn\'t seem to be livin\'... until he bites ya. And those black eyes roll over white, and then, oh, then you hear that terrible high-pitch screamin\', the ocean turns red, and spite of all the poundin\' and the hollerin\', they all come in and they rip you to pieces.'
end

get '/random_cat' do
  @name = ['Rambo', 'Jones', 'Kirby'].sample
  erb(:index)
end

get '/cat_form' do
  erb(:form)
end

post '/named_cat' do
  @name = params[:name]
  erb(:index)
end
