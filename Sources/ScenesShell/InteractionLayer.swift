import Igis
import Scenes
import ScenesControls

class InteractionLayer : Layer {
//    let canvasSize = canvas.canvasSize    
    
    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Interaction")
                
        let rightButton = Button(name: "Right", labelString: " Right ", topLeft: Point(x: 1600, y: 450))
        rightButton.clickHandler = onrightButtonClickHandler
        insert(entity: rightButton, at: .front)
        
        let leftButton = Button(name: "Left", labelString: " Left ", topLeft: Point(x: 100, y: 450))
        leftButton.clickHandler = onleftButtonClickHandler
        insert(entity: leftButton, at: .front)

        let upButton = Button(name: "Up", labelString: " Up ", topLeft: Point(x: 800, y: 100))
        upButton.clickHandler = onupButtonClickHandler
        insert(entity: upButton, at: .front)
        
        let downButton = Button(name: "Down", labelString: " Down ", topLeft: Point(x: 800, y: 900))
        downButton.clickHandler = ondownButtonClickHandler 
        insert(entity: downButton, at: .front)
    }
    func background() -> Background {
        guard let mainScene = scene as? MainScene else {
            fatalError("mainScene of type MainScene is required")
        }
        let backgroundLayer = mainScene.backgroundLayer
        let background = backgroundLayer.background
        return background
    }
    
    func onrightButtonClickHandler(control: Control, localLocation: Point) {
        background().goRight()
    }
    
    func onleftButtonClickHandler(control: Control, localLocation: Point) {
        background().goLeft()
    }

    func onupButtonClickHandler(control: Control, localLocation: Point) {
        background().goUp()
    }
    
    func ondownButtonClickHandler(control: Control, localLocation: Point) {
        background().goDown()
    }
    
    
}
