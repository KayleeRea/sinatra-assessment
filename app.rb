require 'sinatra'
require 'sinatra/base'

class App < Sinatra::Application

  PRODUCT = []

  get '/' do
    erb :index, :locals =>{:new_product => PRODUCT}
  end

  get '/product' do
    erb :create
  end

  post '/' do
    PRODUCT << params[:new_product]
    redirect '/'
  end
end