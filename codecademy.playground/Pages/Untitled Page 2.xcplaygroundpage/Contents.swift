//: [Previous](@previous)

import Foundation

//1创建一个迭代从到 的循环100，
//打印出迭代中的当前数字是偶数还是奇数。

for num in 1...100 {
// 如果一个数能被 2 整除，那么它就是偶数
    if num % 2 == 0 {
        print("even")
    } else {
        print("odd")
    }
}

//使用循环判断一个数是否为质数。
var checkPrime = 17
//假设该数是素数，除非另有证明
var isPrime = true
for num in 2...checkPrime - 1 {
//如果 checkPrime 能被当前数整除则它不是质数
    if checkPrime % num == 0 {
        isPrime = false
        break
    }
}
print("\(checkPrime) 是不是质数？ \(isPrime)!")

//遍历一个字符串并计算其中有多少个字符。
var counter = 0
for _ in "What is this  string for ants?" {
    counter += 1
}

print("There are \(counter) characters in that string!")

var starTracker = ""
//控制停止循环
var stopNum = 8

for _ in 1...stopNum {
    starTracker += "*"
    print(starTracker)
}
