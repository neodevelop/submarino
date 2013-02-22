class ShipLocator
	attr_accessor :coordsSmallShip
	def initialize
		@coordsSmallShip = [2,2]
		@coordsMedShip = [3,3,4,3]	
	end
	def existShip?(x,y)
		searchSmallShip(x,y) or searchMediumShip(x,y)
	end

	def searchSmallShip(xf,yf)
		 ((@coordsSmallShip[0] == xf) and (@coordsSmallShip[1] == yf))
	end
	def searchMediumShip(xf,yf)
		((@coordsMedShip[0] == xf and @coordsMedShip[1] == yf) or (@coordsMedShip[2] == xf and @coordsMedShip[3] == yf))
	end
end
