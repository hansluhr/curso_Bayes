library(TeachingDemos)

# Resumindo priori e posteriori

# histograma
set.seed(2)
minha_posteriori <- rbeta(10000, 71, 21)
hist(minha_posteriori)

# M�dia
mean(minha_posteriori)

#mediana
median(minha_posteriori)

# DP
sd(minha_posteriori)

mean(minha_posteriori) + 2*sd(minha_posteriori)
mean(minha_posteriori) - 2*sd(minha_posteriori)

# Intervalo de Credibilidade - 90%
quantile(minha_posteriori, c(.05, .95))

# Intervalo de Credibilidade - 95%
quantile(minha_posteriori, c(.025, .975))


# Highest Posterior Density (HPD) - Maior Densidade a Posteriori

TeachingDemos::emp.hpd(minha_posteriori, conf=0.95)

# n�o teve diferen�a porque a distribui��o � sim�trica.
# e em uma distribui��o assim�trica?

minha_posteriori2 <- rbeta(10000, 4, 1)
hist(minha_posteriori2)

quantile(minha_posteriori2, c(.025, .975))
TeachingDemos::emp.hpd(minha_posteriori2, conf=0.95)

