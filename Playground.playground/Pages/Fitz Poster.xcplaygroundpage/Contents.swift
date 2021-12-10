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

// Move the origin from the bottom-left corner of the canvas to it's centre point
//canvas.translate(to: Point(x: canvas.width / 2,
                           //y: canvas.height / 2))


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

func drawHeart() {
    p.goto(dx: 48, dy: 5)
    p.drawTo(dx: 12, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -18, dy:0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 26, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -38, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 48, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -58, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 68, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -80, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 88, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -90, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    //Left Top part
    p.drawTo(dx: 40, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -35, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 30, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -25, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 15, dy: 0)

    //Right Top part
    p.goto(dx: 66, dy: -24)
    p.drawTo(dx: -40, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 35, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -30, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: 25, dy: 0)
    p.drawTo(dx: 0, dy: 6)
    p.drawTo(dx: -15, dy: 0)
    
    p.goToOrigin()
}

// Begin writing your code below (you can remove the examples shown)
canvas.highPerformance = true
for someValue in stride(from: 1.0, through: 600.0, by: 1.0) {
    
    someValue
    let currentBrightness = map(value: someValue, fromLower: 1.0, fromUpper: 600.0, toLower: 35.27, toUpper: 82.75)
    
    canvas.lineColor = Color(hue: 0.0, saturation: 0.0, brightness: Float(currentBrightness), alpha: 100.0)
    canvas.drawLine(from: Point(x: 0, y: someValue),
                    to: Point(x: 400, y: someValue))

    
}
// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

//Color
canvas.lineColor = Color(hue: 333, saturation: 94, brightness: 87, alpha: 80)
//Custom design



for _ in 1...4 {
    for _ in 1...4 {
        
        drawHeart()

        canvas.translate(to: Point(x: 100, y: 0))

    }

    canvas.translate(to: Point(x: -400, y: 100))

}






//for verticalPosition in stride(from: 0, through: 400, by: 100) {
    
   // for horizontalPosition in stride(from:0, through: 400, by: 100){
        
    //    drawHeart()(Point(x: horizontalPosition, y: verticalPosition)
   // }

//}


//for verticalPosition in stride(from: 0, through: 400, by: 100) {
    
//}





canvas.highPerformance = false
