require 'rspec'
require_relative 'tesla'

describe Tesla do
    it "it has to be real" do
        expect{Tesla.new(2010)}.to_not raise_error
    end
    it "prints Beep-bee-bee-boop-bee-doo-weep" do
        my_car = Tesla.new(2010)
        expect{my_car.honk_horn}.to output{"Beep-bee-bee-boop-bee-doo-weep"}.to_stdout
    end
end
