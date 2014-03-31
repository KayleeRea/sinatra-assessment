require 'sinatra'
require 'sinatra/base'

class App < Sinatra::Application

   get '/' do
     erb :index
   end

  get '/product' do
    erb :new_product
  end
end