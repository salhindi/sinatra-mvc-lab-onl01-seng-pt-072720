require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    sentence = PigLatinzer.new
    @piglatinzed = sentence.piglatinize(params[:user_phrase])

  
    erb :piglatinize
    
  end
  
end