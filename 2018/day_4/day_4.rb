class Challenge

  def solve_part_1(input)
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
        sleeps[guard][:times] << (sleep..wokeup)
      end
    }
    id, sleeps = sleeps.max_by{ |k,v| v[:total] }
    times = sleeps[:times].map(&:to_a).flatten
    id.to_i * times.max_by{ |t| times.count(t) }
  end

end
