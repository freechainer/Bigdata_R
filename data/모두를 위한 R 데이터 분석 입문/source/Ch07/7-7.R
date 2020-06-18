st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)$out