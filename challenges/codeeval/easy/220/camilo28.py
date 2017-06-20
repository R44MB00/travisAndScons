"""
Title: Trick or Threat
url: https://www.codeeval.com/open_challenges/220/
"""
def trick_threat(file):
    """
    this fuction compute the num the candies by child
    file: path the dates for the input
    """
    for line in file:
        costumes = {}
        line = line.rstrip("\n").strip().split(",")
        candies = 0
        for cust in line:
            total = cust.split(":")
            costumes[total[0]] = int(total[1])
        div = costumes["Vampires"] + costumes[" Zombies"]  + costumes[" Witches"]
        candies = ((costumes["Vampires"] * 3 + costumes[" Zombies"] * 4 + costumes[" Witches"] * 5) *
        costumes[" Houses"]) / div
        print int(candies)


#--------------------------test-------------------------
path = raw_input("Please enter the rute to the file: ")
file = open("/home/camilo/test_25")
trick_threat(file)
#-------------------------endtest........................
