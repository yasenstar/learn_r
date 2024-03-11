dose <- c(20,30,40,45,60)
drugA <- c(16,20, 27, 40, 60)
drugB <- c(15,18,25,31,40)

plot(
    dose,
    drugA,
    type="b",
    col="red",
    lty = 2,
    pch = 2,
    lwd = 2,
    main = "Clinical Trails for Drug A",
    col.main = "blue",
    sub = 'This is hypothetical data',
    col.sub = "green",
    xlab = "Dosage",
    ylab = "Drug Response",
    col.lab = 'purple',
    cex.lab = 0.75,
    xlim = c(0, 60),
    ylim = c(0,70)
)