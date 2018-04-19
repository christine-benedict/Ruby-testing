require_relative 'car'

class Tesla < Car
    def initialize (modelyear)
        super (modelyear)
        @sound = "Beep-bee-bee-boop-bee-doo-weep"
     end
     def accelerate
         @speed = @speed + 10
         print "Your speed is #{@speed} \n"
     end
     def braking
         @speed = @speed - 7
         print "You broooooke! Your speed is #{@speed} \n"
     end
end

my_tesla = Tesla.new(2019)
my_tesla.accelerate
my_tesla.braking
