class Challenge

  def solve_part_1(input)
    id, sleeps = sleeps(input).max_by{ |k,v| v[:total] }
    times = sleeps[:times].flatten
    id.to_i * times.max_by{ |t| times.count(t) }
  end

  def solve_part_2(input)
    sleeps = sleeps(input).map do |s|
      { id: s.first,
        longest: s.last[:times].flatten.group_by(&:itself).values
                  .sort{ |a,b| a.length <=> b.length }.last }
    end
    sleepiest_guard = sleeps.max_by { |s| s[:longest].length }
    sleepiest_guard[:id].to_i * sleepiest_guard[:longest].first
  end

  def sleeps(input)
    input.sort! { |a, b| a[0...18] <=> b[0...18] }
    guard, sleep = "", 0
    sleeps = Hash.new{ |h,k| h[k] = { total: 0, times: []  } }
    input.each { |i|
      case i[19]
      when "G" then
        guard = i[19..-1].scan(/#[0-9]+/).first[1..-1]
      when "f" then
        sleep = i[15..16].to_i
      when "w" then
        wokeup = i[15..16].to_i
        sleeps[guard][:total] += wokeup - sleep
        sleeps[guard][:times] << (sleep..wokeup).to_a
      end
    }
    sleeps
  end

end
