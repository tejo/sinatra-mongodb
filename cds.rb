$LOAD_PATH << File.join(Dir.getwd,'lib')
require 'rubygems'
require 'mongomapper'
require 'sinatra'
require 'cd'


before do
  content_type 'text/html', :charset => 'UTF-8'
end



configure :test do
  @@db = "cd-test"
end

configure :development, :production do
  @@db = "cd"
end

MongoMapper.connection = XGen::Mongo::Driver::Mongo.new('localhost')
MongoMapper.database = @@db 


get '/cds/:page' do
  @cds = Cd.paginate(:per_page => 50, :page => params[:page].to_i)
  erb :index
end

get '/cds/:disc_id/view' do
  @cd = Cd.find_by_disc_id(params[:disc_id])
  erb :view
end

get '/cds/' do
 redirect '/cds/1'
end