import UIKit
import Combine

//MARK: - Imperative programming

/*
let notification = Notification.Name("MyNotification")
 
let center = NotificationCenter.default

let observer = center.addObserver(forName: notification, object: nil, queue: nil) { notification in
    print("Notification recevied!")
}

center.post(name: notification, object: nil)
center.removeObserver(observer)
*/

//MARK: - Sending Notifications Using Publisher and Subscriber / Understanding Cancellable

/*
let notification = Notification.Name("MyNotification")
 
let publisher = NotificationCenter.default.publisher(for: notification, object: nil)

let subscription = publisher.sink { _ in
    print("Notification recevied")
}

NotificationCenter.default.post(name: notification, object: nil)

subscription.cancel()

NotificationCenter.default.post(name: notification, object: nil) // Subscription is canceled, so notification is never fired
*/

//MARK: - Implementing a Subscriber

/*
class StringSubscriber : Subscriber {
    
    typealias Input = String
    typealias Failure = Never
    
    func receive(subscription: Subscription) {
        print("Received Subscription")
        subscription.request(.max(3)) // backpressure
    }
    
    func receive(_ input: String) -> Subscribers.Demand {
        print("Received Value", input)
        return .none
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("Completed")
    }
}

let publisher = ["A","B","C","D","E","F","G","H","I","J","K"].publisher

let subscriber = StringSubscriber()

publisher.subscribe(subscriber)
*/

//MARK: - Subjects

/*
enum MyError: Error {
    case subscribeError
}

class StringSubscriber : Subscriber {
 
    typealias Input = String
    typealias Failure = MyError
    
    func receive(subscription: Subscription) {
        print("Received Subscription")
        subscription.request(.max(2))
    }
    
    func receive(_ input: String) -> Subscribers.Demand {
        print(input)
        return .max(1)
    }
    
    func receive(completion: Subscribers.Completion<MyError>) {
        print("Completed")
    }
}

let subscriber = StringSubscriber()

let subject = PassthroughSubject<String, MyError>()

subject.subscribe(subscriber)

let subscription = subject.sink { completion in
    print("Received Completion from sink")
} receiveValue: { value in
    print("Received value from sink:", value)
}

subject.send("A")
subject.send("B")

subscription.cancel()

subject.send("C")
subject.send("D")
*/

//MARK: - Type Eraser

let publisher = PassthroughSubject<Int, Never>().eraseToAnyPublisher()



