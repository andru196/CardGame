import Foundation

ultraTester(successMesg: "Ok", failMsg: "not right init",
            preMsg: "initTest", action: testInit)
ultraTester(successMesg: "Ok", failMsg: "not right desc",
            preMsg: "initTest", action: testDesc)
ultraTester(successMesg: "Ok", failMsg: "not isEquel",
            preMsg: "isEquel", action: testIsEquel)
ultraTester(successMesg: "Ok", failMsg: "not ==",
            preMsg: "==", action: testOperator)

func ultraTester(successMesg: String = "Ok", failMsg: String, preMsg: String, action: () -> Bool){
    print("\u{001B}[0;37m\t\(preMsg)")
    ultraTester(successMesg: successMesg, failMsg: failMsg, action: action)
}

func ultraTester(successMesg: String, failMsg: String, action: () -> Bool){
    if action()
    {
        print("\(successMesg)\u{001B}[0;32m\tPassed")
    }
    else{
        print("\(failMsg)\u{001B}[0;31m\tFail")
    }
}

func testInit() -> Bool{
    let card = Card(color: Color.Black, value: Value.Two)
    return card.value == Value.Two && card.color == Color.Black
}

func testDesc() -> Bool{
    let card = Card(color: Color.Black, value: Value.Two)
    return card.description == "\(Value.Two) \(Color.Black)"
}

func testIsEquel() -> Bool{
    let card1 = Card(color: Color.Black, value: Value.Two)
    let card2 = Card(color: Color.Black, value: Value.Two)
    let card3 = Card(color: Color.Red, value: Value.Two)
    return card1.isEqual(card2) && !card1.isEqual(card3)
}

func testOperator() -> Bool{
    let card1 = Card(color: Color.Black, value: Value.Two)
    let card2 = Card(color: Color.Black, value: Value.Two)
    let card3 = Card(color: Color.Red, value: Value.Two)
    return card1 == (card2) && card1 != (card3)
}
