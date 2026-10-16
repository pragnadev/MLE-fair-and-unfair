n <- 100
s_true <- 50
p_fair <- 0.5
p_biased <- 0.9
M <- 10000
set.seed(42)
fair_flips <- rbinom(
    n = s_true,
    size = 1,
    prob = p_fair
)
biased_flips <- rbinom(
    n = n- s_true,
    size = 1,
    prob = p_biased 
)
flips <- c(fair_flips , biased_flips)
cat("Total number of flips:", length(flips), "\n")
cat("True switching point:",s_true,"\n")
cat("Heads in fair phase",sum(fair_flips),"\n")
cat("Heads in fair phase",sum(biased_flips),"\n")
cat("Total Heads:", sum(flips), "\n")
cat("Total Tails:", sum(flips == 0), "\n")
cat("first 20 coin flips",flips[1:20])
#plot(
#  1:n,
#  flips,
#  type = "h",
#  lwd = 2,
#  col = ifelse(1:n <= s_true, "steelblue", "darkorange"),
#  main = "Fair vs Unfair Coin Flips",
#  xlab = "Flip Number",
#  ylab = "Outcome",
#  yaxt = "n"
#)
abline(
    v = s_true + 0.5,
    col ="red" ,
    lty = 2 ,
    lwd = 2
)
legend(
    "topright",
    legend = c("Fair coin " ,"Biased coin", "true switch"),
    col = c("steelblue","darkorange","red"),
    lty = c(1,1,2) ,
    lwd = 2 ,
    cex = 0.8
)
# maximum likelihood
candidates <- 0:n
cumulative_heads <- c (0,cumsum(flips))
total_heads <- sum(flips)
log_likelihood <- candidates * log(p_fair) + 
(total_heads - cumulative_heads) * log(p_biased) +
((n-candidates)-(total_heads - cumulative_heads)) * log(1-p_biased)
s_hat <- candidates[which.max(log_likelihood)]
cat("\n--- MLE RESULTS ---\n")
cat("True switching point:", s_true, "\n")
cat("Estimated switching point:", s_hat, "\n")
cat("Estimation error:", s_hat - s_true, "\n")
cat("Maximum log-likelihood:", max(log_likelihood), "\n")
#plot
plot(
  x = candidates,
  y = log_likelihood,
  type = "l",
  col = "purple",
  lwd = 2,
  main = "Log-Likelihood by Switching Point",
  xlab = "Candidate Switching Point",
  ylab = "Log-Likelihood"
)

# Add vertical lines only after the plot is created
abline(v = s_true, col = "red", lty = 2, lwd = 2)
abline(v = s_hat, col = "darkgreen", lty = 2, lwd = 2)

# Add legend
legend(
  "bottomright",
  legend = c("Log-likelihood", "True switch", "Estimated switch"),
  col = c("purple", "red", "darkgreen"),
  lty = c(1, 2, 2),
  lwd = 2
)
