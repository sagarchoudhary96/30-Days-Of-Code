n = int(raw_input())
phonebook = {}
for i in range(0,n):
    name, id = raw_input().split()
    phonebook[name] = id
while (1):
    temp = ''
    name = raw_input()
    if (name == temp):
        break
    if(phonebook.has_key(name)):
        print name + "=" + phonebook[name]
    else:
        print "Not found"
