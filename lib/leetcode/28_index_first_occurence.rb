require 'pry'

# @param {String} haystack
# @param {String} needle
# @return {Integer}

haystack = "sadbutsad"
needle = "sad"

def str_str(haystack, needle)
    response = haystack.index(needle)
    binding.pry
    if response == nil
        response = -1
    else
      response
    end
end

answer = str_str(haystack, needle)
binding.pry
puts answer