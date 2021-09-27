import Foundation

class Card:NSObject{
    
    let value: Value
    let color: Color
    
    init(color: Color, value: Value){
        self.color = color
        self.value = value
    }
    
    override var description: String{
        return "\(value) \(color)"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        if let c = object as? Card {
            return c.value == value && c.color == color
        } else {
            return false
        }
    }
    
    static func ==(left: Card, right: Card) -> Bool
    {
        return left.isEqual(right)
    }
}
