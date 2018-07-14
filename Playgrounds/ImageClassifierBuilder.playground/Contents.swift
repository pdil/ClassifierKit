/*: Explanation

 # Image Classifier Builder

 ## Introduction

 This playground uses the `MLImageClassifierBuilder` class of `Create ML` to render a drag-and-drop interface in the playground's live view. The interface accepts a set of folders containing images and labels to train the model with.

 ## Presenting the live view

 To present the interface for training the model from within the Playground, first run `builder.showInLiveView()` by click the play arrow at the beginning of the line.

 Next, open the Assistant Editor (⌥ ⌘ ↩︎) to see the Live View.

 ## Training the model

 Drag the "Training Data" folder from the Resources folder to the "Drop Images to Begin Testing" section of the Live View.

 `Create ML` will begin training the model using the images.

 ## Testing the model

 Drag the "Testing Data" folder from the Resources folder to the Live View once again ("Drop Images to Begin Testing")  to test the model.

 ## Saving the trained model

 If the testing results are satisfactory, the trained model can either be saved to your local computer as a `.mlmodel` file or dragged directly into an Xcode project to quickly be implemented into an app.

*/

import CreateMLUI

let builder = MLImageClassifierBuilder()
builder.showInLiveView()
