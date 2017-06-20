"""
Title: swap elements
CodeEval: easy
https://www.codeeval.com/open_challenges/112/
"""
def swap(file):
    #try:
        for line in file:
            aux = ""
            line = line.rstrip("\n").split(":")
            nums = line[0].split(" ")
            position = line[1].split(",")
            out = ""
            #print position

            if len(position) == 1:
                ax = position[0].split("-")
                aux = nums[int(ax[0])]
                nums[int(ax[0])] = nums[int(ax[1])]
                nums[int(ax[1])] = aux
            else:
                for pos in position:
                    ax =  pos.split("-")
                    aux = nums[int(ax[0])]
                    nums[int(ax[0])] = nums[int(ax[1])]
                    nums[int(ax[1])] = aux

            for n in nums:
                if (out == ""):
                    out = n
                else:
                    out += " " + n
            print out

    #except Exception as e:
    #    print e

path = raw_input("Please enter the rute to the file: ")
file = open(path)
swap(file)
