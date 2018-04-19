require 'rspec'
require_relative 'toyota'

describe Toyota do
      it "it has to be real" do
          expect{Toyota.new(2010)}.to_not raise_error
      end
      it "prints Whoop" do
          a_car = Toyota.new(2010)
          expect{a_car.honk_horn}.to output("Whoop!").to_stdout
      end

      it "accelerates by 7 mph" do
          a_car = Toyota.new(2010)
          expect(a_car.speed).to eq 0
          a_car.accelerate
          expect(a_car.speed).to eq 7
          expect{a_car.accelerate}.to change{a_car.speed}.by(7)
      end
 end
