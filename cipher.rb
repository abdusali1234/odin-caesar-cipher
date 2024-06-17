ASCII_UPCASE_MIN = 65
ASCII_UPCASE_MAX = 90
ASCII_DOWNCASE_MIN = 97
ASCII_DOWNCASE_MAX = 122


def caesar_cipher(string, right_shift_val)
    string.chars.reduce("") do |message, char|
        ascii_val = char.ord
        base = ascii_val <= ASCII_UPCASE_MAX ? ASCII_UPCASE_MIN : ASCII_DOWNCASE_MIN

        if ascii_val.between?(ASCII_UPCASE_MIN, ASCII_UPCASE_MAX) || ascii_val.between?(ASCII_DOWNCASE_MIN, ASCII_DOWNCASE_MAX)
            rotation = (((ascii_val - base) + right_shift_val) % 26) + base
        else 
            rotation = ascii_val
        end
        message + rotation.chr
    end
end

p caesar_cipher("What a string!", 5)