/*
 
 11. 数组排序
 给定一个整数数组 nums，将该数组升序排列。

 示例 1：
 输入：[5,2,3,1]
 输出：[1,2,3,5]
 示例 2：
 输入：[5,1,1,2,0,0]
 输出：[0,0,1,1,2,5]
 
 常见排序的几种思想：
 1. 插入式排序：直接插入排序 、希尔排序
 2. 交换式排序：冒泡排序、快速排序
 3. 选择排序： 直接选择排序、堆排序
 4. 归并排序
 5. 基数排序
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/sort-an-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */


//初始化一个待排序的数组
var nums = [5,0,3,54,1,11,9,8,9,-1,21,2,32,63]

/*
 1. 直接插入排序  时间复杂度O(n^2) 空间复杂度S(0)  稳定
 思想：将每一步待排序的元素，按照大小插入到之前已遍历排序的数组中
 */
func sortArray1(_ nums: inout [Int]) -> [Int] {
    //O(n)
    for i in (0..<nums.count) {
        let num = nums[i]
        if i > 0 {
            if num >= nums[i-1]{
                continue
            }
        }
        //O(n)
        for j in (0..<i) {
            // 如果<= 就不稳定了
            if num < nums[j]{
                nums.remove(at: i)
                nums.insert(num, at: j)
                break
            }
        }
    }
    return nums
}

/*
 2. 希尔排序
 */
func sortArray2(_ nums: inout [Int]) -> [Int] {
    for i in (0..<nums.count) {
        //        let num = nums[i]
    }
    return nums
}

/*
 3. 冒泡排序 时间复杂度O(n^2) 稳定
 思想：两两比较交换位置 ，每一轮把比较大的依次往后放
 */
func sortArray3(_ nums: inout [Int]) -> [Int] {
    for i in (0..<nums.count) {
        for j in (0..<nums.count-i) {
            if j == 0 { continue }
            if nums[j] < nums[j-1] {
                nums.swapAt(j-1,j)
            }
        }
    }
    return nums
}

/*
 4. 快速排序  时间复杂度O(nlogn) 空间复杂度S(logn)  不稳定
 思想：以某一个数据为基准(例如第1个或中间的)，将整个序列划分为左右两个子序列，左边的都比基准值小，右边的都不小于基准值
 */
func sortArray4(_ nums: inout [Int]) -> [Int] {
    qSort(nums, 0, nums.count-1)
    return nums
}
//递归划分子序列
func qSort(_ nums: [Int], _ left: Int, _ right: Int) {
    //基准索引
    var pivot = left
    
    
    
    //左序列
//    qSort(<#T##nums: [Int]##[Int]#>, <#T##left: Int##Int#>, <#T##right: Int##Int#>)
    
    //右序列
    
    
}


print(sortArray4(&nums))
