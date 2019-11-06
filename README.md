# IS-434_Data-Mining-Project

Analysis on Asylum seekers migration pattern and demographics 

## Packages Used (Python)

The main python packages used for this project includes geotext, geocoder, re, numpy, pandas, scikit-learn, seaborn and math

Refer to information below which describes the uses of the packages.

# sklearn:
A Simple and efficient tools for data mining and data analysis - https://scikit-learn.org/stable/

# sklearn.Tree import DecisionTreeClassifier:
A decision tree classifier capable of performing multi-class classification on a dataset - https://scikit-learn.org/stable/modules/generated/sklearn.tree.DecisionTreeClassifier.html

# sklearn.ensemble import AdaboostClassifier:
A meta-estimator that begins by fitting a classifier on the original dataset and then fits the additional copies of the classifier on the same dataset but where the weights of incorrectly classified instances are adjusted such that subsequent classifiers focus more on difficult cases - https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.AdaBoostClassifier.html

# sklearn.Tree.ensemble import RandomForestClassifier:
A random forest is a meta estimator that fits a number of decision tree classifiers on various sub-samples of the dataset and uses averaging to improve the predictive accuracy and control over-fitting - https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.RandomForestClassifier.html

# sklearn.model_selection import train_test_split
Splits arrays or matrices into random train and test subsets - https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.train_test_split.html

# sklearn.metrics import accuracy_score
Computes subset accuracy - https://scikit-learn.org/stable/modules/generated/sklearn.metrics.accuracy_score.html

# sklearn.metrics import confusion_matrix
Evaluates the confusion matrix to evaluate the accurcy of a classification - https://scikit-learn.org/stable/modules/generated/sklearn.metrics.confusion_matrix.html

# sklearn.metrics import classification_report
Builds a text report showing the main classification metrics - https://scikit-learn.org/stable/modules/generated/sklearn.metrics.classification_report.html

# sklearn.model_selection import GridSearchCV
Exhaustive search over specified parameter values for an estimator - https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.GridSearchCV.html 

# sklearn import svm
Support vector machines (SVMs) are a set of supervised learning methods used for classification, regression and outliers detection - https://scikit-learn.org/stable/modules/generated/sklearn.svm.SVC.html

# sklearn.naive_bayes import MultinomialNB
Naives Bayes classifier for multinomial models - https://scikit-learn.org/stable/modules/generated/sklearn.naive_bayes.MultinomialNB.html

# sklearn.model_selection import StratifiedKFold
Stratified K-Folds cross-validator which provides train/test indices to split data in train/test sets - https://www.google.com/search?q=stratified+k+fold&rlz=1C1CHBF_enSG747SG748&oq=stratfied+k&aqs=chrome.1.69i57j0l5.3764j0j4&sourceid=chrome&ie=UTF-8

# sklearn.feature_selection import RFE
Feature ranking with recursive feature elimination - https://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.RFE.html

# sklearn.feature_selection import RFECV
Feature ranking with recursive feature elimination and cross-validated selection of the best number of features - https://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.RFECV.html

# sklearn import linear_model
A set of methods intended for regression in which the target value is expected to be a linear combination of the features - https://scikit-learn.org/stable/modules/linear_model.html

# imblearn.over_sampling import SMOTE
Class to perform over-sampling using SMOTE, Synthetic Minority Over-sampling - https://imbalanced-learn.readthedocs.io/en/stable/generated/imblearn.over_sampling.SMOTE.html

# imblearn.under_sampling import RandomUnderSampler
Class to perform random under-sampling. Under-sample the majority class(es) by randomly picking samples with or without replacement - https://imbalanced-learn.readthedocs.io/en/stable/generated/imblearn.under_sampling.RandomUnderSampler.html

# imblearn.under_sampling import CondensedNearestNeighbour
Class to perform under-sampling based on the condensed nearest neighbour method - https://imbalanced-learn.readthedocs.io/en/stable/generated/imblearn.under_sampling.CondensedNearestNeighbour.html

# geotext
Geotext extracts country and city mentions from text - https://pypi.org/project/geotext/

# geocoder
Geocoder is a simple and consistent geocoding library - https://pypi.org/project/geocoder/

# numpy
numpy is a fundamental package for scientific computing with Python - https://numpy.org/

# pandas
Pandas is a library providing high-performance, easy-to-use data structures and data analysis tools - https://pandas.pydata.org/

# seaborn
Seaborn is a python visualization library based on matplotlib, it provides a high-level interface for drawing attractive and informative statistical graphics - https://seaborn.pydata.org/

# re
Provides regular expression matching operations similar to those found in Perl - https://docs.python.org/3/library/re.html

# math
Provides access to the mathematical functions defined by the C standard. - https://docs.python.org/3/library/math.html

## Installtation (Python packages)

The python packages used in this project can be installed using the following commands:

pip install numpy
pip install pandas
pip install geocoder
pip install geotext
pip install seaborn
pip install scikit-learn

math and re libray are built-in python module and do not require any installation

## Packages used (R)

library(ggplot2)
library(readr)
library(leaflet)
library(knitr)
library(highcharter)
library(plyr)
library(dplyr)
library(tidyr)
library(viridis)
library(plotly)
library(tidyr)
library(maps)
library(ggmap)
library(gridExtra)
library(countrycode)
library(stringr)
library(tidyverse)
library(maps)
library(geosphere)
library(ggmap)
library(maptools)
library(networkD3)
library(d3Network)

## Folder Structure
|- original data - This folder contains all the data files which we had downloaded from Kaggle, https://www.kaggle.com/unitednations/refugee-data
|- cleaned_data - This folder contains all the data files which are being preprocessed 
|- EDA - This folder contains the Tableau workbooks and R files used to perform exploratory data analysis
|- general_notebook - This folder contains the python jupyter notebook files used for data preprocessing and exploratory data analysis
|- model_notebook - This folder contains the python jupyter notebook files used for building the machine learning models

