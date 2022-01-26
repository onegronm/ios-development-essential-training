iOS

## Storyboards
- The first responder refers to the object that is currently receiving UI events
- While there are some setbacks to using storyboards, some users may prefer the drag and drop UI creation to SwiftUI's mostly code implementation
- A text field will show the keyboard while a label will not
- Outlets connect UI objects to variables, while Actions connect UI events to methods
- The Library refers to the button in the toolbar used to create UI objects and access code snippets
- Broken connections can be diagnosed in the Connections inspector, in code, and by extension the Assistant Editor
- The more variations your UI can have, the more crucial pins are to maintaining your intended design. If you are only targeting one device and orientation, the intended layout can be created without using pins

## SwiftUI
- Use stacks to align objects vertically or horizontally. Embed stacks to create more complex layouts. Layout is by default centered
- Built in icons for iOS -> apple developer site -> SF Symbols 3. Add icons using the Image object: Image(systemName: "the.icon")
- SwiftUI allows you to quickly preview your layouts in the Xcode canvas.

## SwiftUI Binding
- Use ‘$’ to denote a bound or “state” variable
- Use @Binding to pass down $State var into child components
- SwiftUI views make objects easily reusable
- You would use neither a @State or @Binding when you’re working with a variable that is only used by one view
- The @State variable is the original variable, and @Binding is used to modify that variable in a separate view.


## Working with multiple views
- Hashable means the data structure has a unique identifier which is required for a list in the UI
- Cocoa Touch Class. This template is useful for subclassing classes from UIKit and potentially having Xcode generate interface builder files for you
- NavigationView is a view that controls other views
- NavigationLink allows you to navigate to a detail view
- To create a popover, create a state variable and then create a sheet (.sheet) with a bindable variable and put content inside the curly braces