import UIKit
import RxSwift
import RxCocoa

let subject = PublishSubject<String>()
let disposeBag = DisposeBag()
let trigger = PublishSubject<String>()

// Ingore

/*
subject
    .ignoreElements()
    .subscribe { _ in
        print("[Subscription is called]")
    }.disposed(by: disposeBag)

subject.onNext("A")
subject.onNext("B")
subject.onNext("C")

subject.onCompleted()
*/

// Element At

/*
subject.elementAt(2)
    .subscribe(onNext: { _ in
        print("You are out!")
    }).disposed(by: disposeBag)

subject.onNext("X")
subject.onNext("X")
subject.onNext("X")
*/

// Filter

/*
Observable.of(1,2,3,4,5,6,7)
    .filter { $0 % 2 == 0 }
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
*/

// Skip

/*
Observable.of("A","B","C","D","E","F")
    .skip(3)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
*/

// Skip While

/*
Observable.of(2,2,3,4,4)
    .skipWhile { $0 % 2 == 0 }
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
*/

// Skip Until

/*
subject.skipUntil(trigger)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

subject.onNext("A")
subject.onNext("B")

trigger.onNext("X")

subject.onNext("C")
*/

// Take

/*
Observable.of(1,2,3,4,5,6)
    .take(3)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
*/

// Take While

/*
Observable.of(2,4,6,7,8,10)
    .takeWhile {
        return $0 % 2 == 0
    }.subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
*/

// Take Until

subject.takeUntil(trigger)
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

subject.onNext("1")
subject.onNext("2")

trigger.onNext("X")

subject.onNext("3")
