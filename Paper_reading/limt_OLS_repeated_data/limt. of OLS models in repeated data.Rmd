```
Title:  Limitation of OLS models in analyzing repeated measures data
Date: Feb 28, 2014
```


========================================================
- One of the most important assumptions for appropriate F-tests when using OLS in repeated measures data is that there is a constant correlation among multiple measure- ments within a subject.

- Some authors have suggested the use of repeated measures MANOVA instead of univariate repeated measures ANOVA when the assumption of constant covari- ance is not met. This is a reasonable approach if there are no missing data. But MANOVA requires that the data for all indi- viduals be available for exactly the same time points to estimate the covariance matrix.

- Algorithms for the computation of variance components using OLS are not optimal when data are missing, even if the assumptions about the covariance structure are correct 

- **linear mixed models**, which uses an estimation algorithm called **generalized least squares (GLS)** is designed to deal with correlated data.

- Basically, GLS estimates are appropriately weighted based on the covariance structure of the data. The estimates of the variance components are acquired by maximizing either the full likelihood (*maximum likelihood, or ML*) or a *restricted version of the likelihood* (restricted or residual maximum likelihood, or REML).

- *growth curves* test for differences in initial values and in rates of growth of each factor’s levels, allowing for a more straightforward interpretation of data. A particular implementation of the growth curve model is called the random coefficients growth curve, where each subject’s parameters are considered a random draw from a population of such parameters. This implementation is also known as multilevel models, or hierarchical linear models.

- The mixed model, although slightly more complicated than the other two structures (requiring the estimation of four rather than two variance components), it is appealing because it is so broadly applicable. We also had some indication from previous work that this structure might be less sensitive to misspecification, and thus more robust in our analyses.

- The determinat of the variance/covariance matrices is a indicator of the variability of the model account for the data.

- Independent random errors can be manipulated to assume any covariance structure by premultiplying the independent variates by some square-root decomposition of the covariance structure. (eg [Cholesky decomposition] (https://en.wikipedia.org/wiki/Cholesky_decomposition))

- The repeated measures OLS algorithm produces accurate F-tests when data are balanced, and quite reasonable results when data are unbalanced and the variance/covariance structure of the data is CS.


