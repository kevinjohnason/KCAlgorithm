import Foundation

public class KCSortings{
    static public func quickSort(_ arr: inout [Int],begining:Int,end:Int){
        if begining >= end{
            return
        }
        let pivot = partition(&arr, begining: begining, end: end)
        if pivot == 0{
            return
        }
        quickSort(&arr, begining: begining, end: pivot - 1)
        quickSort(&arr, begining: pivot + 1, end: end)
    }
    
    static fileprivate func partition(_ arr: inout [Int],begining:Int,end:Int) -> Int{
        var smallerIndex = begining - 1
        if begining < end{
            for i in begining..<end{
                if arr[i] <= arr[end]{
                    smallerIndex += 1
                    let temp = arr[smallerIndex]
                    arr[smallerIndex] = arr[i]
                    arr[i] = temp
                }
            }
        }
        let temp = arr[smallerIndex + 1]
        arr[smallerIndex + 1] = arr[end]
        arr[end] = temp
        return smallerIndex + 1
    }
    
    static public func bubbleSort(array: inout [Int]){
        for i in 0..<array.count{
            for j in 0..<(array.count - i - 1){
                if array[j] > array[j+1]{
                    let temp : Int = array[j+1]
                    array[j+1] = array[j]
                    array[j] = temp
                }
            }
        }
    }

    static public func findMedian(_ arr: inout [Int],begining:Int,end:Int) -> Int{
        let targetIndex = Int(arr.count / 2)
        let pivot = partition(&arr, begining: begining, end: end)
        if pivot == targetIndex{
            return arr[pivot]
        }
        else if pivot > targetIndex{
            return findMedian(&arr,begining: 0,end: pivot - 1)
        }else{
            return findMedian(&arr,begining: pivot + 1,end: end)
        }
    }
    
    static fileprivate func insertionOneSort(_ arr: inout [Int],_ begin:Int,_ end:Int){
        for i in (begin+1...end).reversed(){
            if arr[i-1] > arr[i]{
                let temp = arr[i]
                arr[i] = arr[i-1]
                arr[i-1] = temp
            }else{
                break
            }
        }
    }
    
    static public func insertionSort(_ arr: inout [Int]){
        for i in 1..<arr.count{
            insertionOneSort(&arr,0,i)
        }
    }
}
