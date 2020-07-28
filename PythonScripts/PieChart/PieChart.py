# Import Libraries
from matplotlib import pyplot as plt
import numpy as np

# Create some data
colours = ['Blue', 'Green', 'Red', 'Light Blue', 'Purple', 'Yellow']
data = [51, 45, 10, 13, 35, 12]

# Creating plot
fig = plt.figure(figsize=(10, 7))
plt.pie(data, labels = colours)
plt.title('This is a Tasty Pie')

# Show Plot
plt.show()
