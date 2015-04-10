from _wrap import PyClass

monkey = PyClass('monkey', 10)
for i in range(5):
    print monkey.uniform(),
print

horsey = PyClass('horsey', 10)
print horsey.named_pairs(5)

horsey.name = 'doggy'
print horsey.named_pairs(5)



