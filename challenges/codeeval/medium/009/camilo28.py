# -*- coding: utf-8 -*-
"""
title: Stack Implementation

url: https://www.codeeval.com/open_challenges/9/

Description:Write a program which implements a stack interface for integers.
The interface should have ‘push’ and ‘pop’ functions. Your task is to ‘push’ a
series of integers and then ‘pop’ and print every alternate integer
"""
class Stack:
    def __init__(self):
        """
        initialize Stack LIFO Last in enter is Firs in out
        """
        self.items = []

    def __len__(self):
        """
        return length of Stack
        """
        return len(self.items)

    def __str__(self):
        """
        print stack
        """
        return " ".join(str(self.items))

    def push(self, value):
        """
        push in Stack
        """
        self.items.append(value)

    def pop(self):
        """
        pop in Stack
        """
        #self.item = self.item.reverse()
        return self.items.pop()
    
    def isempty(self):
        if self.items == []:
            return True
        return False
    
def read_file(file):
    """
    This is a auxiliar function
    read the test cases
    """
    for line in file:
        mystack = Stack()
        line = map(int, line.rstrip("\n").split(" "))
        out = []
        for id_x in line:
            mystack.push(id_x)
        #print mystack
        while True:
            if len(mystack) == 0:
                break
            out.append(mystack.pop())
            if len(mystack) == 0:
                break
            mystack.pop()

        print " ".join(map(str, out))
#----------------test---------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
read_file(file)
