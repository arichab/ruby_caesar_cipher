
def translate(message, shift)
  result = ""
  message.each_char do |char|
     base = char.ord < 91 ? 65:97
     if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      rotation = (((char.ord - base) +shift)%26) + base  
      result += rotation.chr
     else
      result += char
     end
    end
    p result
  end
  p "What do you want to cipher?"
  text = gets.chomp
  p "in which shift? (1 to 25)"
  shif = gets.chomp.to_i
  translate(text, shif)

  