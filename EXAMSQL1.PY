
# LOGICAL QUESTION 1

data = [12, 7, 12, 5, 7, 9, 5, 12, 9, 7, 15]

for A in data:
  if data.count(A) > 1:
    if data.index(A) == data.index(A):
     print(A, "->", data.count(A), "times")

# QUESTION 2

IDS = [1, 2, 3, 4, 5, 7, 8, 9, 10]

for i in range(1, 11):
    if i not in IDS:
     print("Missing ID:", i)