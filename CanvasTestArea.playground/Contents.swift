/*:
 
 # playground
 
 *noun*: a place where people can play
 
 ##
 
 Use this playground to experiment with the Canvas class.
 
 Your goals are to:
 
 * learn something about order of statements (does order matter?)
 * get familiar with using a Playground
 
 Have fun!
 
 */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas
let pic = Canvas(width: 500, height: 500)

// Show where the origin is
pic.drawAxes()


// Ears
//right
pic.translate(byX: 375, byY: 380)
pic.rotate(by: 55)
pic.drawEllipse(centreX: 0, centreY: 0, width: 80, height: 110)
pic.rotate(by: -55)
pic.translate(byX: -375, byY: -380)
//left
pic.translate(byX: 125, byY: 380)
pic.rotate(by: 305)
pic.drawEllipse(centreX: 0, centreY: 0, width: 80, height: 110)
pic.rotate(by: -305)
pic.translate(byX: -125, byY: -380)

// Main part of head
pic.fillColor = Color.white
pic.drawEllipse(centreX: 250, centreY: 250, width: 400, height: 350)

//Eyes
//right
pic.fillColor = Color.black
pic.translate(byX: 330, byY: 250)
pic.rotate(by: 45)
pic.drawEllipse(centreX: 0, centreY: 0, width: 80, height: 100)
pic.rotate(by: -45)
pic.translate(byX: -330, byY: -250)
//left
pic.translate(byX: 170, byY: 250)
pic.rotate(by: 315)
pic.drawEllipse(centreX: 0, centreY: 0, width: 80, height: 100)
pic.rotate(by: -315)
pic.translate(byX: -170, byY: -250)

//lips
pic.translate(byX: 260, byY: 148)
pic.rotate(by: 355)
pic.drawEllipse(centreX: 0, centreY: 0, width: 35, height: 30)
pic.rotate(by: -355)
pic.translate(byX: -260, byY: -148)

pic.translate(byX: 240, byY: 148)
pic.rotate(by: 5)
pic.drawEllipse(centreX: 0, centreY: 0, width: 35, height: 30)
pic.rotate(by: -5)
pic.translate(byX: -240, byY: -148)

pic.fillColor = Color.white
pic.drawShapesWithBorders = false
pic.translate(byX: 265, byY: 150)
pic.rotate(by: 355)
pic.drawEllipse(centreX: 0, centreY: 0, width: 25, height: 30)
pic.rotate(by: -355)
pic.translate(byX: -265, byY: -150)

pic.translate(byX: 235, byY: 150)
pic.rotate(by: 5)
pic.drawEllipse(centreX: 0, centreY: 0, width: 25, height: 30)
pic.rotate(by: -5)
pic.translate(byX: -235, byY: -150)

//pupils
//right
pic.fillColor = Color.white
pic.translate(byX: 315, byY: 260)
pic.drawEllipse(centreX: 0, centreY: 0, width: 20, height: 20)
pic.translate(byX: -315, byY: -260)
//left
pic.translate(byX: 185, byY: 260)
pic.drawEllipse(centreX: 0, centreY: 0, width: 20, height: 20)
pic.translate(byX: -185, byY: -260)

//nose
pic.fillColor = Color.black
pic.translate(byX: 250, byY: 170)
pic.rotate(by: 90)
pic.drawEllipse(centreX: 0, centreY: 0, width: 30, height: 50)
pic.rotate(by: -90)
pic.translate(byX: -250, byY: -170)

//cheeks
pic.fillColor = Color(hue: 0, saturation: 50, brightness: 100, alpha: 100)
pic.translate(byX: 150, byY: 185)
pic.rotate(by: 90)
pic.drawEllipse(centreX: 0, centreY: 0, width: 30, height: 50)
pic.rotate(by: -90)
pic.translate(byX: -150, byY: -185)

pic.translate(byX: 350, byY: 185)
pic.rotate(by: 90)
pic.drawEllipse(centreX: 0, centreY: 0, width: 30, height: 50)
pic.rotate(by: -90)
pic.translate(byX: -350, byY: -185)
// This code is necessary to see the result in the Assistant Editor at right
PlaygroundPage.current.liveView = pic.imageView
