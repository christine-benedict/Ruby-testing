require_relative 'vehicle'

class Car < Vehicle
    attr_reader :wheels, :modelyear, :lights, :signal, :speed
    def initialize(sound = "BEEP!", modelyear)
        @wheels = 4
        @sound = sound
        @modelyear = modelyear
        @lights = "off"
        @signal = "off"
        @speed = 0
    end
    def honk_horn
        print @sound
    end
    def lights_on
        @lights = "on"
    end
    def lights_off
        @lights = "off"
    end
    def signal_left
        @signal = "left"
    end
    def signal_right
        @signal = "right"
    end
    def signal_off
        @signal = "off"
    end
    def info
    "Wheels = #{@wheels} Sound = #{@sound} Model Year = #{@modelyear} Lights = #{@lights} Signal = #{@signal} Speed = #{@speed}"
    end
end

garage = []

def store car
    car << garage
end

my_car = Car.new(2000)


store my_car
p garage
