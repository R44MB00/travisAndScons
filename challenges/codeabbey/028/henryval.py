import re
in1=int(input())
res=[]
a=[]
for k in range(in1):
    in2=input()
    a=re.findall("\d\.\d+|\d+",in2) #get the "float" and then the "integer"
    w=float(a[0])
    h=float(a[1])
    BMI=float(round(w/(h*h),2))
    if(BMI<18.5):
        res.append("under")
    if(BMI>=18.5):
        if(BMI<25):
            res.append("normal")
    if(BMI>=25):
        if(BMI<30):
            res.append("over")
    if(BMI>=30.0):
        res.append("obese")
for h in range(len(res)):
    print(res[h],end="")
    if(h!=(len(res)-1)): print(" ",end="")