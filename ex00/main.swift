import Foundation

ultraTester(successMesg: "Все нужные типы найденны", failMsg: "Не всё присутствует",
            preMsg: "Тест allTypes", action: test1)
ultraTester(successMesg: "Все цвета найденны", failMsg: "Не всё присутствует",
            preMsg: "Тест allColors", action: test2)
ultraTester(successMesg: "Ok", failMsg: "2!=2",
            preMsg: "2 == 2", action: testTwo)
ultraTester(successMesg: "Ok", failMsg: "Black!=black",
            preMsg: "Black == black", action: testBlack)

func ultraTester(successMesg: String, failMsg: String, preMsg: String, action: () -> Bool){
    print(preMsg)
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

func  test1() -> Bool{
    for v in [Value.Two, Value.Three, Value.Four, Value.Five,
              Value.Six, Value.Seven, Value.Eight, Value.Nine,
              Value.Ten, Value.Jack, Value.Quin, Value.King, Value.Ace]{
        if !Value.allValues.contains(v)
            {return false}
    }
    return true
}

func  test2() -> Bool{
    for v in [Color.Black, Color.Green, Color.Blue, Color.Red]{
        if !Color.allColors.contains(v)
            {return false}
    }
    return true
}

func testTwo() -> Bool{
    if Value.Two.rawValue == 2
    {return true}
    return false
}

func testBlack() -> Bool{
    if Color.Black.rawValue == "black"{
        return true
    }
    return false
}
