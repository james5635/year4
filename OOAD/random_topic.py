import random as rd

topics = [
    "Car Parts Management System",
    "Restaurant System",
    "Mart management",
    "Pharmacy Inventory Management System",
]
for _ in range(1000):
    rd.shuffle(topics)
chosen_topic = rd.choice(topics)
print(f"chosen_topic: {chosen_topic}")
