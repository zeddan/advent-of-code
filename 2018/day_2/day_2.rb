class Challenge

  def solve_part_1(input)
    input.reduce([0,0]) do |total_count, str|
      add_array_values(total_count, count_letters(str)) 
    end.reduce(&:*)
  end

  def solve_part_2(input)
    input.each do |current_word|
      input.each do |comparing_word|
        next if current_word == comparing_word
        if diff(current_word, comparing_word).length == 1
          w1 = current_word.split("")
          w2 = comparing_word.split("")
          return (w2 - (w2 - w1)).join
        end
      end
    end
  end

  def count_letters(input)
    letters_count = Hash.new(0)
    input.each_char{ |char| letters_count[char] += 1 }
    letters_count = letters_count.values.uniq
    [ letters_count.count(2), letters_count.count(3) ]
  end

  private

  def diff(str1, str2)
    str1 = str1.split("")
    str2 = str2.split("")
    str2.map{ |c| c == str1.shift ? '' : c }.join
  end

  def add_array_values(array1, array2)
    array1.zip(array2).map{ |num1, num2| num1 + num2 }
  end

end
