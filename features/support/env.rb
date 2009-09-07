ENV['RACK_ENV'] = 'test'

# NOTE: This must come before the require 'webrat', otherwise
# sinatra will look in the wrong place for its views.
require File.dirname(__FILE__) + '/../../cds'

Sinatra::Application.app_file = File.join(File.dirname(__FILE__), *%w[.. .. cds.rb])

require 'rubygems'
require 'spec/expectations'
require 'webrat'



Webrat.configure do |config|
  config.mode = :sinatra 
end

#cancella il database di test alla fine. 
#NOTA: l'accesso ai metodi del driver nativo si ottiente tramite MongoMapper.connection,
#es: se in mongo driver il metodo per cancellare un db è: 
# m = Mongo::Connection.new("localhost")
# m.drop_database('db')
# con mogo mapper è:
# MongoMapper.connection.drop_database('db')

After do
  MongoMapper.connection.drop_database(@@db)
end

World do
  session = Webrat::SinatraSession.new
  session.extend(Webrat::Matchers)
  session.extend(Webrat::HaveTagMatcher)
  session
end


