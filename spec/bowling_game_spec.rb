require './src/bowling_game'

RSpec.describe Bowling_game do
    it "exists" do
        expect(Bowling_game).to be_a Class
            
        end
    it "can new game" do
    game = Bowling_game.new
    20.times do game.roll(0) end
        expect(game.score).to eq(0)
    end
    it "can roll a spare" do
    game = Bowling_game.new
    game.roll(5)
    game.roll(5)
    game.roll(3)
    17.times do game.roll(0) end
    expect(game.score).to eq(16)
    end

    it "can roll a strike" do
    game = Bowling_game.new
    game.roll(10)
    game.roll(5)
    game.roll(3)
    16.times do game.roll(0) end 
    expect(game.score).to eq(26)
    end    
    
    it "all validation" do
        game = Bowling_game.new
        game.roll(10)
        game.roll(5)
        game.roll(5)
        game.roll(3)
        16.times do game.roll(0) end 
        expect(game.score).to eq(36)
        end  
        it "can roll a perfect game" do
            game = Bowling_game.new
            12.times do game.roll(10) end
             expect(game.score).to eq(300)   
        end
end