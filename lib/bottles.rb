class Bottles
  def verse(num_of_bottles)
    if num_of_bottles == 2
      line1 = "#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer.\n"
      line2 = "Take one down and pass it around, #{num_of_bottles - 1} bottle of beer on the wall.\n"
    elsif num_of_bottles == 1
      line1 = "#{num_of_bottles} bottle of beer on the wall, #{num_of_bottles} bottle of beer.\n"
      line2 = "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif num_of_bottles == 0
      line1 = "No more bottles of beer on the wall, no more bottles of beer.\n"
      line2 = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      line1 = "#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer.\n"
      line2 = "Take one down and pass it around, #{num_of_bottles - 1} bottles of beer on the wall.\n"
    end

    return line1 + line2
  end

  def verses(num1, num2)
    values = (num2 .. num1).to_a.reverse
    response = ""

    values.each do |number|
      response += verse(number) + "\n"
    end

    return response.chomp("\n")
  end

  def song
    return verses(99, 0)
  end
end
