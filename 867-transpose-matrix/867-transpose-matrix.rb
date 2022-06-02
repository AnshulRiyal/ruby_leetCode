# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  matrix[0].size.times.map{|j| matrix.map{|r| r[j]} }
  
#   lng = matrix[0].size #matrix.first.length
#   new_arr = []
#   lng.times do |i|
#     new_arr << matrix.map {|arr| arr[i]}
#   end
#   new_arr
end