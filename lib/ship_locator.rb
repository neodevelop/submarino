class ShipLocator
	def initialize
		@@coordsSmallShip = [2,2]
		@@coordsMedShip = [3,3,4,3]	
	end
	def existShip?(x,y)
		exist = false
		if(@@coordsSmallShip[0] == x and @@coordsSmallShip[1] == y)
			exist =	true
		end
		
		if((@@coordsMedShip[0] == x and @@coordsMedShip[1] == y) or (@@coordsMedShip[2] == x and @@coordsMedShip[3]))
			exist = true
		end
		exist
	end	
end
