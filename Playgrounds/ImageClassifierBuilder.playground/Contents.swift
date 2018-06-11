/*: some text

 # Image Classifier Builder

 ## Introduction

 This playground uses the `MLImageClassifierBuilder` class of `Create ML` to render a drag-and-drop interface in the playground's live view. The interface accepts a set of folders containing images and labels to train the model with.

 ## Presenting the live view

 To present the interface for training the model from within the Playground, first run `builder.showInLiveView()` by click the play arrow at the beginning of the line:
 ![Show Builder](show-builder.jpeg)

 Next, open the Assistant Editor to see the Live View:
 ![Open Assistant Editor]()


*/

import CreateMLUI

let builder = MLImageClassifierBuilder()
builder.showInLiveView()
