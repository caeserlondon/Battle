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

get '/cat' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end