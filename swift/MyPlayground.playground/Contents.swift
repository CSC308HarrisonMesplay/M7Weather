import UIKit

//switch

let number = 5
switch number {
case 5:
    print("five")
case 10:
    print(10)
default:
    break
}

//range matching
1...10 //closed range
1..<10 //half open
(1...10).reversed()

switch number{
case 70...100:
    print("passed")
case 1..<70:
    print("failed")
default :
    break
}
