def playagain?
    valid = false
    until valid == true
        print "Play again? [Y/N] "
        input = gets.chomp.downcase
        if input == "y"
            valid = true
            return true
        elsif input == 'n'
            valid = true
            return false
        else
            valid = false
        end
    end
end


def gameloop
    target = rand(100) + 1
    guessed = false
    tries = 0 

    while guessed != true
        print "Guess a number: "
        guess = gets.chomp.to_i
        if guess > target
            puts "Lower!"
            tries += 1
        elsif guess < target
            puts "Higher!"
            tries += 1
        elsif guess == target
            tries += 1
            puts "Correct! Guessed in #{tries} tries."
            guessed = true
            return tries
        elsif guess == ""
            puts "Go on, guess a number!"
        end
    end
end

if __FILE__ == $0
    $playing = true

    while $playing != false
    gameloop
    $playing = playagain?
    end

end