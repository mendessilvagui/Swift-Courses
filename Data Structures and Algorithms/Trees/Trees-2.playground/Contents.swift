import UIKit

class TreeNode<T> {
    
    var value: T
    var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        self.children.append(child)
    }
}

extension TreeNode {
    
    func forEachDepthFirst(_ visit: (TreeNode) -> Void) {
        
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit)
        }
    }
}

let beverages = TreeNode("Beverages")

let hot = TreeNode("Hot")
let cold = TreeNode("Cold")

beverages.add(hot)
beverages.add(cold)

let tea = TreeNode("Tea")
let coffee = TreeNode("Coffee")

hot.add(tea)
hot.add(coffee)

let soda = TreeNode("Soda")
let milk = TreeNode("Milk")

cold.add(soda)
cold.add(milk)

beverages.forEachDepthFirst {
    print($0.value)
}
