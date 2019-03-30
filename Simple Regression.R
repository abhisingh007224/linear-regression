# Sinple Linear Regression
# importing dataset
dataset = read.csv('File Name.csv')
#Splitting The dataset into training and test set
install.packages('caTools')

split=sample.split(dataset$Salary,SplitRatio = 2/3)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)


#Fitting simple linear  regression into training set
regressor = lm(formula = dependentVariable1 ~ dependentVariable2 ,data = training_set) 

y_pred = predict(regressor, newdata = test_set)

#Predicting the test set results

y_pred=predict(regressor,newdata=test_set)
y_pred

#Visualising the training set results
#For Visualising the result download ggplot package 
install.packages('ggplot2') 
#and then activate it 


ggplot() +
  geom_point(aes(x = training_set$dependentVariable2, y = training_set$dependentVariable1),
             colour = 'red') +
  geom_line(aes(x = training_set$dependentVariable2, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('title') +
  xlab('X_label _name') +
  ylab('Y_label_name')