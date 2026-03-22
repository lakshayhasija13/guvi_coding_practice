# Use float() instead of int() to accept decimal inputs
a = float(input())

# Calculate area
area = (1/4) * (3 ** 0.5) * (a ** 2) 

# Format to 2 decimal places
print(f"{area:.2f}")
