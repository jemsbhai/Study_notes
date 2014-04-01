Notes on Bayesian quantile regression
========================================================
- A number of papers that are on the early application of quantile regression:
  1. Cole and Green, 1992
  2. Royston and Altman, 1994
  3. Buchinsky, 1998
  4. Yu and Jones, 1998
  5. He et al., 1998
  6. Koenker and Machado, 1999
  
- A simple approach to estimating the conditional quantiles is suggested in Koender and Bassett, 1978.

- Irrespective of the actual distribution of the data, Bayesian inference for quantile regression proceeds by forming the likelihood function based on the **asymmetic Laplace distribution** (Koenker and Bassett, 1978)

- **Asymmetric Laplace distribution (ALD)**, density function is given by:
\[f_p(u)=p(1-p)\exp\{-\rho_p(u)\},\] where *0 < p < 1* and $\rho_p(u)=u(p-I(u<0))$.
 - When $p=1/2$, the density reduces to \[f(u)=\frac{1}{4}\exp(-|u|/2),\] which is the density of a **standard symmetric Laplace distribuiton.**
 
 - For all other values of $p$, the density is asymmetic.
 
 - The expectation of $U$ is \[E(U)=\frac{1-2p}{p(1-p)},\] which is positive only when $p>1/2$.
 
 - The variance of $U$ is, \[Var(U)=\frac{1-2p+2p^2}{p^2(1-p)^2},\] increases quite repidly as $p$ approaches 0 or 1.
 
 - Include location and scale parameters, $\mu, \sigma$, in the ALD we obtain \[f_p(u;\mu,\sigma)=\frac{p(1-p)}{\sigma}\exp\left\{-\rho_p\left(\frac{u-\mu}{\sigma}\right)\right\}.\]
 
- *Bayesian quantile regression*

  When we are interested in the conditional quantile, $q_p(y_i|{\bf x_i})$, rather than the conditonal mean, $E[Y_i|x_i]$, we could still cast the problem in the framework of the generalized linear model, no matter what the original distribution of the data is, by assuming that (i) $f(y;\mu_i)$ is ALD and (ii) $g(\mu_i)={\bf x_i}'\boldsymbol{\beta}(p)=q_p(y_i|{\bf x_i})$, for any $0 < p < 1$.

  Given the observations, ${\bf y}=(y_1,\cdots,y_n)$, the posterior distribution of $\boldsymbol{\beta}, \pi(\boldsymbol{\beta}|{\bf y})$ is given by \[\pi(\boldsymbol{\beta}|{\bf y})\propto L({\bf y}|\boldsymbol{\beta})p(\boldsymbol{\beta})\] where $p(\boldsymbol{\beta})$ is the prior distribution of $\boldsymbol{\beta}$ and $L({\bf y}|\boldsymbol{\beta})$ is the likelihood function written as \[L({\bf y}|\boldsymbol{\beta})=p^n(1-p)^n\exp\left\{-\sum_{i}\rho_p(y_i-{\bf x_i}'\boldsymbol{\beta})\right\},\] with a location parameter $\mu_i={\bf x_i}'\boldsymbol{\beta}.$
  
  In theory, we can use any prior for $\boldsymbol{\beta}$, but in the absence of any realistic information one could use improper uniform prior distribution for all the components of $\boldsymbol{\beta}$.
 
 
 
 
 
 
 
 
 
 
 
 
 
 
