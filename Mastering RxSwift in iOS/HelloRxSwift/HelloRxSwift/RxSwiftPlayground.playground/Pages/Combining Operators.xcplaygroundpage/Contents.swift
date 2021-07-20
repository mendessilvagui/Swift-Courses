import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

let left = PublishSubject<Int>()
let right = PublishSubject<Int>()

// Starts With

/*
let numbers = Observable.of(2,3,4)

let observable = numbers.startWith(1)
observable.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)
*/

// Concat

/*
let first = Observable.of(1,2,3)
let second = Observable.of(4,5,6)

let observable = Observable.concat([first,second])

observable.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)
*/

// Merge

/*
let source = Observable.of(left.asObservable(), right.asObservable())

let observable = source.merge()
observable.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)

left.onNext(5)
left.onNext(3)
right.onNext(2)
right.onNext(1)
left.onNext(99)
*/

// Combine Latest

/*
let observable = Observable.combineLatest(left, right, resultSelector: { lastLeft, lastRight in
    "\(lastLeft) \(lastRight)"
})

let disposable = observable.subscribe(onNext: { value in
    print(value)
})

left.onNext(45)
right.onNext(1)
left.onNext(30)
right.onNext(99)
right.onNext(2)
*/

// With Latest From

/*
let button = PublishSubject<Void>()
let textField = PublishSubject<String>()

let observable = button.withLatestFrom(textField)
let disposable = observable.subscribe(onNext: {
    print($0)
})

textField.onNext("Sw")
textField.onNext("Swif")
textField.onNext("Swift")

button.onNext(())
button.onNext(())
*/

// Reduce

/*
let source = Observable.of(1,2,3)

source.reduce(0, accumulator: +)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

source.reduce(0) { summary , newValue in
    return summary + newValue
}.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)
*/

// Scan

let source = Observable.of(1,2,3,4,5,6)

source.scan(0, accumulator: +)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

source.scan(0) { summary, newValue in
    return summary + newValue
}.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)
