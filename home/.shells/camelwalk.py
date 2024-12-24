import time
import os

camel = "🐪"
spaces = 30
sun = "☀️"
sand = "🌵 "
dune1 = "  ~  ~"
dune2 = " ~  ~  ~"
dune3 = " ~ ~ ~ ~"

for i in range(spaces, -1, -1):
    os.system('cls' if os.name == 'nt' else 'clear')
    
    # Create desert scene with dunes, camel, and sun
    print(" " * 5 + dune1 + " " * 10 + dune2)
    print(" " * 3 + dune3 + " " * 8 + dune1)
    print(" " * 2 + sand * 5 + " " * 10 + sand * 4)
    print(" " * i + camel)
    print(" " * 20 + sun)
    
    time.sleep(0.1)
