require 'Date'

if __FILE__ == $0
    
    today = Date.today

    if today.friday?
        puts "IF YOU CAN BELIEVE IT, IT'S A FRIDAY ONCE AGAIN!"
    else
        puts "Today is not the day..."
    end
end