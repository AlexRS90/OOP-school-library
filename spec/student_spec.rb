require 'minitest/autorun'
require_relative '../student'
require_relative '../classroom'

describe Student do

    before :each do
        B15 = Classroom.new('B15')
        @student = Student.new(21, 'Pedro Enrique', B15)
    end
    
    it 'has age?' do
        age = @student.age
        expect(age).to eql 21
    end

    it 'has name?' do
        name = @student.name
        expect(name).to eql 'Pedro Enrique'
    end

    # it 'has classroom' do
    #     expect(@student.class_room.label).to eql 'B15'
    # end
    

    it 'have permission?' do
        expect(@student.parent_permission).to be true
    end

    it 'instance of class student?' do
        expect(@student).to be_instance_of Student
    end

    it 'instance of class Person?' do
        expect(@student).to be_kind_of Person
    end

    it 'play hooky?' do
        hooky_design = @student.play_hooky
        expect(hooky_design).to eql "¯\(ツ)/¯"
    end
end
