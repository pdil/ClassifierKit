# ClassifierKit
🤖 A suite of tools and examples for training Core ML models with Create ML.

## 📄 Requirements
* macOS 10.14 (Mojave) or later ([download](https://developer.apple.com/download/))
* Xcode 10 or later ([download](https://developer.apple.com/download/))

Both of these are currently in beta and require an [Apple Developer account](https://developer.apple.com/programs/) to download.

**Important Note:** [`Create ML`](https://developer.apple.com/documentation/create_ml) is not available for the iOS SDK. It can only be used on macOS to train models and is not intended for on-device training. Instead, it is used to train models with data (which may take minutes to hours depending on computing power, size of dataset, and model). When the model is trained, a `.mlmodel` file can be exported and implemented in iOS/tvOS/watchOS/macOS apps using [`Core ML`](https://developer.apple.com/documentation/coreml).

## ⚙️ Models
The following models are available as example Playgrounds:

| Model | Associated Type | Playground |
| --- | --- | :---:|
| 🌅 Image Classifier | [`MLImageClassifier`](https://developer.apple.com/documentation/create_ml/mlimageclassifier) |  |
| 🌅 Image Classifier Builder | [`MLImageClassifierBuilder`](https://developer.apple.com/documentation/create_ml/mlimageclassifierbuilder) | [🔗](https://github.com/pdil/ClassifierKit/tree/master/Playgrounds/ImageClassifierBuilder.playground) |
| 📄 Text Classifier | [`MLTextClassifier`](https://developer.apple.com/documentation/create_ml/mltextclassifier) | [🔗](https://github.com/pdil/ClassifierKit/tree/master/Playgrounds/TextClassifier.playground) |
| 🏷️ Word Tagger | [`MLWordTagger`](https://developer.apple.com/documentation/create_ml/mlwordtagger) | [🔗](https://github.com/pdil/ClassifierKit/tree/master/Playgrounds/WordTagger.playground) |
| 📊 Decision Tree Classifier | [`MLDecisionTreeClassifier`](https://developer.apple.com/documentation/create_ml/mldecisiontreeclassifier) | [🔗](https://github.com/pdil/ClassifierKit/tree/master/Playgrounds/DecisionTreeClassifier.playground) |
| 📊 Random Forest Classifier | [`MLRandomForestClassifier`](https://developer.apple.com/documentation/create_ml/mlrandomforestclassifier) |  |
| 📊 Boosted Tree Classifier | [`MLBoostedTreeClassifier`](https://developer.apple.com/documentation/create_ml/mlboostedtreeclassifier) |  |
| 📊 Logistic Regression Classifier | [`MLLogisticRegressionClassifier`](https://developer.apple.com/documentation/create_ml/mllogisticregressionclassifier) |  |
| 📊 Support Vector Classifier | [`MLSupportVectorClassifier`](https://developer.apple.com/documentation/create_ml/mlsupportvectorclassifier) |  |
| 📈 Linear Regressor | [`MLLinearRegressor`](https://developer.apple.com/documentation/create_ml/mllinearregressor) |  |
| 📈 Decision Tree Regressor | [`MLDecisionTreeRegressor`](https://developer.apple.com/documentation/create_ml/mldecisiontreeregressor) |  |
| 📈 Boosted Tree Regressor | [`MLBoostedTreeRegressor`](https://developer.apple.com/documentation/create_ml/mlboostedtreeregressor) |  |
| 📈 Random Forest Regressor | [`MLRandomForestRegressor`](https://developer.apple.com/documentation/create_ml/mlrandomforestregressor) |  |

**Note:** Some of these are incomplete and are currently being added. The goal is to eventually have comprehensive example playgrounds for each model type in Create ML, including sample data and explanations.

## 📝 Usage

The easiest way to begin using ClassifierKit is to clone it directly onto your computer.

1. Navigate to the desired directory on your local filesystem.
```
$ cd Desktop/or/any/other/folder
```
2. Clone this repository:
```
$ git clone https://github.com/pdil/ClassifierKit.git
``` 
3. Begin! The [`Playgrounds`](https://github.com/pdil/ClassifierKit/tree/master/Playgrounds) folder contains Swift Playgrounds for the many models contained within Create ML that will allow you to set parameters and begin training the models, either with the provided sample data or your own data.
