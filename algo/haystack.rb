# Find the needle by writing one line of code. 
# As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with:
# haystack[1]

haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

# haystack.each do |element|
#   p element << "test"
# end

p haystack[:hay][3][:hay][:hay][1][:hay][2]



