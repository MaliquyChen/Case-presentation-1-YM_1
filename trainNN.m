obesity = readtable('cormorbidity.csv');
predictors = table2array(obesity(:,1:end-1));
response = double(categorical(obesity.obesity));
modelNN = learnNN(predictors,response);
p = predictNN(predictors,modelNN);
c = confusionmat(response,p);
confusionchart(c)