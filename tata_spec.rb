require 'rspec'
require_relative 'tata'

describe Tata do
    it "it has to be real" do
        expect{Tata.new(2010)}.to_not raise_error
    end
    it "prints beep" do
        my_car = Tata.new(2010)
        expect{my_car.honk_horn}.to output{"beep"}.to_stdout
    end
end
