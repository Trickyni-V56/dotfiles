import random
icons=["","󰺕","","󱥔","","󰀘","","🜨","🜔","🜕","🜖","🜗","𖢨","𖣐","𖣠","𖢵","𖢨","𖤪","𖤞","𖣨","𖣵","𖤊","𖤪","𖥚","𖥞","𖥕","𐀤","𐃏"]
new = ""
for i in range(7):
    new += icons[random.randint(0, 27)]
    space = random.randint(0, 2)
    new += "" * space
print(new)





