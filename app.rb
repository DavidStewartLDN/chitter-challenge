# in app.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/base'

set :database, "sqlite3:chitter.sqlite3"

class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/add_peep' do
    erb :add_peep
  end

end