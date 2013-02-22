require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get "/" do 
	erb :submarine	
end

get "/attack" do 
	@mensaje = "Fallaste XD"
	erb :submarine	
end
