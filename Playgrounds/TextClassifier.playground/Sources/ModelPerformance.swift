
import CreateML

public extension MLTextClassifier {
  /// Returns the training accuracy as a percentage.
  public func trainingAccuracy() -> Double {
    return (1.0 - trainingMetrics.classificationError) * 100
  }

  /// Returns the validation accuracy as a percentage.
  public func validationAccuracy() -> Double {
    return (1.0 - validationMetrics.classificationError) * 100
  }
}
