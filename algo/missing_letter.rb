# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

# attempt 1
# def find_missing_letter(range)
#   full_range = ("a".."z")
#   range = range.to_a
#   missing_letters = [].join

#   if range.include?(full_range) == false
#     full_range.each do |letter|
#       if range.include?(letter) == false
#         missing_letters << letter
#       end
#     end
#     puts missing_letters
#   end
# end

# find_missing_letter("a".."f")
# puts find_missing_letter("a".."z")

# attempt 2
# def find_missing_letter(range)
#   range = range.split(//)
#   missing_letter = []
#   new_range = (range[0]..range.last).to_a
#   if (range[0]..range.last).to_a == range
#       puts nil
#     elsif new_range.each do |letter|
#       if range.include?(letter)
#         new_range << letter
#       else
#         missing_letter << letter
#         missing_letter
#       end
#     end
#   end
# end

# attempt 3
# def find_missing_letter(range)
# split_range = []
# split_range = range.split(//)

# range_two = (split_range[0]..split_range[-1]).to_a
# range_two - split_range
# end

# attempt 4...triyng again, lol

def find_missing_letter(range)
split_range = []
split_range = range.split(//)
array = []

range_two = (split_range[0]..split_range[-1]).to_a
array << range_two - split_range

  if array.length > 0
    p array.join
  else
    p nil
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
