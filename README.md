# ClassifierKit
🤖 A suite of tools and examples for training CoreML models with CreateML.

## 📄 Requirements
* macOS 10.14 or later ([download](https://developer.apple.com/download/))
* Xcode 10.0 or later ([download](https://developer.apple.com/download/))

**Important Note:** `Create ML` is not available for the iOS SDK. It can only be used on macOS to train models and is not intended for on-device training. Instead, it is intended for the training of models using data (which may take minutes to hours depending on computing power and size of dataset) and to compile `.mlmodel` files to be implemented in iOS/tvOS/watchOS/macOS apps.

## Models
The following models are available as example Playgrounds:

| Type | Associated Class | Playground | Documentation |
| --- | --- | :---:| :---: |
| 🌅 **Image Classifier** | `MLImageClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlimageclassifier) |
| 🌅 **Image Classifier (GUI)** | `MLImageClassifierBuilder` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlimageclassifierbuilder) |
| 📄 **Text Classifier** | `MLTextClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mltextclassifier) |
| 🏷️ **Word Tagger** | `MLWordTagger` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlwordtagger) |
| 📊 **Discrete Classifiers** | `MLClassifier` |
| • Decision Tree | `MLDecisionTreeClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mldecisiontreeclassifier) |
| • Random Forest | `MLRandomForestClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlrandomforestclassifier) |
| • Boosted Tree | `MLBoostedTreeClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlboostedtreeclassifier) |
| • Logistic Regression | `MLLogisticRegressionClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mllogisticregressionclassifier) |
| • Support Vector Machine | `MLSupportVectorClassifier` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlsupportvectorclassifier) |
| 📈 **Continuous Regressors** | `MLRegressor` |
| • Linear | `MLLinearRegressor` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mllinearregressor) |
| • Decision Tree | `MLDecisionTreeRegressor` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mldecisiontreeregressor) |
| • Boosted Tree | `MLBoostedTreeRegressor` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlboostedtreeregressor) |
| • Random Forest | `MLRandomForestRegressor` | [link]() | [link](https://developer.apple.com/documentation/create_ml/mlrandomforestregressor) |



(**note:** some of these are incomplete and are currently being added)
