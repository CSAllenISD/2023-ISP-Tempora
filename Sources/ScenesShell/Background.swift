import Foundation
import Scenes
import Igis

class Background : RenderableEntity {
    let currentImage : Image
    //let entrance : Image
    // let hall1 : Image
    // let hall2 : Image 
    // let hall3 : Image 
    // let hall4 : Image 
    // let hall5 : Image  
    // let hall6 : Image
    // let hall7 : Image
    // let ladder1 : Image
    // let hammer : Image
    // let mural : Image
    // let vase : Image
    // let ladder2 : Image
    // let topladder2 : Image
    // let tunnel1 : Image
    // let tunnel2 : Image 
    // let botstair1 : Image
    // let midstair1 : Image
    // let topstair1 : Image
    // let puzzleB : Image
    // let plane1 : Image
    // let plane2 : Image
    // let stair2 : Image
    // let deadman : Image
    // let rounddoor : Image
    // let maproom : Image
    // let rope1 : Image
    // let rope2 : Image
    // let gems : Image
    // let puzzleE : Image
    // let starroom : Image
    // let boat : Image
    // let sarcophagus : Image
    // let stair3 : Image
    // let lastpuzzle : Image
    // let finalroom : Image
    
    // let currentRoom = Array[entrance, hall1, hall2, hall3, hall4, hall5, hall6, hall7, ladder1, hammer, mural, vase, ladder2, topladder2, tunnel1, tunnel2, botstair1, midstair1, topstair1, puzzleB, plane1, plane2, stair2, deadman, rounddoor, maproom, rope1, rope2, gems, puzzleE, starroom, boat, sarcophagus, stair3, lastpuzzle, finalroom]
    
    func goRight() {
    }

    func goLeft() {
    }

    func goUp() {
    }

    func goDown() {
    }

    init() {
        
        guard let currentURL = URL(string:"https://www.thesprucepets.com/thmb/BSpyX1mL7mCnRibYEDlWnZv_4lM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/smartest-cat-breeds-4589754-hero-e192f849d9f1442481c47c932cd36aa8.jpg") else {
            fatalError("Failed to create URL for background")
        }
        currentImage = Image(sourceURL:currentURL)
        
        super.init(name: "Background")
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(currentImage)
    }
    
    override func render(canvas:Canvas) {
        guard let canvasSize = canvas.canvasSize else {
            fatalError("canvasSize required.")
        }
        let fullRect = Rect(size: canvasSize)
        
        if currentImage.isReady {
            currentImage.renderMode = .destinationRect(fullRect)
            canvas.render(currentImage)
        }
    }
    
}

