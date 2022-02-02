require 'minitest/autorun'
require_relative '../teacher'

describe Teacher do

    before :each do
        @teacher = Teacher.new(83, 'John Doe', 'React/Redux')
    end
    
    it 'instance of class Teacher?' do
        expect(@teacher).to be_instance_of Teacher
    end

    it 'is kind of person?' do
        expect(@teacher).to be_kind_of Person
    end

    it 'validate name?' do
        expect(@teacher.validate_name).to match 'John Doe'
    end

    it 'has name?' do
        expect(@teacher.name).to match 'John Doe'
    end

    it 'has specialization?' do
        expect(@teacher.specialization).to match 'React/Redux'
    end
end
