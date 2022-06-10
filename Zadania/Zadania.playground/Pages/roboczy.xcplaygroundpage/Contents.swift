class DescribedShape {

var numberOfNodes: Int = 0
var description: String

init(description: String) {
    self.description = description
}

func presentYourself() -> String {
        return "I am a shape with \(numberOfNodes) nodes"
    }

}

var shapeInstance = DescribedShape(description: "1010nodes")

shapeInstance.numberOfNodes = 10
print("I am", shapeInstance.description)
print(shapeInstance.presentYourself())



class Square: DescribedShape {
    
    var edgeLength: Double
    
    init(edgeLength: Double, description: String){
        self.edgeLength = edgeLength
        super.init(description: description)
        numberOfNodes = 4
    }
    
    func area() -> Double {
        
        return edgeLength * edgeLength
        
    }
    
    override func presentYourself() -> String {
        return "I am a squere of side: \(edgeLength)"
    }
    
}

var square = Square(edgeLength: 10, description: "first square")

print(square.area())
print(square.presentYourself())
