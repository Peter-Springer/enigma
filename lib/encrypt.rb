require "./lib/key.rb"
require "./lib/offsets.rb"

class Encrypt
  

  def char_map
    {'a' => 0,  'b' => 1,  'c' => 2,  'd' => 3,
      'e' => 4,  'f' => 5,  'g' => 6,  'h' => 7,
      'i' => 8,  'j' => 9,  'k' => 10, 'l' => 11,
      'm' => 12, 'n' => 13, 'o' => 14, 'p' => 15,
      'q' => 16, 'r' => 17, 's' => 18, 't' => 19,
      'u' => 20, 'v' => 21, 'w' => 22, 'x' => 23,
      'y' => 24, 'z' => 25, '0' => 26, '1' => 27,
      '2' => 28, '3' => 29, '4' => 30, '5' => 31,
      '6' => 32, '7' => 33, '8' => 34, '9' => 35,
      " " => 36, "." => 37, "," => 38}
    end

    def char_map_index(letter)
      down_case = letter.downcase
      char_map[down_case]
    end

    def encrypt_message(message)
      unencrypted = message.split("")
      results = []
      unencrypted.each do |letter|
        encrypted_letters = char_map_index(letter)
        results << (encrypted_letters)
      end
      results.join
    end

    def decrypt_message(message)
      # take in an encrypted message
      #iterate through encripted message
      #match to char map
      #output decrypted message
    end
  end


yo = Encrypt.new
puts yo.encrypt_message("r")
# puts yo.
