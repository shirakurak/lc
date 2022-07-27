# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = Hash.new
    
    nums.length.times do |i|
        m = target - nums[i]
        
        if !h.key?(m)
            h[nums[i]] = i
        else
            return [h[m], i]
        end
    end
end