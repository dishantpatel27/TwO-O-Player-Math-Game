class Question
    @@arr = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    def initialize()
        @first_num = @@arr.sample
        @second_num = @@arr.sample
    end
    def question_generator()
        puts "What does #{@first_num} plus #{@second_num} equal?"
    end
    def answer()
        return @first_num + @second_num
    end
end