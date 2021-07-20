import UIKit
import Combine

//MARK: - Using RunLoop

/*
let runLoop = RunLoop.main

let subscription = runLoop.schedule(after: runLoop.now, interval: .seconds(2), tolerance: .milliseconds(100)) {
    print("Timer fired")
}

runLoop.schedule(after: .init(Date(timeIntervalSinceNow: 3.0))) {
    subscription.cancel()
}
*/

//MARK: - Timer class

/*
let subscription = Timer.publish(every: 1.0, on: .main, in: .common)
    .autoconnect()
    .scan(0) { counter, _ in
        counter + 1
    }
    .sink {
        print($0)
    }
*/

//MARK: - Using Dispatch Queue

/*
let queue = DispatchQueue.main

let source = PassthroughSubject<Int, Never>()

var counter = 0

let cancellable = queue.schedule(after: queue.now, interval: .seconds(1)) {
    source.send(counter)
    counter += 1
}

let subscription = source.sink {
    print($0)
}
*/
