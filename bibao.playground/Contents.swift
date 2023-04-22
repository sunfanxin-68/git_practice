import Cocoa

struct Calculator {
  func reduce(_ nums:[Int], using nextPartialResult: (Int, Int) -> Int, startingAt
  initialResult: Int) -> Int {
    var total = initialResult
    for num in nums {
      total = nextPartialResult(total, num)
    }
    return total
  }

  func filter(_ nums: [Int], using nextPartialResult: (Int) -> Bool) -> [Int] {
    var filteredNums = [Int]()
    for num in nums {
      if nextPartialResult(num) {
          filteredNums.append(num)
      }
     
    }
      return filteredNums
  }

}

let calculator = Calculator()
let tips = [5,2,3,1,9,4]
let addition : (Int, Int) -> Int = { $0 + $1 }
let sum = calculator.reduce(tips, using: addition, startingAt: 0)
print(sum)

let rainfallInInches = [5,2,8,0,0,4]
let rainDays = calculator.filter(rainfallInInches, using: {
  rainFall in rainFall != 0
})
print(rainDays)
