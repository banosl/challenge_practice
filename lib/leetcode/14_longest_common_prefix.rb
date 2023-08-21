require 'pry'

def longest_common_prefix(strs)
  prefix = ""
  check = true
  i = 0

  until check == false
    if strs[0][i].nil?
      break
    else
      prefix += strs[0][i]
      strs.each do |word|
        if !word.start_with?(prefix)
          check = false
        end
      end
      i += 1
      
      if check == false
        prefix.chop!
      end
    end
  end

  prefix
end

p longest_common_prefix(["flower", "flow", "flight"]) # "fl"
p longest_common_prefix(["dog", "racecar", "car"]) # ""
p longest_common_prefix([""]) # ""