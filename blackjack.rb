class Cards
    attr_accessor :suit, :value
end

card1 = Cards.new
card1.suit = "Klöver"
card1.value = 2


card2 = Cards.new
card2.suit = "Ruter"
card2.value = 2

card3 = Cards.new
card3.suit = "Spader"
card3.value = 2

card4 = Cards.new
card4.suit = "Hjärter"
card4.value = 2

card5 = Cards.new
card5.suit = "Klöver"
card5.value = 3

card6 = Cards.new
card6.suit = "Ruter"
card6.value = 3

card7 = Cards.new
card7.suit = "Spader"
card7.value = 3

card8 = Cards.new
card8.suit = "Hjärter"
card8.value = 3

card9 = Cards.new
card9.suit = "Klöver"
card9.value = 4

card10 = Cards.new
card10.suit = "Ruter"
card10.value = 4


card11 = Cards.new
card11.suit = "Spader"
card11.value = 4

card12 = Cards.new
card12.suit = "Hjärter"
card12.value = 4

card13 = Cards.new
card13.suit = "Klöver"
card13.value = 5

card14 = Cards.new
card14.suit = "Ruter"
card14.value = 5

card15 = Cards.new
card15.suit = "Spader"
card15.value = 5

card16 = Cards.new
card16.suit = "Hjärter"
card16.value = 5

card17 = Cards.new
card17.suit = "Klöver"
card17.value = 6

card18 = Cards.new
card18.suit = "Ruter"
card18.value = 6

card19 = Cards.new
card19.suit = "Spader"
card19.value = 6

card20 = Cards.new
card20.suit = "Hjärter"
card20.value = 6

card21 = Cards.new
card21.suit = "Klöver"
card21.value = 7

card22 = Cards.new
card22.suit = "Ruter"
card22.value = 7

card23 = Cards.new
card23.suit = "Spader"
card23.value = 7

card24 = Cards.new
card24.suit = "Hjärter"
card24.value = 7

card25 = Cards.new
card25.suit = "Klöver"
card25.value = 8

card26 = Cards.new
card26.suit = "Ruter"
card26.value = 8

card27 = Cards.new
card27.suit = "Spader"
card27.value = 8

card28 = Cards.new
card28.suit = "Hjärter"
card28.value = 8

card29 = Cards.new
card29.suit = "Klöver"
card29.value = 9

card30 = Cards.new
card30.suit = "Ruter"
card30.value = 9

card31 = Cards.new
card31.suit = "Spader"
card31.value = 9

card32 = Cards.new
card32.suit = "Hjärter"
card32.value = 9

card33 = Cards.new
card33.suit = "Klöver"
card33.value = 10

card34 = Cards.new
card34.suit = "Ruter"
card34.value = 10

card35 = Cards.new
card35.suit = "Spader"
card35.value = 10

card36 = Cards.new
card36.suit = "Hjärter"
card36.value = 10

card37 = Cards.new
card37.suit = "Klöver"
card37.value = "Knekt"

card38 = Cards.new
card38.suit = "Ruter"
card38.value = "Knekt"

card39 = Cards.new
card39.suit = "Spader"
card39.value = "Knekt"

card40 = Cards.new
card40.suit = "Hjärter"
card40.value = "Knekt"

card41 = Cards.new
card41.suit = "Klöver"
card41.value = "Dam"

card42 = Cards.new
card42.suit = "Ruter"
card42.value = "Dam"

card43 = Cards.new
card43.suit = "Spader"
card43.value = "Dam"

card44 = Cards.new
card44.suit = "Hjärter"
card44.value = "Dam"

card45 = Cards.new
card45.suit = "Klöver"
card45.value = "Kung"

card46 = Cards.new
card46.suit = "Ruter"
card46.value = "Kung"

card47 = Cards.new
card47.suit = "Spader"
card47.value = "Kung"

card48 = Cards.new
card48.suit = "Hjärter"
card48.value = "Kung"

card49 = Cards.new
card49.suit = "Klöver"
card49.value = "Ess"

card50 = Cards.new
card50.suit = "Ruter"
card50.value = "Ess"

card51 = Cards.new
card51.suit = "Spader"
card51.value = "Ess"

card52 = Cards.new
card52.suit = "Hjärter"
card52.value = "Ess"








cards = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18, card19, card20, card21, card22, card23, card24, card25, card26, card27, card28, card29, card30, card31, card32, card33, card34, card35, card36, card37, card38, card39, card40, card41, card42, card43, card44, card45, card46, card47, card48, card49, card50, card51, card52]


hand = []
dealer = []
hand_value = 0
dealer_value = 0
action = ""


puts "Hej och välkommen till Blackjack. Vänligen skriv hur mycket du vill ha i din pot"

pot = gets.to_i
if pot.class != Integer
    raise "Du måste skriva ett heltal"
end

puts "Du har #{pot} chips i potten, skriv \"Kör\" för att köra blackjack eller skriv \"Stop\" för att avsluta programmet"
play = gets.chomp


while play.downcase == "kör"
    puts "Hur mycket vill du spela med?"
    active_pot = gets.to_i
    while active_pot > pot
        puts "Du kan inte betta mer än vad du har. Försök igen."
        active_pot = gets.to_i
    end

    pot -= active_pot

    hand = []
    dealer = []
    hand_value = 0
    dealer_value = 0

    cards_shuffle = cards.shuffle
    
    hand << cards_shuffle[0] << cards_shuffle[2]
    dealer << cards_shuffle[3] << cards_shuffle[1]

 
    
   

    puts "Du har: #{hand[0].suit} #{hand[0].value} och #{hand[1].suit} #{hand[1].value}"
       
    for i in hand
        if i.value.class == Integer
            hand_value += i.value
        elsif i.value.class == String && i.value != "Ess"
            hand_value += 10
        elsif
            i.value == "Ess" && hand_value + 11 <= 21
            hand_value += 11
        else
            hand_value += 1
        
        end
    end

    for i in dealer
        
        if i.value.class == Integer
            dealer_value += i.value
        elsif i.value.class == String && i.value != "Ess"
            dealer_value += 10
        elsif
            i.value == "Ess" && dealer_value + 11 <= 21
            dealer_value += 11
        else
            dealer_value += 1
        
        end
    end

       
    

    if dealer_value == 21
        puts "Dealer har blackjack"
        break
    end


    puts "Din hand är värd #{hand_value}"

    puts "Huset har #{dealer[0].suit} #{dealer[0].value}"

    while action.downcase != "stand"
        if hand[0].value != hand[1].value
            puts "Skriv \"hit\", \"double\" eller \"stand\""
            # puts action
            # if action != "hit" || "double" || "stand"
            #     raise "Du kan bara hitta, doubla eller standa"
            # end
        else
            puts "Skriv \"hit\", \"double\", \"split\" eller \"stand\""
        end
        action = gets.chomp
       

        k = 4
        j = 2
        if action == "hit"
           
            hand << cards_shuffle[k]
           
            
        
        
           l = 0 
            for i in hand
                l += 1
                if l < j
                    next
                end
                if i.value.class == Integer
                    hand_value += i.value
                elsif i.value.class == String && i.value != "Ess"
                    hand_value += 10
                elsif
                    i.value == "Ess" && hand_value + 11 <= 21
                    hand_value += 11
                else
                    hand_value += 1
                
                end
            end

            i = 0
            output = "Du har: "
            while i <= j
                output += " #{hand[i].suit} #{hand[i].value},"
                i += 1
            end
            puts output

            
            puts hand_value
            if hand_value > 21
                puts "Du blev tjock"
                break
            end
            k += 1
            j += 1
        elsif action == "stand"
            if hand_value > dealer_value
                puts "Huset hade #{dealer[0].suit} #{dealer[0].value} och #{dealer[1].suit} #{dealer[1].value} "
                puts "Du vann, du har nu #{pot} chips "
                pot += active_pot*2
            end
            


        end








        
        
    
    
    
    
    end

        

   
    


    puts "Du har #{pot} chips"
    puts "skriv kör eller stop"
    play = gets.chomp
end