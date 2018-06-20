# Lindenmayer L-System
# by Daniel Miller
# June 2018

# from https://en.wikipedia.org/wiki/L-system

# Lindenmayer's original L-system for modelling the growth of algae.
# - variables : A B
# - constants : none
# - axiom  : A
# - rules  : (A → AB), (B → A)

initiator, n = ARGV

lSystem = initiator.split
$counter = 0


def rules(oldList)
    newList = Array.new
    for letter in oldList
        if (letter == "A")
            newList.concat(["A", "B"])
            oldList = newList
        elsif (letter == "B")
            newList.concat(["A"])
            oldList = newList
        else
            puts "Error: wrong input"
        end
    end
    $counter += 1
    return oldList
end

while $counter < n.to_i
    puts "n=#{$counter}: #{lSystem}"
    lSystem = rules(lSystem)
end
