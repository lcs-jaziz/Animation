//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.highPerformance = true
// Red Background
for someValue in stride(from: 1,
                        through: 600,
                        by: 1){
    
    let currentcolor = Color(hue: 15, saturation: 81, brightness: 100, alpha: 100)
    
    canvas.lineColor = currentcolor
    
    canvas.drawLine(from: Point (x: someValue, y: 1), to: Point (x: someValue, y: 600))
}

//Draw Triangles
for xPosition in stride(from: 0, through: 400, by: 44.44){
    for yPosition in stride(from: 200, through: 600, by: 44.44){
        canvas.fillColor = Color(hue: 82, saturation: 15, brightness: 86, alpha: 100)
        
        //Find out Position for Triangles
        canvas.drawEllipse(at: Point(x: xPosition, y: yPosition ), width: 5, height: 5)
        if xPosition - yPosition >= 187 {
            canvas.fillColor = .yellow
        } else {
            canvas.fillColor = .white
        }
        var triangleVertices: [Point] = []
        triangleVertices.append(Point(x: xPosition, y: yPosition ))
        triangleVertices.append(Point(x: xPosition + 44.44, y: yPosition + 0))
        triangleVertices.append(Point(x: xPosition + 44.44, y: yPosition + 44.44))
        canvas.drawCustomShape(with: triangleVertices)
        
        //Show position
        canvas.drawText(message: "(\(Int(yPosition - xPosition))", at: Point(x: xPosition - 20, y: yPosition), size: 10, kerning: 0)
        
        
        
    }
}

//Text
canvas.textColor = Color(hue: 82, saturation: 15, brightness: 86, alpha: 100)
canvas.drawText(message: "talking heads", at:Point(x:30, y: 145), size: 34, kerning: 0)
canvas.drawText(message: "friday,saturday,sunday", at: Point(x: 15, y: 25), size: 8, kerning: 0)
canvas.drawText(message: "september 12,13,14, 1975", at: Point(x: 15, y: 5), size: 8, kerning: 0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 140, y: 25), size: 8, kerning: 0)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 140, y: 5), size: 8, kerning: 0)
canvas.drawText(message: "also appearing:", at: Point(x: 270, y: 25), size: 8, kerning: 0)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 270, y: 5), size: 8, kerning: 0)


// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)




canvas.highPerformance = false


/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

