require './caesar_cipher'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'

get '/' do 
erb :cipher
end

get ('/styles.css') do 
scss :styles
end

get '/parse' do 
	params[:unciphtext]
end