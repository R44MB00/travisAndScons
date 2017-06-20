#!/usr/bin/env python2
# encoding: utf-8

import sys
from collections import Counter

with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()

def get_hand(cards):
  
    hand = {}
    hand['cards'] = sorted(['23456789TJQKA'.index(c[0]) + 2 for c in cards])
    hand['rf'] = 1 if hand['cards'] == [10, 11, 12, 13, 14] else 0
    hand['fl'] = 1 if len(set([f[1] for f in cards])) == 1 else 0
    hand['st'] = int(all(1 if hand['cards'][i + 1] - hand['cards'][i] == 1
                         else 0 for i in xrange(4)))
    hand['stc'] = max(hand['cards']) if hand['st'] else 0
    hand['sf'] = hand['st'] and hand['fl']
    hand['sfc'] = hand['stc'] if hand['sf'] else 0

    count = Counter(hand['cards'])

    hand['op'] = 1 if 2 in count.values() else 0
    hand['opc'] = max(f for f in count if count[f] == 2) if hand['op'] else 0
    hand['tp'] = 1 if sum(1 for p in count if count[p] == 2) == 2 else 0
    hand['tpc'] = ''.join(sorted(['{0:02}'.format(f) for f in count if
                                  count[f] == 2],
                                 reverse=True)) if hand['tp'] else '0000'
    hand['tk'] = 1 if 3 in count.values() else 0
    hand['tkc'] = [f for f in count if count[f] == 3][0] if hand['tk'] else 0
    hand['fk'] = 1 if 4 in count.values() else 0
    hand['fkc'] = [f for f in count if count[f] == 4][0] if hand['fk'] else 0
    hand['fh'] = hand['tk'] and hand['op']
    hand['fhc'] = '{0:02}{1:02}'.format(hand['tkc'],
                                        hand['opc']) if hand['fh'] else '0000'

    hand['hc'] = ''.join(['{0:02}'.format(c) for c in hand['cards'][::-1]])

    score = int('{rf}{sf}{sfc:02}{fk}{fkc:02}{fh}{fhc}{fl}{st}{stc:02}{tk}'
                '{tkc:02}{tp}{tpc}{op}{opc:02}{hc}'.
                format(rf=hand['rf'], sf=hand['sf'], sfc=hand['sfc'],
                       fk=hand['fk'], fkc=hand['fkc'], fh=hand['fh'],
                       fhc=hand['fhc'], fl=hand['fl'], st=hand['st'],
                       stc=hand['stc'], tk=hand['tk'], tkc=hand['tkc'],
                       tp=hand['tp'], tpc=hand['tpc'], op=hand['op'],
                       opc=hand['opc'], hc=hand['hc']))

    return score

test_cases = ['TC 7H KH 4H JC 7D 9S 3H QS 7S', '9C 7C 8C TC 6C 7S JD QS 4D 7D', 'JH 5D 7H TC JS JD JC TS 5S 7S', '4S 6C 6H 7C 9C QD TD AD KD JD', '3S 6S 5D 7D 4D 3D 4S 7H 6C 5S', '6D 9C 7C TH 8H QD KD AD JD TC', 'TD JD AD 5D 6D AH 6H JS 5H TS', '6D 7H AH 7S QC 6H 2D TD JD AS', '3D QC 3S 6H JC TH TS AH 5D TD', '8D 5D 5S 2D 8C KS AS TS QS JS', '5H KH 2S 5D 2C TD TC 6S TS TH', '4C KD 2C 4D KC KS TH 9S JD QD', 'TC 8C 5C KC KS 4C 9S KD 7S KH', '5C 4C JC KC TC JH TD KS AS QH', '4D 4S QS 4H 3S 5D 2D JD 9D 3D', '5H 4H 3H 6H 7H 4S 3S 5S 7S 6C', 'QS AS 4S JS KS QD 6S 4D 4C 6D', 'QH AH KH TH JH KD AD TD JS QS', 'KH QS TS AD JD KD JS AH TC QD', '5C 7C 6C 9C 8C 5D 3S 4C 4S 2S', 'QC AS AH AC 6D 4H QD TH 2D 2S', 'TS 7D JD TH TD 3S 7S 6S 4S 5S', 'QH 9C 2D KH KD QS KC 2S 9S KS', '8H 6H AH 4H 3H AS 4S 3S 6D 8D', 'KD AD JD TD QD TC 9C JH QS AC', '7D KD 6D QD AD JH QS AC TH 9H', 'QD 9D 9H QH JH 8S 8D 4C 8C 8H', '2H 2D 6H 6S 2S QC JC KC AC TC', '3S 2D 3H 3D 3C JD TD 5D 4D KD', '5D QH 2H 4H 5S 9S 8C TH 6C 7C', '9D 6S TH 7H 8D QH JH TD KH AH', 'TS 5H QS TH QH TC QD 3H QC 2S', 'AC JC QC TC KC KD TS AD JS QS', '9D AS AC 9S 8D 7C 5H 9C 9H JD', '6C 6D 8D 8C 7C AD 6H 6S 8H 8S', 'QS TS KS JS 5S 7C 7D KC KD 6D', '9D 2C 2D 9C 9H 2H 9S QH JH 2S', '2H 8C AD TH 6H QD KD 9H 6S 6C', '3D AD 2C 3H 2S 2D 3S 9S 3C 2H', '2D 5D 6D 4D 3D 9H KD 9C TH 5C', 'KS AC 9C KH 2C 8S 4H KC KD JD', '5C 8D 8C JS JC 5S 4S 3S QS AS', '7C 2C 5H 9S 5D 5S QH 9D QS 7S', '6H 5H 8H 7H 4H 8C JC QD 4C QC', '9H JS 9D 2C 2H 9C 9S 3S 4D 2D', '4S 4C 4H 9C QC TS 7C 7S 3D 3H', '8H 4H 5C 3D TC 2S KH 2C 6D KD', '3C TS JD JH 8H 9S 8S JC 7C 6D', 'TC 9C 4H 8H 4C 8S 5S 5H AS TH', 'KD 8C KC 5D JH 4H KS 5C 9H KH', 'TC KH TD TS 3S 5S JH JC AD 3C', '4D 3H 3S 4S 3D QH QS KD 5H 5C', 'KD 8D KS 7C 8C AD TC AS TD 9D', '8C 5H QC 2C 2S 6H 9H KD 2D 2H', 'QH 5S 5H TC 7D JS KS QS AS TS', 'AC TC 2D 8D AD 6S 5C AS AH KH', 'KH AH JH QH TH 2H QS 2S KC TS', 'TD 2S QH 6H 3C 3S QS 6S 2C TH', '6S 9S 7H QH KC QS 9C 7S 6D KS', '6C TC 8H 7C 9C 6D 9S 7S 8C TS', 'TH AH KH JH QH TS AS JS KC QS', '7D JD 7S 2H JS QC 8H 4H 8D QS', '7D 6C 8S TD 9S 9C 6D TS 8C 7S', 'AD 5D 2D 8D TD 7D 9D 6D 5S 8S', '9C 3C TC 2C 5C 3S TS 9H 2S 5H', 'JS TS QS KS AS 2C 8S AD 5D 7D', 'TC AC JC KC QC 6H KH 8S 6S 9H', 'AH 8C 6S 3H JS 3D AC 5C TH 5H', '4H 6C 6D 4S 6H TD JD QD KD AC', 'TH 9D 8D TD 7H 7C 6D 4H TS 7D', '2C AS 2D 9D 3D 2S 5H 5C KD KC', 'JD AC AH JC AD KD KS 5D 5H 5S', '3H 2H 5H 6H 4H 2S 6C 3S 4S 5S', 'TH AH QH KH JH 5C 8C 7C 6C 9C', 'JH KH QH AH TH QS JD AD KD TS', '9D JH 9C 9S JD 7H TH TS TD 7S', '5D 9D 7H 8H 6C QD TD KD JD AD', '9S 8S 6C 7C TC 3D 2D AC 4D KC', 'KS QH 9D JC TD QS TS JD KH 9S', '9D 4S AC 9H 3S 4C 9C 8H 9S 2C', 'TH 7H JH 8H 9H AH QH JD TC KH', '4C 4S 4H 4D 7D 2H 2C 2S 2D JD', 'KD 8D KH 8C 9H KC TC AH JC QC', '5H 3C 3S 5C 5D 3H 3D 7S QH 5S', 'QC 6D QS KC QD TS 8S 7S 9S 6S', 'KD KH 2H 8H 2S 3S JH 8S QD 3C', 'JS JH 4H 2C 9H QH KC 9D 4D 3S', 'AH AD 2H TD TH 8H 9H 6H 5H 7H', '9H TC KH 3H TH 4C 6H 9D QD 6D', '6S 7S 5S 4S 8S 6C 6H 6D JD JC', 'QD TD AD JD KD JS TC AH KC QS', '7H 7D 8S 8C 8H AH QC TH KD JC', '3S AC 5S AD 3H 6C KH 2D 4S 6S', '9H TH JH 8S 7H TC 9C JS 7C 8H', 'QS 9S 3S 5S 4S 9D 3C QC 5C 4H', 'TS AS QS KS JS 8S QD KH JC 9S', 'TS 3S 3D 3H TH TC 4H TD 9C 9S', '8C 3S 3C 8S TS 8H 8D QH 3H 3D', 'QH AH JH KH TH JS AC QD KC TS', '9D 2C 8S 2H 9H JS AH TD KH AC']

for test in test_cases:
    left, right = [i for i in ((test.split()[:5], test.split()[-5:]))]
    left_hand, right_hand = get_hand(left), get_hand(right)
    print left, '===', right
    print left_hand, right_hand
    if left_hand == right_hand:
        print 'none'
    elif left_hand > right_hand:
        print 'left'
    else:
        print 'right'
