require_relative '../student'
require_relative '../classroom'

describe Student do

    before :each do
        @B15 = Classroom.new('B15')
        @student = Student.new(21, 123, 'Pedro Enrique', @B15, parent_permission: false)
    end
    
    it 'has age?' do
        age = @student.age
        expect(age).to eql 21
    end

    it 'has name?' do
        name = @student.name
        expect(name).to eql 'Pedro Enrique'
    end

    it 'have permission?' do
        expect(@student.parent_permission).to be false
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

    it "When class Student is instantiated, it should contain 5 variables " do 
        containsAge = @student.respond_to?(:age) 
        containsId = @student.respond_to?(:id) 
        containsName = @student.respond_to?(:name)
        contains_parent_permission = @student.respond_to?(:parent_permission)
        contains_rental = @student.respond_to?(:rental)
        
        expect(containsAge).to eq true
        expect(containsId).to eq true
        expect(containsName).to eq true
        expect(contains_parent_permission).to eq true
        expect(contains_rental).to eq true
     end
end