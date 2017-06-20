"""
Title: Age Distribution
URL: https://www.codeeval.com/open_challenges/152/
"""
def age(file):
    """
    This function compute the demographic report
    file: argument with integer age of the persons
    demographic: Dictionary with the posibles ages
    """
    demographic = {tuple(range(0,3)):"Still in Mama's arms",tuple(range(3,5)):"Preschool Maniac",
                                                              tuple(range(5,12)):"Elementary school", tuple(range(12,15)):"Middle school",
                                                                                                         tuple(range(15,19)):"High school",
                                                                                                         tuple(range(19,23)):"College",
                                                                                                                tuple(range(23,66)):"Working for the man",
                                                                                                                       tuple(range(66,101)):"The Golden Years",}
    for line in file:
        age = line.rstrip("\n")
        if int(age) in range(0,101):
            for val in demographic.keys():
                    if int(age) in val:
                        print demographic[val]
        else:
            print "This program is for humans"
        #print demographic.values()
#--------------------------test-------------------------
path = raw_input("Please enter the rute to the file: ")
file = open("/home/camilo/test_25")
age(file)
