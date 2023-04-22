//: [Previous](@previous)

import Foundation
var animalNames = [
  "Zebra": "Equus quagga",
  "Giraffe": "Giraffa camelopardalis",
  "Elephant": "Proboscidea elephantide"
]
 
 
if let animalSci = animalNames["KEY"] {
  print("This animal is also known as a \(animalSci).")
} else {
  print("There is no value.")
}

if let giraffeSci = animalNames["Giraffe"] {
  print("A giraffe is also known as a \(giraffeSci).")
} else {
  print("There is no value.")
}
 
//print("\(giraffeSci) are herbivores.")
/* 编译器声明它giraffeSci不是初始化变量，因为它在其范围之外被引用。使用if-let语句时，请确保仅访问其范围内的变量。*/
