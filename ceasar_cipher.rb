#get the ascii number for the letter, change to number sum/subtract, change back to letters
# .ord letter to number, .char number to letter
# 65 A, 90 Z, 97 a, 122 z
# r % n, r-n*(r/n).floor, r.divmod(n)[1]

def caesar_cipher(word, number)
    number = number % 26
    letters = word.split("")
    letters.map! do |letter|
        number_letter = letter.ord
        if number_letter.between?(65, 90) || number_letter.between?(97, 122)
            if number_letter.between?(65, 90)
                initial = 65
                final = 90
            elsif number_letter.between?(97, 122)
                initial = 97
                final = 122
            end
            number_letter = number_letter + number
            number_letter = (number_letter - final) + initial - 1 if number_letter > final
        end
        letter = number_letter.chr
    end
    puts letters.join("")
end

caesar_cipher("What a string!", 5)
caesar_cipher("What a string!", -5)
caesar_cipher("What a string!", 50)
caesar_cipher("What a string!", -50)