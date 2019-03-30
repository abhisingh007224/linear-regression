#importing the dataset
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#Load the dataset
dataset=pd.read_csv('File name.csv')
X= dataset.iloc[:,:-3].values # X is a independent variable
Y= dataset.iloc[:,3].values         # y is a dependent variable


#Splitting the dataset into training and test set
from sklearn.model_selection import train_test_split
X_train,X_test,y_train,y_test=train_test_split(X,Y,test_size=0.30,random_state=0)

#fitting Linear regressiom
from sklearn.linear_model import LinearRegression
regression=LinearRegression()
regression.fit(X_train,y_train)

y_pred = regression.predict(X_test)

plt.scatter(X_train,y_train,color='blue')
plt.plot(X_train,regression.predict(X_train),color='green')
plt.title('Your title here')
plt.xlabel('x label')
plt.ylabel('y label')