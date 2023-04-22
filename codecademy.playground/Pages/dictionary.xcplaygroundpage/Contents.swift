var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫
var letterToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]
var morseText = " "
//将存储莫尔斯电码消息的空字符串

//遍历 englishText 中的每个字符
for element in englishText {
    
//检查该值是否存在于字典中
  if let morseChar = letterToMorse["\(element)"] {
    // 将字母附加到 morseText
 // 将空格附加到 morseText，因为每个字母在摩尔斯电码中由一个空格分隔。
      
  morseText += morseChar + " "
  } else{
      
      // 将 3 个空格附加到 morseText，因为摩尔斯电码消息中的每个单词由三个空格分隔
    morseText += "   "
  }
}
print(morseText)

var decodedMessage = " "
var currMorse = ""

// morseCodeArray 将存储来自 secretMessage 的单个莫尔斯电码字母
var morseCodeArray = [String]()

// 遍历 secretMorse 中的每个字符
for char in secretMessage {
    // 检查 char 是否不是空格
if char != " " {
  currMorse.append(char)
    // 如果char的值为空格字符，则执行else语句中的代码
} else {
    switch currMorse {
    case "":
        currMorse += " "
    case " ":
        morseCodeArray.append(" ")
        currMorse = ""
    default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
   }
  }
morseCodeArray.append(currMorse)

var morseToLetter: [String: String] = [:]

// 遍历 letterToMorse 字典，将键作为值添加，将值作为键添加到 morseToLetter 字典
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

for morseValue in morseCodeArray {
    // 检查该值是否存在于 morseToLetter 字典中
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
      //如果它不在字典中，它可能是一个空格
  } else {
    decodedMessage += " "

  }
}
print (decodedMessage)
