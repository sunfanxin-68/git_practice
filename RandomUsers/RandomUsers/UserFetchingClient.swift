//
//  File.swift
//  RandomUsers
//
//  Created by 孫凡欣 on 2023/04/15.
//

import Foundation

/*
 定义了一个名为 UserFetchingClient 的结构体，它使用 Swift 的 async/await 特性从一个 URL 获取用户数据。下面是这段代码的详细解释：

 首先，定义了一个名为 url 的私有静态常量，它是一个 URL 对象，表示要获取用户数据的远程 URL 地址。这个 URL 是一个随机用户数据生成器的 API，它返回一些模拟的用户数据，包括姓名、电子邮件地址和头像等信息。

 接下来，定义了一个名为 getUsers() 的异步函数，它是一个异步函数，使用 async 关键字标记。这个函数返回一个 String 类型的结果，表示获取的用户数据。函数也可能会抛出错误，因此使用 throws 关键字标记。

 在函数体中，首先使用 async let 语法从 URLSession.shared.data(from: url) 调用中异步获取一个 (Data, URLResponse) 元组。这个异步调用使用 URLSession 类的 data(from:) 方法从远程 URL 获取数据。在这个例子中，我们只需要返回数据本身，因此我们忽略了第二个元素。

 接下来，我们使用 await 关键字等待异步结果的返回，并将数据转换为 String 类型，使用 String(data: encoding:) 方法将 Data 对象解码为字符串。这里我们假设使用 utf8 编码，因此使用 .utf8 作为第二个参数。

 最后，我们将解码后的字符串返回作为函数的结果。

 总之，这段代码演示了 Swift 的 async/await 特性在网络编程中的用法，它简化了异步代码的编写和理解，并提高了代码的可读性和可维护性。
 */

struct UserFetchingClient {
    static private let url = URL(string: "https://randomuser.me/api/?results=10&format=pretty")!
    
    static func getUsers() async throws -> String {
        async let (data, _) = URLSession.shared.data(from: url)
        return try await String(data: data, encoding: .utf8)!
        
    }
}
