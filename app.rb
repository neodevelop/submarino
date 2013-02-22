require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/tablero'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get "/" do 
	@@tablero_o = Tablero.new

    @jugador_1_1 = ""
    @jugador_2_3 = ""

	erb :submarine	
end

get "/attack" do 
    x = params[:x]
    y = params[:y]

	resultado = @@tablero_o.disparar(x,y)
	if(resultado)
		@mensaje = "Diste K!!! Yeaaah"
	    @jugador_2_3 = "X"
	else
		@mensaje = "Fallaste XD"
	end
	erb :submarine	
end
