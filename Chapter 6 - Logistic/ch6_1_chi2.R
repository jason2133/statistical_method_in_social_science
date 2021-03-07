x <- seq(0, 20, by = 0.001)


pdf("~/Dropbox/teaching/201901_ST242/slide/Chapter 6/chi3.pdf", 7, 7)
plot(x, dchisq(x, 3), lty = 1, lwd = 3, type = "l", ylim = c(0, 0.3),
     main = "X^2(3)", 
     ylab = "Density",
     cex.lab = 1.5, cex.axis = 1.5,
     cex.main = 1.5)
dev.off()

pdf("~/Dropbox/teaching/201901_ST242/slide/Chapter 6/chi6.pdf", 7, 7)
plot(x, dchisq(x, 6), lty = 1, lwd = 3, type = "l", ylim = c(0, 0.3),
     main = "X^2(6)", 
     ylab = "Density",
     cex.lab = 1.5, cex.axis = 1.5,
     cex.main = 1.5)
dev.off()