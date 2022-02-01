module RentalsMemory
  @@rentals = []

  def addRental(newRental)
    @@rentals.push(newRental)
  end

  def getRentals
    @@rentals
  end
end
