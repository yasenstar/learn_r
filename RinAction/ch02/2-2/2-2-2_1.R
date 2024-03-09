# y1 <- matrix(1:20, nrow=5, ncol=4)
# y1

# y2 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
# y2

cells <- c(1,26,24,68)
cells

rnames <- c("R1", "R2")
cnames <- c('C1', 'C2')

rnames
cnames

mymatrix1 <- matrix(
    cells,
    nrow = 2,
    ncol = 2,
    byrow = TRUE,
    dimnames = list(
        rnames,
        cnames
    )
)

mymatrix1

mymatrix2 <- matrix(
    cells,
    nrow = 2,
    ncol = 2,
    # byrow = TRUE,
    dimnames = list(
        rnames,
        cnames
    )
)

mymatrix2