# Learning Notes on R

Atomic data types in R (5 types)

- Character
- Numeric (double)
- Integer
- Complex
- Logical

Vector: a collection of elements of the **same class**. Created by `c()` or `vector()`.

- Creation: `c()` (concatenate), or `ventor()`
- Accessing: with [], starts at 1
- Coecion: mixing classes of objects leads to coercion
- Comparing vectors: they must be identical even in type: `identical(v1,v2)`
- Dimensions of a vector: `length()`, `dim()` doesn't work
- Concatenation: `z <- c(v1, v2)`

List: an R object which contains elements of **different types** like numericals, strings, vectors, or even another list inside them

- Creation: `list()`
- Coercion doesn't happen with lists
- Accessing lists: with [], resulting one list; with [[]] to get actual value
- Naming lists:
  - Named attributes can be accessed with $ (actually, you can name vector as well)
  - using `names(list)=c(...)` to give names
- Length works, `dim` does not: `length(list)`
- Manupulating lists: can add, delete (by setting to NULL), update
- Concatenating list: `newlist <- c(l1, l2)`

Matrices: these are **vectors with a dimension attribute**. They are not a different class of objects. They are created column-wise.

- Creation: `matrix()`, for example `x <- matrix(1:12, nrow=4, ncol=3)`
- Naming:
  - dimnames, rownames and colnames

  ```R
  > myrows <- c("A", "B", "C", "D")
  > mycols <- c("col1", "col2", "col3", "col4")
  > x <- matrix(1:16, nrow=4, ncol=4, dimnames=list(myrows, mycols))
  > x
      col1 col2 col3 col4
    A    1    5    9   13
    B    2    6   10   14
    C    3    7   11   15
    D    4    8   12   16
  >
  ```

- Accessing matrics: matrics IS a vector, use `[]` to access
- Modifying a matrix
  - Transpose: `t()`
  - `rbind()`, `cbind()`
  - `dim(x) <- c(2,8)`, re-arranged
- Check type: `is.matrix(x)`

Arrays: these are **multidimensional** objects. They can store data in more than two dimensions.

- Creation: `array()`, example: `a <- array(1:18, dim=c(3,3,2))`
- If we create an array of dimension (3,3,2) then it creates 2 rectangular matrics each with 3 rows and 3 columns
- Accessing: `[row, col, matrix]`
- Naming: `dimnames (which nees a list) `, example: `dimnames(a) <- list(R,C,M)`
  - `R <- list("r1", "r2", "r3")` is same as `R <- c("r1", "r2", "r3")`

Dataframes: most used structure in R. List of equal-length vectors. Two-dimensional. Can store **different** types.

- Creation:
  - `data.frame()`
  - Dataframe is actuall one List when `typeof`, it's "data.frame" when `class(df)`
  - `as.data.frame()`: transform vector to dataframe
- Combining data frame: `cbind()`, `rbind()`
- Dimensions:
  - All columns have to be the same length
  - `length()` from result point of view = `ncol()`
  - `nrow()`
- Accessing datafrme
  - `[]` get dataframe and `$` get numeric
  - subsetting: 