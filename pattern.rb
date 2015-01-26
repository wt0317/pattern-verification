#!/usr/bin/ruby
pat = ["a", "b", "b", "a"]
str = ["cat", "dog", "dog", "cat"]
# str = ["cat", "dog", "dog", "ct"]

abort 'does not match' if pat.length != str.length

hsh = {}
pat.each_with_index do |ltr, i|
    if hsh[ltr]
        abort 'does not match' if hsh[ltr] != str[i]
    else
        hsh[ltr] = str[i]
    end
end

puts 'matches pattern'
