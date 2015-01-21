(* Mathematica source file  *)
(* Created by IntelliJ IDEA *)
(* :Author: vpandey *)
(* :Date: 1/19/15 *)

(* Import raw data *)
importPath = ToString["./train"];
rawDataSet = ParallelTable[
  {FileNameTake[DirectoryName[x]], Import[x]},
  {x, FileNames["*.jpg", TrainPath, Infinity]}
];

(* Pre-process data *)
rowDataSet[[All, 2]] = ConformImages[rowDataSet[[All, 2]]];

(* Prepare cross-validation set *)
crossValidationSizePercent = 10; (* as percentage of total data size *)
totalTrainData = rawDataSet // Length;
crossValidationData = rawDataSet[[RandomSample[Range[totalTrainData], crossValidationSizePercent * totalTrainData/100]]];


(* Extract features *)

(* Train *)


(* Test on cross-validation *)

(* **** Generate output on test data **** *)

(* Import test data *)

(* Pre-process test data *)

(* Get output *)
