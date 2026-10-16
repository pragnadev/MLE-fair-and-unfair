# MLE for Fair and Unfair Coin

## Project Overview

This project explores **Maximum Likelihood Estimation (MLE)** to estimate the point at which a coin changes from fair to biased based on a sequence of coin flips.

The experiment begins with a fair coin, where the probability of heads is 0.5. After an unknown switching point, the coin becomes biased, with the probability of heads increasing to 0.9.

The goal is to estimate this switching point using statistical methods in R.

## Problem Statement

Suppose a coin is flipped \(n\) times:

- Before the switching point, each flip follows a Bernoulli distribution with \(p = 0.5\).
- After the switching point, each flip follows a Bernoulli distribution with \(p = 0.9\).
- The true switching point is unknown and must be estimated from the observed results.

**Main objective:** Find the switching point that maximizes the likelihood of observing the data.

## Technology Stack

- **R:** Statistical computing and simulation.
- **Maximum Likelihood Estimation (MLE):** Estimating the unknown switching point.
- **Bernoulli distribution:** Modelling individual coin flips.
- **Data visualization:** Plotting coin-flip outcomes and the switching point.

## Methodology

1. **Simulate coin flips:** Generate observations from the fair and biased phases.
2. **Define candidate switching points:** Consider every possible switching point from 0 to \(n\).
3. **Calculate the log-likelihood:** Evaluate how likely the observed data is for each candidate.
4. **Estimate the switching point:** Select the candidate with the highest log-likelihood.
5. **Repeat the experiment:** Run multiple simulations to study the variability and accuracy of the estimator.

## Current Progress

- [x] Simulated coin flips in R.
- [x] Visualized the fair and biased phases.
- [x] Implemented the log-likelihood calculation.
- [x] Estimated the switching point for a single simulation.
- [ ] Run repeated simulations to study the sampling distribution.
- [ ] Analyze estimation accuracy across simulations.
- [ ] Finalize visualizations and results.

## Project Parameters

The initial simulation uses:

| Parameter | Value |
|---|---:|
| Number of flips (\(n\)) | 100 |
| True switching point (\(s\)) | 50 |
| Probability of heads before the switch | 0.5 |
| Probability of heads after the switch | 0.9 |
| Planned number of simulations (\(M\)) | 10,000 |

These are the initial simulation settings and can be changed for further experiments.

## How to Run

1. Install R.
2. Clone or download this repository.
3. Open the project folder in RStudio or VS Code with R support.
4. Run `coin.R`.

## Learning Objectives

- Understand the intuition behind Maximum Likelihood Estimation.
- Apply the Bernoulli distribution to model coin-flip outcomes.
- Implement a log-likelihood function in R.
- Estimate an unknown parameter from simulated data.
- Investigate how estimates vary across repeated experiments.

## Future Work

The next stage is to run the experiment repeatedly, analyze the distribution of estimated switching points, and visualize the estimator's performance.

## Author

Pragna 
