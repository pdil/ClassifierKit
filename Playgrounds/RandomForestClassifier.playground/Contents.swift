/**

 Mushrooms.csv Dataset

 Source:

 https://archive.ics.uci.edu/ml/datasets/Mushroom

 Citation:

 Dua, D. and Karra Taniskidou, E. (2017). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.

 Attribute information:

 1. cap-shape:                bell=b,conical=c,convex=x,flat=f,knobbed=k,sunken=s
 2. cap-surface:              fibrous=f,grooves=g,scaly=y,smooth=s
 3. cap-color:                brown=n,buff=b,cinnamon=c,gray=g,green=r,pink=p,purple=u,red=e,white=w,yellow=y
 4. bruises?:                 bruises=t,no=f
 5. odor:                     almond=a,anise=l,creosote=c,fishy=y,foul=f,musty=m,none=n,pungent=p,spicy=s
 6. gill-attachment:          attached=a,descending=d,free=f,notched=n
 7. gill-spacing:             close=c,crowded=w,distant=d
 8. gill-size:                broad=b,narrow=n
 9. gill-color:               black=k,brown=n,buff=b,chocolate=h,gray=g,green=r,orange=o,pink=p,purple=u,red=e,white=w,yellow=y
 10. stalk-shape:              enlarging=e,tapering=t
 11. stalk-root:               bulbous=b,club=c,cup=u,equal=e,rhizomorphs=z,rooted=r,missing=?
 12. stalk-surface-above-ring: fibrous=f,scaly=y,silky=k,smooth=s
 13. stalk-surface-below-ring: fibrous=f,scaly=y,silky=k,smooth=s
 14. stalk-color-above-ring:   brown=n,buff=b,cinnamon=c,gray=g,orange=o,pink=p,red=e,white=w,yellow=y
 15. stalk-color-below-ring:   brown=n,buff=b,cinnamon=c,gray=g,orange=o,pink=p,red=e,white=w,yellow=y
 16. veil-type:                partial=p,universal=u
 17. veil-color:               brown=n,orange=o,white=w,yellow=y
 18. ring-number:              none=n,one=o,two=t
 19. ring-type:                cobwebby=c,evanescent=e,flaring=f,large=l,none=n,pendant=p,sheathing=s,zone=z
 20. spore-print-color:        black=k,brown=n,buff=b,chocolate=h,green=r,orange=o,purple=u,white=w,yellow=y
 21. population:               abundant=a,clustered=c,numerous=n,scattered=s,several=v,solitary=y
 22. habitat:                  grasses=g,leaves=l,meadows=m,paths=p,urban=u,waste=w,woods=d

 */

/// File path containing data (JSON or CSV).
let dataFileName: String = "Mushrooms"

/// Column within data table to train model on.
let targetColumn: String = "class"

/// Output .mlmodel file path
let mlmodelFileName: String = <#/path/to/.mlmodel output file#>

/// =============================================

import Foundation
import CreateML

// Import data
guard let dataFilePath = Bundle.main.path(forResource: dataFileName, ofType: "csv") else {
  fatalError("\(dataFileName) not found in Resources folder.")
}

let data = try MLDataTable(contentsOf: URL(fileURLWithPath: dataFilePath))

// Split into training/testing data
let (trainingData, testingData) = data.randomSplit(by: 0.8, seed: 1000)

// Train decision tree classifier
let randomForestClassifier = try MLRandomForestClassifier(trainingData: trainingData, targetColumn: targetColumn)

// Export Core ML file
let metadata = MLModelMetadata(
  author: "ClassifierKit",
  shortDescription: "A decision tree classification model for identifing whether or not a mushroom with the given attributes is edible or poisonous.",
  license: "MIT",
  version: "1.0",
  additional: nil
)
try randomForestClassifier.write(toFile: mlmodelFileName, metadata: metadata)
