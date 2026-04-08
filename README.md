Highridge Construction Company Payment Slips Read Me File

## Description

This project generates weekly payment slips for 400 workers dynamically.
Each worker has an ID, name, gender, and salary.
Employee levels are assigned based on salary and gender:

A1: Salary > 10,000 and < 20,000
A5-F: Salary > 7,500 and < 30,000 and Female

The project includes Python and R versions with error handling.



## Python Instructions

1. Install Python 3.
2. Open 'highridge_payment_system.py'
3. Run the script:

   
   python highridge_payment_system.py
   
4. Output: Payment slips printed in the console.
5. Features:

     - Employee level logic (A1, A5-F)
     - Exception handling

******************

## R Instructions

1. Install R and optionally RStudio.
2. Open `highridge_payment_system.R`.
3. Run the script:

   r
   source("highridge_payment_system.R")
   
4. Output: Payment slips printed in the console.
5. Features:

     - Employee level logic (A1, A5-F)
     - Error handling using tryCatch

******************

## Notes

1. Salaries and genders are randomly generated.
2. Both scripts use the same logic.
3. Tested successfully in Python 3.14.1 and R 4.5.2

