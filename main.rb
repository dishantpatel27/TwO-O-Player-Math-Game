require_relative "question.rb"
require_relative "player.rb"

module MathGame
    class Game
        def initialize()
            @player1 = Player.new("player1")
            @player2 = Player.new("player2")
        end

        def final_score()
            if(@player1.life > @player2.life)
                puts "Player 1 wins with a score of #{@player1.life}/3."
            elsif (@player2.life > @player1.life)
                puts "Player 2 wins with a score of #{@player2.life}/3."
            else 
                puts "It's a draw."
            end
        end


        def main()
            puts "Welcome to the Math Game."
            while(@player1.life != 0 && @player2.life != 0) do
                puts "#{@player1.name}'s Turn."
                question1 = Question.new
                question1.question_generator()
                user_input1 = $stdin.gets.chomp.to_i
                answer = question1.answer()
                @player1.current_score(user_input1,answer)
                puts "#{@player2.name}'s Turn."
                question2 = Question.new
                question2.question_generator()
                user_input2 = $stdin.gets.chomp.to_i
                answer = question2.answer()
                @player2.current_score(user_input2,answer)
            end
            self.final_score()
        end
        
    end
end

game1 = MathGame::Game.new
game1.main()




    




