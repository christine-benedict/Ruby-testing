require_relative 'car'

class Toyota < Car
    def initialize(modelyear)
        super(modelyear)
        @sound = "Whoop!"
    end
    def accelerate
        @speed = @speed + 7
        print "Your speed is #{@speed} \n"
    end
    def braking
        @speed = @speed - 5
        print "You broooooke! Your speed is #{@speed} \n"
    end
end
