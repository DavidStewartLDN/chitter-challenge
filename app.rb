# in app.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/base'

# files required in

require './lib/peep.rb'


set :database, "sqlite3:chitter.sqlite3"

class Chitter < Sinatra::Base
  get '/' do
    @peeps = Peep.all
    erb :index
  end

  get '/add_peep' do
    erb :add_peep
  end

  post '/add_peep/new' do
    new_peep = Peep.create(text: params[:new_peep])
    redirect '/'
  end 
end