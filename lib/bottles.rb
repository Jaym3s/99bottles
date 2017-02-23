class Bottles
  def song
    verses(99,0)
  end

  def verse(number_of_bottles)
    @num_of_bottles = number_of_bottles
    build_verse
  end

  def verses(start, last)
    start.downto(last).collect do |index|
      verse(index)
    end.join("\n")
  end

  private
  def build_verse
    if num_of_bottles == 1
      final_text
    elsif num_of_bottles == 0
      restart_text
    else
      decending_text
    end
  end

  def restart_text
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def final_text
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def decending_text
    "#{count_text} of beer on the wall, #{count_text} of beer.\n" +
      "Take one down and pass it around, #{one_less_count_text} of beer on the wall.\n"
  end

  def count_text
    text = "#{num_of_bottles} bottle"
    if num_of_bottles > 1
      text += 's'
    end
    text
  end

  def one_less_count_text
    @num_of_bottles = num_of_bottles - 1
    count_text
  end

  def num_of_bottles
    @num_of_bottles
  end
end
