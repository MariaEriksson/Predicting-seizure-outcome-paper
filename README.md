# Predicting-seizure-outcome-paper

This repository is for the paper entitled “Predicting seizure outcome after epilepsy surgery: do we need more complex models, larger samples, or better data?”. 

Preprint: https://www.medrxiv.org/content/10.1101/2023.02.13.23285866v1 

Epilepsia publication: https://onlinelibrary.wiley.com/doi/10.1111/epi.17637 
 
## What does this repository contain? 
1. Data dictionary, describing what data were included in the paper and how these data were categorised 
2. Jupyter notebooks for running the paper's logistic regression, multilayer perceptron, and XGBoost models
3. Jupyter notebooks and R scripts for creating the paper's figures

### Notebooks and R scripts

* 00-LR-model.ipynb* - Jupyter notebook for the paper's logistic regression model.
* 01-MLP-model.ipynb* - Jupyter notebook for the paper's multilayer perceptron model.
* 02-XGBoost-own-model.ipynb* - Jupyter notebook for the paper's XGBoost model.
* 03-Figure-2.R - R script used for producing Figure 2 in the paper.
* 04-Figures-3A-3B-4A.ipynb - Jupyter notebook for producing Figure 3A, Figure 3B, and Figure 4A.
* 05-Figure-4B.R - R script used for producing Figure 4B in the paper.

*Models require prior selection of predictor variables, one-hot encoding of categorical predictor variables, and handling of missing data.
