import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        country=test.split("|")
        teams=[]
        for i in range(len(country)):
            country[i]=country[i].strip().split(" ")
            for j in country[i]:
                if int(j) not in teams:
                    teams.append(int(j))
        teams=sorted(teams)
        s=""
        for i in teams:
            s+=str(i)+":"
            for j in range(len(country)):
                if str(i) in country[j]:
                    s+=str(j+1)+","
            s=s[:-1]+"; "
        print s
