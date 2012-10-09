require 'spec_helper'

describe Bogie do
  it 'should return correct version string' do
    Bogie.version_string.should == "Bogie version #{Bogie::VERSION}"
  end
end