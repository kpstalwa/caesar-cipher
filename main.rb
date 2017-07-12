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

post '/parse' do
@text = params[:unciphtext]
@shift = params[:shift] 
@ciphertext = caesar_cipher(@text, @shift)
erb :cipher
end
