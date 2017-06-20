"""
Title: Simple or trump
url: https://www.codeeval.com/open_challenges/235/
"""
#values cards
cards = {"A":14,"K":13,"Q":12,"J":11,"10":10,"9":9,"8":8,"7":7,"6":6,"5":5,
"4":4,"3":3,"2":2}
def simple_trump(file):
    """
    return the winner of a trump suit cards game
    file: rute to the testcase
    """
    for line in file:
        hands = line.rstrip("\n").split("|")
        #result of the game
        result = []
        #this list is of  the posibles wins when they have the win suit
        posibles = []
        #when nobody player have the win suit goes to the another list
        ano = []
        suit_win = hands[1].replace(" ","")
        result = hands[0].strip().split(" ")
        for hand in result:
            if hand[-1] == suit_win:
                posibles.append(hand)
            else:
                ano.append(hand)
        if len(posibles) == 0:
            compare(ano)
        else:
            if len(posibles) == 1:
                print posibles[0]
            else:
                compare(posibles)


def compare(posibles):
    """
    function auxiliar, compare the hands of everyone player and return the win
    posibles: list with the hand of everyone player
    this fuction optimize the code
    """
    for idx in range(len(posibles)-1):
        if cards[posibles[idx][0:-1]] > cards[posibles[idx+1][0:-1]]:
            print posibles[idx]
        elif cards[posibles[idx][0:-1]] < cards[posibles[idx+1][0:-1]]:
            print posibles[idx+1]
        else:
            print posibles[idx] + " " + posibles[idx+1]
#------------------------test------------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
simple_trump(file)
#---------------------endtestcase--------------------
