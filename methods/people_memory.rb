module PeopleMemory
  @@people = []

  def addPerson(newPerson)
    @@people.push(newPerson)
  end

  def getPeople
    @@people
  end
end
