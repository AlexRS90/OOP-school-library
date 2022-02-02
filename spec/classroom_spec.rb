require 'minitest/autorun'
require_relative '../classroom'
require_relative '../student'

describe Classroom do
    
    before :all do 
        @student1 = Student.new(12,'Luis', 'b2')
        @student2 = Student.new(15, 'Marco','b3')

        @classroom = Classroom.new('Javascript')
    end

    it 'has label?' do
        expect(@classroom.label).to eql 'Javascript'
    end

    it 'student in classroom?' do
        @classroom.add_student(@student1)
        expect(@classroom.student[0].name).to match 'Luis'
    end

    it 'is classroom updated?' do
        expect(@student1.classroom).to eql @classroom
    end
end
