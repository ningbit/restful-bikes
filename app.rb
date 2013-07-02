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
      "Hello world"
    end

    # list stations
    get '/stations' do
      @stations = Station.all.sort_by { |e| e.city }
      erb :index
    end

    get '/stations/new' do
      @station = Station.new
      erb :new
    end

    get '/stations/:id' do
      @station = Station.get(params[:id])
      erb :show
    end

    get '/station/edit/:id' do
      @station = Station.get(params[:id])
      erb :edit
    end

    #create new station
    post '/stations' do
      @station = Station.new(params[:station])
      if @station.save
        status 201
      redirect '/rabbits/' + @station.id.to_s
      else
      status 400
      erb :new
      end
    end

    get '/stations/delete/:id' do
      #delete confirmation
    end

    delete '/stations/:id' do
      #delete
    end

  end
end