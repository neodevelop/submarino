require "lib/tablero"

describe Tablero do
	it "should return true when the coordinates are 2, 3 " do
		@tablero = Tablero.new
		@tablero.disparar(2,3).should == true
	end

	it "should return false when the coordinates are 4, 4 " do
		@tablero = Tablero.new
		@tablero.disparar(4,4).should == false
	end
end
