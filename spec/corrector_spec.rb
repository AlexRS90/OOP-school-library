require 'minitest/autorun'
require_relative '../corrector'

describe Corrector do

    before :all do
        @corrector = Corrector.new
    end
    
    it 'instance of class?' do
        expect(@corrector).to be_instance_of Corrector
    end

    it 'correct a name?' do 
        name = 'louis'
        name = @corrector.correct_name(name)
        expect(name).to eql 'Louis'
    end
end
