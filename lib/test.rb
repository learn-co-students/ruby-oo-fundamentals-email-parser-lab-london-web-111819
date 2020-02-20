class Dog

    attr_accessor :breed, :colour, :gender

    def initialize(breed, colour, gender)
        @breed = breed
        @colour = colour
        @gender = gender
    end

    def condition
        if @gender = male
            puts "do not need period medicine"
        else
            puts "needs period medicine"
        end
    end
end

lucy = Dog.new("Mutt", "Grey", "Female")

ken = Dog.new("Bulldog", "Brown", "Male")
