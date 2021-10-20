obesity = readtable('cormorbidity.csv');
predictors = table2array(obesity);
p = predictNN(predictors,modelNN);
p = p - 1;