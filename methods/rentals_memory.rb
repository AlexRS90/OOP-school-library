# rubocop:disable Style/ClassVars
module RentalsMemory
  @@rentals = []

  def add_rental(new_rental)
    @@rentals.push(new_rental)
  end

  def show_rentals
    @@rentals
  end
end
# rubocop:enable Style/ClassVars
