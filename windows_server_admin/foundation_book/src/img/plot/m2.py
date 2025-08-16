import matplotlib.pyplot as plt
import numpy as np

# --- Data Estimated from the Bar Chart ---
# Categories for the x-axis
categories = ['On-Premises', 'AWS']

# Data for each cost component
server_costs = np.array([90000, 6000])
storage_costs = np.array([70000, 3000])
network_costs = np.array([5000, 750])
it_labor_costs = np.array([170000, 5250]) # This corresponds to the large purple segment

# --- Colors matching the chart ---
# Using hex codes to closely match the original image
colors = {
    'Server': '#3c3c3c',
    'Storage': '#cccccc',
    'Network': '#4DB6AC',
    'IT-Labor': '#482677'
}

# --- Plotting ---
fig, ax = plt.subplots(figsize=(8, 6))

# Define the width of the bars
bar_width = 0.5

# Create the stacked bars
# The 'bottom' parameter is used to stack the bars on top of each other
ax.bar(categories, server_costs, width=bar_width, label='Server', color=colors['Server'])
ax.bar(categories, storage_costs, width=bar_width, bottom=server_costs, label='Storage', color=colors['Storage'])
ax.bar(categories, network_costs, width=bar_width, bottom=server_costs + storage_costs, label='Network', color=colors['Network'])
ax.bar(categories, it_labor_costs, width=bar_width, bottom=server_costs + storage_costs + network_costs, label='IT-Labor', color=colors['IT-Labor'])

# --- Styling and Customization ---
# Set the y-axis limit
ax.set_ylim(0, 400000)

# Remove the top and right spines for a cleaner look
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Place the legend horizontally at the top, outside the plot area
# We adjust the bbox_to_anchor to position it precisely.
ax.legend(ncol=4, loc='upper center', bbox_to_anchor=(0.5, 1.1), frameon=False, fontsize='large')

# Set tick parameters
ax.tick_params(axis='x', labelsize=12)
ax.tick_params(axis='y', labelsize=12)

# Ensure the layout is tight
plt.tight_layout(rect=[0, 0, 1, 0.95]) # Adjust rect to make space for the legend

# Display the plot
plt.show()