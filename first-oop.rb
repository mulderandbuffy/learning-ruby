#https://www.ruby-lang.org/en/documentation/quickstart/3/

class MegaGreeter
    attr_accessor :names

    #init
    def initialize(names = "Everyone")
        @names = names
    end

    #say hi to everyone
    def say_hi
        #check if the input is empty
        if @names.nil?
            puts "..."
        #is the input iterable?
        elsif @names.respond_to?("each")
            @names.each do |n| #for n in names
                puts "Hello #{n}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            #join the list with the indicated delimiter
            puts "Goodbye #{names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    #Set name as "Laura" (Single string)
    mg.names = "Laura"
    mg.say_hi
    mg.say_bye

    #Set name to an array of names
    mg.names = ["Laura", "Hannah", "Daisy", "Danny"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end