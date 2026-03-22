# Read three numbers from three separate lines
# We use float() to avoid crashing on numbers like '1.0' or '0.5'
a = float(input())
b = float(input())
c = float(input())

# Compare them to find the largest
if a >= b and a >= c:
    result = a
elif b >= a and b >= c:
    result = b
else:
    result = c

# Check if the result is a whole number (like 3.0) 
# and print it as an integer (3) to match the sample output exactly.
if result == int(result):
    print(int(result))
else:
    print(result)
