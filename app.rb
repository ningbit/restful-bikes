# require 'sinatra'
# require 'data_mapper'
# require 'dm-sqlite-adapter'
# require 'multi_json'
# require 'typhoeus'
require 'debugger'

Bundler.require
require_relative 'models/parser'
require_relative 'models/station'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/restfulbikesdevelopment.db")
DataMapper.auto_migrate!

module Bikes
  class App < Sinatra::Base
    get '/' do
      debugger
      "Hello world"
    end

    get '/stations' do
    end

    get '/stations/:id' do
    end

    get '/stations/new' do
    end

    get '/station/:id/edit' do
    end

  end
end