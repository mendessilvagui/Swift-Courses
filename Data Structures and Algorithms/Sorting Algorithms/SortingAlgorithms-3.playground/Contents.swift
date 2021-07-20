import UIKit

var numbers = [12,34,66,9,99,2,1,5,6]

print("Array before sorted")
print(numbers)

//var minIndex = 0

for i in 0..<numbers.count {
    
    let key = numbers[i]
    var j = i - 1
    
    while(j >= 0 && numbers[j] > key) {
        
        numbers[j + 1] = numbers[j]
        j -= 1
    }
    
    numbers[j + 1] = key
}

print("Array after sorted")
print(numbers)
