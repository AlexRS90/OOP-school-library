require_relative '../student'
require_relative '../classroom'

describe Classroom do
  before :all do
    @student1 = Student.new(12, 125, 'Luis', 'B1')
    @student2 = Student.new(23, 321, 'Marco', 'C1')
    @classroom = Classroom.new('B1')
  end

  it 'has label?' do
    expect(@classroom.label).to eql 'B1'
  end

  it 'student in classroom?' do
    @classroom.add_student(@student1)
    expect(@classroom.student[0].name).to match 'Luis'
  end

  it 'is classroom updated?' do
    expect(@student1.classroom).to eql @classroom
  end
end
