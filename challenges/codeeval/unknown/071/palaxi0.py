import sys
import itertools

with open(sys.argv[1], 'r') as test_cases:
    #GET THE FILE
    for test in test_cases:
        #ITERATION OVER ALL LINES
        stringe = test.strip()
        #MAKE A VARIABLE EQUAL TO THE LINE AT THE ITERATION
        list1 = [int(i) for i in stringe.split(";")[0].split(",")]
        # stringe.split(";")[0] EQUALS TO THE LIST OF NUMBERS NEEDED 
        #TO SOLVE THE PROBLEM
        #.split(",") TO SAVE ALL NUMBERS IN A LIST OF STRINGS
        #[int(i) for i in stringe.split(";")[0].split(",")] 
        #CREATE A LIST PARSING ALL STRINGS IN THE LAST LIST TO INTEGERS
        list2=[]
        #EMPTY LIST FOR SAVING REVERSED SUB LISTS
        howmany = int(stringe.split(";")[1])
        #GET THE LAST ITEM IN THE test VARIABLE, THIS IS THE LENGTH OF THE 
        #SUBSTRINGS TO CREATE
        for i in range(0,len(list1),howmany):
        #MAKE i'S VALUE EQUAL FROM 0 TO list1 LENGTH WITH STEPS EQUAL TO howmany 
        #(i WILL JUMP AS MANY VALUES AS howmany'S VALUE)
            mini = list(list1[i:howmany+i])[::-1]
            #CREATE A LIST NAMED mini TO STORAGE A LIST THAT GOES FROM i 
            #TO howmany+1 BUT WRITING IT BACKWARDS WITH [::-1]
            if len(mini) == howmany:
            #COMPARE SIZE BETWEEN mini LENGTH AND howmany'S VALUE, 
            #THIS WILL CONTROLE IF THERE'S AT LEAST THE NUMBERS REQUIRED TO 
            #MAKE A SUBLIST GIVEN THE howmany ITEMS WILL BE IN EVERYSINGLE ONE.
                list2.append(mini)
                #APPEND IN TO THE OTHER BLANK LIST CREATED AT FIRST 
                #list2 IF CONDITION IS TRUE
            else:
            #IF THE CONDITION DOESN'T FIT IN THE CONTEXT
                list2.append(list(list1[i::]))
                #JUST APPEND THE REST OF THE list1 FROM i TO THE END WITHOUT 
                #REVERSING THE SECUENCE. 
        total = [str(i) for i in (list(itertools.chain.from_iterable(list2)))]
        #STORE AT total THE STRING OF EVERY i IN THE LIST CREATED BY MERGING 
        #ALL THE SUBLISTS INSIDE list2 
        print (",".join(total))
        #PRINTS THE LIST TOTAL ITEM BY ITEM SPLITTING THEM BY ','