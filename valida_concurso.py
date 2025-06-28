# Read numbers from file and store in a set
with open("lista.txt", "r") as f:
    numeros = {int(line.strip()) for line in f}

# Generate list of missing numbers between 1 and 3427
missing = [n for n in range(1, 3428) if n not in numeros]

# Print missing numbers
print(missing)

