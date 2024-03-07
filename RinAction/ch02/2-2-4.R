patientID <- c(100,101,102,103)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")

patientData <- data.frame(
    patientID,
    age,
    diabetes,
    status,
    row.names = NULL,
    check.rows = FALSE,
    check.names = TRUE,
    stringsAsFactors = FALSE
)

patientData