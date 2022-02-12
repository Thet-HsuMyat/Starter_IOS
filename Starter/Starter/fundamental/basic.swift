//
//  basic.swift
//  Starter
//
//  Created by Thet Hsu Myat on 2022/02/03.
//

import Foundation
var colorList = ["red","green","blue"]
var regionList : Set = ["Yangon","Mandalay","Naypyitaw"]
var townshipList:[String:[String]]=["Yangon":["Hledan","Insein","Lathar"]]

var doOnNext:((String)->String)?={_ ->String in ""}

public func main(){
    
    colorList.append("orange")
    let townships=townshipList["Yangon"] ?? []
    debugPrint(townships)
    
    for color in colorList{
    debugPrint(color)
        
    }
    
    var indexForWhile=0
    while indexForWhile<3{
        debugPrint(colorList[indexForWhile])
        indexForWhile+=1
    }
    
    var indexForRepeatWhile=0
    repeat{
        debugPrint(indexForRepeatWhile)
        indexForRepeatWhile+=1
    }while indexForRepeatWhile<3
    
    doOnNext={name in
        return "Hello ¥(name)"
        
    }
    decrement(total: 10, doDecrease:{})
    
}

func Increment(amount:Int)->()->Int{
    func doProcess()->Int{
            return amount
    }
    return doProcess
}
//TrailingClosure
func decrease(doDecrease:()->Void)->Void{
    debugPrint("decrease")
}

func decrement(total:Int,doDecrease:()->Void)->Void{
    debugPrint("decrement")
}



