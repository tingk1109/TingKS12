//
//  BradAPI.swift
//  TingKS12
//
//  Created by user on 2017/6/19.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

protocol Brad01 { //只能宣告不能實作
    func m1()
    func m2() -> Int
    func m3(x:Int) -> Double
}
protocol Brad02 {
    func m4()
    func m5() -> Int
    func m6(x:Int) -> Double
}
class Super1 {
    
}

class Brad03 : Super1, Brad01, Brad02{ //必須實作
    func m1(){}
    func m2() -> Int{return 1}
    func m3(x:Int) -> Double{return 1.0}
    func m4(){}
    func m5() -> Int {return 1}
    func m6(x:Int) -> Double {return 1.0}
}

protocol Brad04 : Brad01, Brad02 {  //可多重繼承protocol
    func m7()
}

class Brad05 : Brad04{
    func m1(){}
    func m2() -> Int{return 1}
    func m3(x:Int) -> Double{return 1.0}
    func m4(){}
    func m5() -> Int {return 1}
    func m6(x:Int) -> Double {return 1.0}
    func m7(){}
}

protocol Brad06 {
    var x : Int {get set} //protocol不可給值且需定義如何給Int
    var y : Int {get}
}

class Brad07 : Brad06{
    var x: Int
    var y:Int = 4
    init(x:Int){
        self.x = x
    }
}
