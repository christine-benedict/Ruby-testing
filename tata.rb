require_relative 'car'

class Tata < Car
    def initialize(modelyear)
        super(modelyear)
        @sound = "beep"
     end
     def accelerate
         @speed = @speed + 2
         print "Your speed is #{@speed} \n"
     end
     def braking
         @speed = @speed - 1.25
         print "You broooooke! Your speed is #{@speed} \n"
     end
end
