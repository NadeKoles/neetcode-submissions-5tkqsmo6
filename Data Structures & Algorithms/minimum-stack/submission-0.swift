class MinStack {
    var stack: [Int] = []
    var minStack: [Int] = []

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        if !minStack.isEmpty {
           minStack.append(val <= minStack.last! ? val : minStack.last!)
        } else {
            minStack.append(val)
        }
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()   
    }

    func top() -> Int {
        return stack.last! 
    }

    func getMin() -> Int {
        return minStack.last! 
    }
}
