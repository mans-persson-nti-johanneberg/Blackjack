class Cards
    attr_reader :suit, :value

    def Initilize (sui, val)
        @suit = sui
        @value = val
    end
   
end


Card1 = Cards.new("Klöver", 4)

puts Card1.value