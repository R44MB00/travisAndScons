# -*- coding: utf-8 -*-
"""
title: Stack Implementation
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
        print
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
