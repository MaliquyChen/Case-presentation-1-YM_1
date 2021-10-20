# Case-presentation-1-YM_1
Step 1: Document Marking
* Environment: R version 4.0.5
* File: preprocessing.R
* Description and Notes:
1.	After reading the keywords in the first line, change the path to Train_Textual (or Test_Intuitive/Validation), and change the path name in the third line to your path.
2.	Train_Textual should execute lines 33 and 34 to add the response to the training data.
3.	Run the file cormorbidity.csv to the folder after it will be generated.

Step 2: Training Model
* Environment: MATLAB R2020a, need to download and install SNN package first (download link: https://www.mathworks.com/matlabcentral/fileexchange/64247-simple-neural-network)
* File：trainNN.m
* Description and Notes:
1.	set the path to Train_Textual
2.	the confusion matrix will be displayed after execution

Step 3: Test the model
* File: testNN.m
1. Set the path to Test_Intuitive
2. Run the test and it will show the confusion matrix.

Step 4: Generate results
* File：Validation.m
1. Set the path to Validation
2. Copy the variable p to the upload file
