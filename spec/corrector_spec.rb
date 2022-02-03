require_relative '../corrector'

describe Corrector do
  before :all do
    @corrector = Corrector.new
  end

  it 'Instance of class?' do
    expect(@corrector).to be_instance_of Corrector
  end

  it 'Correct a name?' do
    name = 'AlejandroRamos'
    name = @corrector.correct_name(name)
    expect(name).to eql 'AlejandroR'
  end
end
