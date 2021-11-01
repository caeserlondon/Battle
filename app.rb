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
  "<div style='border: 3px dashed red'>
  <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end
