
/// File path containing data (JSON or CSV).
let dataFilePath: String = <#data file path#>

/// Column within data table to train model on.
let targetColumn: String = <#targetColumn#>

/// Output .mlmodel file path
let mlmodelFilePath: String = <#mlmodel file path#>

/// =============================================

import Foundation
import CreateML

/// Decision tree model parameters
let modelParameters = MLDecisionTreeClassifier.ModelParameters(
  validationData: <#T##MLDataTable?#>,
  maxDepth: <#T##Int#>,
  minLossReduction: <#T##Double#>,
  minChildWeight: <#T##Double#>,
  randomSeed: <#T##Int#>
)

// Import data
let data = try MLDataTable(contentsOf: URL(fileURLWithPath: dataFilePath))

// Split into training/testing data
let (trainingData, testingData) = data.randomSplit(by: 0.8, seed: 1000)

// Train decision tree classifier
let decisionTreeClassifier = try MLDecisionTreeClassifier(trainingData: trainingData, targetColumn: targetColumn, parameters: modelParameters)

// Export Core ML file
try decisionTreeClassifier.write(toFile: mlmodelFilePath)
