
import Foundation
 
struct User {
    let name: String
    let accountCreationDate: Date
}
 
func displayWelcomeMessage(for user: User) {
    print("Welcome \(user.name)!")
    print("You have been a user since \(getFormattedString(from: user.accountCreationDate))")
}
 
func getFormattedString(from date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.timeStyle = .none
    return dateFormatter.string(from: date)
}
