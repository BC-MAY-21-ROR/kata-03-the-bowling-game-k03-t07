class Bowling_game
    def initialize
        @rolls = []
    end
    def roll pins
        @rolls << pins
        
    end
    def score
        result = 0 
        roll_index = 0
        10.times do 
            if strike roll_index
                result += bonus_strike roll_index
                roll_index += 1
            elsif is_spare roll_index
                result += bonus_spare roll_index
                roll_index += 2
            else
                result += framescore roll_index
                roll_index += 2
            end
            
    end
    result
    end

    def is_spare roll_index
        @rolls[roll_index] + @rolls[roll_index + 1] == 10
    end
    def bonus_spare roll_index
        @rolls[roll_index] + @rolls[roll_index + 1] + @rolls[roll_index + 2]
    end
    def framescore roll_index
        @rolls[roll_index] + @rolls[roll_index + 1]
    end
    def strike roll_index
        @rolls[roll_index] == 10
    end
    def bonus_strike roll_index
        @rolls[roll_index] + @rolls[roll_index + 1] + @rolls[roll_index + 2]
    end    
end