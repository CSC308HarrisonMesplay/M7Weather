import UIKit

//m7 challenge task 5 q2
 func currencySymbol(for country: String?) -> String? {
     switch `country` {
     case "US":
         return "$"
     case "DE":
         return "€"
     case "KR":
         return "₩"
     case "JP":
         return "¥"
     default:
         return "?"
     }
 }
 
 if let cs = currencySymbol(for: "US"){
    print(cs)
 }else{
    print("Not Found")
 }
 //q3
let input: String? = "42.5"

let fu = Double(input!)!
print("1. Forced unwrapping - \(fu)")

if let input, let ob = Double(input){
    print("2. Optional Binding - \(ob)")
}else{
    print("Invalid input")
}

let nc = Double(input ?? "0") ?? 0.0
print("3. Nil-Coescing - \(nc)")

//Q4.
let nickname: String? = "SwiftCoder"

//q5
//let t =
//q6
//let nt1 = (language: "swift")
//q7
var nt3 = (x: 10, y: 20)
nt3.y = 99
print(nt3.y)
//q8
let result = (tip: 8.0, total: 108.0, per: 54.0)
let(_, total, _) = result
print(total)
