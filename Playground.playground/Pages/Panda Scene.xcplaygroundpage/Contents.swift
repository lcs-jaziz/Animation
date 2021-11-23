//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

//Make the fill white and a black border
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true

// Draw Pandas head
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 100, height: 100)

//Draw right eye
canvas.drawEllipse(at: Point(x: 20, y: 15), width: 20, height: 30)
//Draw left eye
canvas.drawEllipse(at: Point(x: -20, y: 15), width: 20, height: 30)

//Change fill color
canvas.fillColor = .black

//Right pupil
canvas.drawEllipse(at: Point(x: 20, y: 5), width:10, height: 10)

//Left Pupil
canvas.drawEllipse(at: Point(x: -20, y: 5), width: 10, height: 10)

//Draw nose
canvas.drawEllipse(at: Point(x: 0, y: -10), width: 15, height: 15)

//Determine pen color
canvas.lineColor = .black

//Draw smile
canvas.drawLine(from: Point(x: -10, y:-25), to: Point(x: 10, y: -25))
canvas.drawCurve(from: Point(x: -10, y:-25),to:Point(x: 10, y: -25), control1:Point(x: -4, y: -35) , control2: Point (x: 4, y: -35))
canvas.drawCurve(from: , to: <#T##Point#>, control1: <#T##Point#>, control2: <#T##Point#>)
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
