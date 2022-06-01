# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  final_arr=[]
  n=nums.length
  final_arr << nums[0]
  (1...n).each do |i|
    final_arr << final_arr[i-1]+nums[i]
  end
  return final_arr
end