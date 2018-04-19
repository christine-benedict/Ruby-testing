require 'rspec'
require_relative 'car'

describe Car do
    it "has to be real" do
        expect{Car.new(2010)}.to_not raise_error
    end
    it "has 4 wheels" do
        a_car = Car.new(2010)
        expect(a_car.wheels).to eq 4
    end

    it "prints beep" do
        a_car = Car.new(2010)
        expect{a_car.honk_horn}.to output("BEEP!").to_stdout
    end

    it "has a model year" do
        a_car = Car.new(2010)
        expect(a_car.modelyear).to eq 2010
    end

    it "can turn the lights on" do
        a_car = Car.new(2010)
        expect{a_car.lights_on}.to change {a_car.lights}.from("off").to("on")
    end

    it "can turn the lights off" do
        a_car = Car.new(2010)
        a_car.lights_on
        expect{a_car.lights_off}.to change {a_car.lights}.from("on").to("off")
    end

    it "can signal left" do
        a_car = Car.new(2010)
        expect(a_car.signal_left).to eq "left"
    end
    it "can signal right" do
        a_car = Car.new(2010)
        expect(a_car.signal_right).to eq "right"
    end
    it "can signal off" do
        a_car = Car.new(2010)
        expect(a_car.signal_off).to eq "off"
    end

end
