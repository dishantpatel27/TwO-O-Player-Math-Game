class Player
    attr_accessor:name
    attr_reader:life
    def initialize(name)
        @name = name
        @life = 3
    end
    def current_score(user_input,answer)
        if(user_input == answer)
            puts "Yes! That's correct."
            puts "Your score is #{@life}."
            
        else
            puts "Wrong answer."
            @life -= 1
            puts "Your score is #{@life}."
            
        end
    end
end