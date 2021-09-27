import Foundation

ultraTester(successMesg: "Ok", failMsg: "not right init",
            preMsg: "initTest", action: testInit)


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
    return Deck.allDiamonds.count == Deck.allClubs.count
    && Deck.allCards.count == 52
}
