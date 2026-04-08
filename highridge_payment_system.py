import random

# Create a dynamic list of workers (at least 400) with each woekers having: id, name, gender, salary

workers = []
genders = ["Male", "Female"]

for i in range (1, 401):
    worker = {
        "id": i, 
        "name": f"Worker_{i}", 
        "gender": random.choice(genders), 
        "salary": random.randint(5000, 35000)
    }
    workers.append(worker)

# Loop, assign employee levels, create payment slips, add exception handling

for worker in workers:
    try:
        salary = worker["salary"]
        gender = worker["gender"]

        level = "None"

        # First condition
        if salary > 10000 and salary < 20000:
            level = "A1"

        # Second condition
        if salary > 7500 and salary < 30000 and gender == "Female":
            level = "A5-F"

        print (
            f"ID: {worker['id']}, "
            f"Name: {worker['name']}, "
            f"Gender: {gender}, "
            f"Salary: ${salary}, "
            f"Level: {level}"
        )
    
    except KeyError as e:
        print(f"Missing field: {e}")

    except Exception as e:
        print (f"Error: {e}")

