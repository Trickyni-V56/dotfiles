import random
icons=["","󰺕","","󱥔","","󰀘"]
new = ""
for i in range(7):
    new += icons[random.randint(0, 5)]
    space = random.randint(0, 2)
    new += "" * space
print(new)





