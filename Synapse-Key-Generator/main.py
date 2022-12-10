import random
import string

stuff = string.ascii_lowercase + string.digits
def generate_syn_key_v3():
    out = ''
    for y in range(5):
        for i in range(8):
            out += random.choice(stuff)
        if not y == 4:
            out += '-'
    return out
print('============== synape key genertor real 2022 not patched working ==============')
res = input('enter how many keys to generat ')
for i in range(int(res)):
    print(generate_syn_key_v3())