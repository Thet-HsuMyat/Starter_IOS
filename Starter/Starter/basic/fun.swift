//
//  fundamental.swift
//  Starter
//
//  Created by Thet Hsu Myat on 2022/02/02.
//

import Foundation

var colorList = ["red","green","blue"]
var regionList : Set = ["Yangon","Mandalay","Naypyitaw"]
var townshipList:[String:[String]]=["Yangon":["Hledan","Insein","Lathar"]]
public func basic(){
    var n="Thet Hsu"
    n="HSU MYAT"
    colorList.append("orange")
    let townships=townshipList["Yangon"] ?? []
    debugPrint(townships)
}

