import Foundation

public class KCSearching{
    public static func binarySearch(_ sortedArray:[Int],begin:Int,end:Int,target:Int) -> Int{
        if begin > end{
            return -1
        }
        let middlePoint = begin + (end - begin) / 2
        if target > sortedArray[middlePoint]{
            return binarySearch(sortedArray,begin:middlePoint+1,end:end, target: target)
        }else if target < sortedArray[middlePoint]{
            return binarySearch(sortedArray,begin:begin,end:middlePoint - 1,target: target)
        }
        return middlePoint
    }    
    
}
