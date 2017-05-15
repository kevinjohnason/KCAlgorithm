//: Playground - noun: a place where people can play

import UIKit





func bubbleSort(array: inout [Int]){
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

//var bubbleSortArray = [4,1,100,5,3,10,6,7,53]
//bubbleSort(array: &bubbleSortArray)


func partition(_ arr: inout [Int],begining:Int,end:Int) -> Int{
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

func quickSort(_ arr: inout [Int],begining:Int,end:Int){
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

func findMedian(_ arr: inout [Int],begining:Int,end:Int) -> Int{
    let targetIndex = Int(arr.count / 2)
    let pivot = partition(&arr, begining: begining, end: end)
    print("pivot:\(pivot)")
    if pivot == targetIndex{
        return arr[pivot]
    }
    else if pivot > targetIndex{
        return findMedian(&arr,begining: 0,end: pivot - 1)
    }else{
        return findMedian(&arr,begining: pivot + 1,end: end)
    }
}

var quickSortArray = [15,11,35,22,55,210,43,99,53,88,54]
var array = quickSortArray.map{ $0 }
quickSort(&quickSortArray, begining: 0, end: quickSortArray.count - 1)
print(quickSortArray)



print(findMedian(&array, begining: 0, end: array.count-1))


func binarySearch(_ sortedArray:[Int],begin:Int,end:Int,target:Int) -> Int{
    if begin > end{
        return -1
    }
    print("searching \(target) from \(begin) to \(end)")
    let middlePoint = begin + (end - begin) / 2
    if target > sortedArray[middlePoint]{
        return binarySearch(sortedArray,begin:middlePoint+1,end:end, target: target)
    }else if target < sortedArray[middlePoint]{
        return binarySearch(sortedArray,begin:begin,end:middlePoint - 1,target: target)
    }
    return middlePoint
}


//let binarySearchArray = Array(0...0)
//print(binarySearch(binarySearchArray,begin:0,end:binarySearchArray.count - 1, target: 0))
