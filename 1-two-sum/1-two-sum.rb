# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    l = nums.length
    result = []
    return if target.nil? || nums.length == 0
    (0...l).each do |i|
        n = target - nums[i]
        chk = nums.dup
        chk.delete_at(i)
        if chk.include?(n)
            loc = chk.find_index(n)
            result << i
            result << loc+1
            return result
        end
    end
end

# (0...l).each do |i|
    #     (i+1...l).each do |j|
    #         if nums[i]+nums[j] == target
    #             return [i,j]
    #         end
    #     end
    # end


#   result = []

#   return if target.nil? || nums.length == 0

#   nums_hash = {}

#   nums.each_with_index do |num, index|
#     previous_index = nums_hash[(target - num)]

#     if !previous_index.nil?
#       result << previous_index
#       result << index
#       break
#     end

#     nums_hash[num] =  index
#   end

#   return result;