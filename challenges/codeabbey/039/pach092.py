"""This script contains names of stocks which
are volatile enough by Paul's criteria"""
AMOUNT = int(input())
for a in range(AMOUNT):
    stock = raw_input().split()
    stock_name = stock[0]
    del stock[0]
    stock = [int(price) for price in stock]
    average_value = sum(stock) / len(stock)
    desv = 0
    for price in stock:
        desv += (price - average_value)**2
    desv = (desv / len(stock)) ** 0.5
    if desv >= 4 * average_value / 100:
        print stock_name, ''
