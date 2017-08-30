//: Playground - noun: a place where people can play

import UIKit


var bubbleSortArray = [4,1,100,5,3,10,6,7,53]
KCSortings.bubbleSort(array: &bubbleSortArray)


var quickSortArray = [15,11,35,22,55,210,43,99,53,88,54]
KCSortings.quickSort(&quickSortArray, begining: 0, end: quickSortArray.count - 1)
KCSearching.binarySearch(quickSortArray, begin: 0, end: quickSortArray.count - 1, target: 22)


var insertArr = [15,11,35,22,55,210,43,99,53,88,54]
KCSortings.insertionSort(&insertArr)

let testTree = KCTree()
//testTree.dft()


var a = KCStupidHashMap()
a[5] = 5
print(a[105])

