# Set a random seed so results are reproducible
set.seed(123)

# Create worker IDs (from 1-400), Names, assign genders, and assign salary randomly
id <- 1:400
name <- paste("Worker", id, sep = "_")
gender <- sample(c("Male", "Female"), 400, replace = TRUE)
salary <- sample(5000:35000, 400, replace = TRUE)

# Collect data from all columns into a data frame called workers
workers <- data.frame(id, name, gender, salary)

# Loop through each worker to assign employee levels and print payment slips
for (i in 1:nrow(workers)) {
  tryCatch({
    # Extract current worker's salary and gender
    salary <- workers$salary[i]
    gender <- workers$gender[i]
    level <- "None"  # Default level
    
    # First condition:
    if (salary > 10000 && salary < 20000) {
      level <- "A1"
    }
    
    # Second condition:
    if (salary > 7500 && salary < 30000 && gender == "Female") {
      level <- "A5-F"
    }
    
    # Printing payment slip
    cat(
      "ID:", workers$id[i], 
      "Name:", workers$name[i],
      "Gender:", gender,
      "Salary:$", salary,
      "Level:", level, "\n"
    )
    
  }, error = function(e) {
    # Print error message if something goes wrong for this worker
    cat("Error at row", i, ":", e$message, "\n")
  })
}
