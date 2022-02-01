# rubocop:disable Style/ClassVars
module PeopleMemory
  @@people = []

  def add_person(new_person)
    @@people.push(new_person)
  end

  def show_people
    @@people
  end
end
# rubocop:enable Style/ClassVars
