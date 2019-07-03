class Challenge

  def solve_part_1(str)
    str = str.split("")
    idx = 0
    loop do
      break if idx + 1 >= str.size
      if str[idx].downcase == str[idx + 1].downcase && str[idx] != str[idx + 1]
        str.delete_at(idx)
        str.delete_at(idx)
        idx -= 1
      else
        idx += 1
      end
    end
    return str.size
  end

  def solve_part_2(input)
  end

  private

end
