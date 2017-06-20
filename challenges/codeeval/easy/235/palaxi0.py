"""
Card game higher with trump
"""
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        dicti = {
            '2':2, '3':3, '4':4, '5':5, '6':6,
            '7':7, '8':8, '9':9, '10':10,
            'J':11, 'Q':12, 'K':13, 'A':14
        }
        line = test.strip()
        card1 = line.split(" | ")[0].split(" ")[0]
        card2 = line.split(" | ")[0].split(" ")[1]
        typecard = line.split(" | ")[1]
        cardlist = []
        cardlist2 = []
        if card1[-1] == typecard and card2[-1] != typecard:
            cardlist.append(card1)
        if card2[-1] == typecard and card1[-1] != typecard:
            cardlist.append(card2)
        if cardlist == []:
            if dicti[card1[0:-1]] == dicti[card2[0:-1]]:
                if card1[-1] == typecard:
                    cardlist2.append(card1)
                if card2[-1] == typecard:
                    cardlist2.append(card2)
                if card2[-1] != typecard and card1[-1] != typecard:
                    cardlist2.append(card1)
                    cardlist2.append(card2)
            else:
                if dicti[card1[0:-1]] > dicti[card2[0:-1]]:
                    cardlist2.append(card1)
                else:
                    cardlist2.append(card2)
            print" ".join(cardlist2)
        else:
            print" ".join(cardlist)
