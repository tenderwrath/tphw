import random

# with open("test8.txt", "w") as file:

#     for i in range (10):
#         random_number = random.randint(1, 100)  # Генерация случайного числа от 1 до 100
#         file.write(str(random_number) + " ")

meow = "66 55 96 56 81 35 76 3 21 56"
meow = meow.split()
li = []
ine=66
for i in range(1,len(meow)):
    ine *= int(meow[i])
    
print(ine)