""""
Title: Swap Case
CodeEval: Easy
Url: https://www.codeeval.com/open_challenges/96/
"""
def swap_case(file):
  """
  swaps letters' case in a sentence
  """
  for line in file:
      line = line.rstrip("\n")
      print line.swapcase()

path = raw_input("Please enter the rute of the file")
file = open(path)
swap_case(file)
