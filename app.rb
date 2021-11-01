require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "Can't be that secret if you're reading this"
end

get '/ryan' do
  "Ryan"
end

get '/mark' do
  "Mark"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  # p params
  @name = params[:name]
  erb(:index)
end