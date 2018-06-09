/// Enter the following values:

/// The file path containing the data table to train
/// the classifier from. Can be JSON or CSV file.
let dataTablePath: String = <#data/table/path.csv#>

/// The column name in the data table of text that is being
/// used to train the model with.
let textColumnName: String = <#textColumnName#>

/// The column name in the data table of labels corresponding
/// to the text in `textColumnName`.
let labelColumnName: String = <#labelColumnName#>

/// The file path to write the trained model to once
/// classification is complete. Must be .mlmodel file.
let modelPath: String = <#completed/model/path.mlmodel#>

/// Percentage of data to be used as training data
/// (the rest is used for testing the model).
let trainingPercentage: Double = <#0.8#>

/// The random seed used for splitting data into
/// training and testing data sets. Use this to
/// replicate results whenever re-running the model
/// or change it to obtain different training/testing sets.
let seed: Int = <#1000#>

/// Model metadata
let author: String = <#Your name#>
let shortDescription: String = <#A description of this model#>
let license: String? = <#License (optional)#>
let version: String = <#Model version#>
let additional: [String: String]? = <#Any additional metadata for this model (optional)#>

/// =======================================================

import Foundation
import CreateML

// Import data from `dataTablePath`
let data = try MLDataTable(contentsOf: URL(fileURLWithPath: dataTablePath))

// Create training/testing data
let (trainingData, testingData) = data.randomSplit(by: trainingPercentage, seed: seed)

// Train text classifier model
let textClassifier = try MLTextClassifier(trainingData: trainingData, textColumn: textColumnName, labelColumn: labelColumnName)

// Output trained model
let metadata = MLModelMetadata(author: author, shortDescription: shortDescription, license: license, version: version, additional: additional)
try textClassifier.write(to: URL(fileURLWithPath: modelPath), metadata: metadata)

// Performance metrics
print("Training accuracy: \(textClassifier.trainingAccuracy())%")
print("Validation accuracy: \(textClassifier.validationAccuracy())%")
