obesity = readtable('cormorbidity.csv');
predictors = table2array(obesity);
p = predictNN(predictors,modelNN);
c = confusionmat(response,p);
confusionchart(c)