require './caesar_cipher'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'

get '/' do 
erb :welcome
end

get '/styles.css' do 
scss :styles
end