x <- c(1:10)
y <- x
z <- 10 / x

opar <- par(no.readonly=TRUE)

par(mar=c(5,4,4,8) + 0.1)

plot(
    x,
    y,
    type = "b",
    pch = 21,
    col = "red",
    yaxt = "n",
    lty = 3,
    ann = FALSE
)

lines(
    x,
    z,
    type = "b",
    pch = 22,
    col = "blue",
    lty = 2
)

axis(
    2,
    at = x,
    labels = x,
    col.axis = "red",
    las = 2
)

axis(
    4,
    at = z,
    labels = round(z, digits = 2),
    col.axis = "blue",
    las = 2,
    cex.axis = 0.7,
    tck = -0.01
)

mtext(
    "y=1/x",
    side = 4,
    line = 3,
    cex.lab = 1,
    las = 2,
    col = "blue"
)

title(
    "An Example of Creative Axes",
    xlab = "X Values",
    ylab = "Y=X"
)

minor.tick(nx=2, ny=3, tick.ratio=0.5)

abline(h=c(1,5,7))

abline(v=seq(1,10,2), lty=2, col="blue")

legend(
    "top",
    inset = 0.05,
    title = "Drug Type",
    c("A", "B"),
    lty = c(1,2),
    pch = c(15,17),
    col = c("red", "blue")
)

par(opar)