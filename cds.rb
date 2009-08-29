require 'rubygems'
require 'mongomapper'
require 'sinatra'
require 'will_paginate'


before do
  content_type 'text/html', :charset => 'UTF-8'
end

MongoMapper.connection = XGen::Mongo::Driver::Mongo.new('localhost')
MongoMapper.database = 'cd'

class Cd
  include MongoMapper::Document

  key :disc_id, String
  key :artist, String
  key :title, String
  key :genre, String
  key :year, Integer
  key :tracks, Array
end

get '/cds/:page' do
  @cds = Cd.paginate(:per_page => 50, :page => params[:page].to_i)
  erb :index
end

get '/cds/' do
 redirect '/cds/1'
end