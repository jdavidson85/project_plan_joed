import Foundation
 
class ReminderApp {
    var reminders: [String]
 
    init() {
        reminders = []
    }
 
    func addReminder(_ reminder: String) {
        reminders.append(reminder)
    }
 
    func removeReminder(at index: Int) {
        if index >= 0 && index < reminders.count {
            reminders.remove(at: index)
        }
    }
 
    func listReminders() {
        for (index, reminder) in reminders.enumerated() {
            print("\(index + 1). \(reminder)")
        }
    }
}
 
// Example of using the ReminderApp class:
 
// Initialize the ReminderApp environment
let reminderApp = ReminderApp()
 
// Add reminders
reminderApp.addReminder("Buy groceries")
reminderApp.addReminder("Call mom")
reminderApp.addReminder("Finish project")
 
// List reminders
reminderApp.listReminders()
 
// Remove a reminder
reminderApp.removeReminder(at: 1)
 
// List reminders again
reminderApp.listReminders()
