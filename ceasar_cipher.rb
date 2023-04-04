#get the ascii number for the letter, change to number sum/subtract, change back to letters
# .ord letter to number, .char number to letter
# 65 A, 90 Z, 97 a, 122 z

def ceasar_cipher(word, number)
    number 
    letters = word.split("")
    letters.map! do |letter|
        number_letter = letter.ord
        if number_letter >= 65 && number_letter <= 90
            initial = 65
            final = 90
        elsif number_letter >= 97 && number_letter <= 122
            initial = 97
            final = 122
        end

        new_number = number_letter + number
        new_number = (new_number % final) + initial if new_number > final

        puts new_number

        letter = new_number.chr
    end
    new_letters = letters.join("")
    puts new_letters
end

ceasar_cipher("tesetzz", 3)