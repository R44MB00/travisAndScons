"""Lowest Common Ancestor by GoSo"""
import sys


class TreeNode(object):
    """Class to represent each node of the BST"""

    def __init__(self, val):
        self.value = val
        self.left = None
        self.right = None
        self.parent = None

    def insert(self, data):
        """Insert method"""

        if self.value == data:
            return False
        else:
            if data > self.value:
                if self.right:
                    return self.right.insert(data)
                else:
                    self.right = TreeNode(data)
                    self.right.parent = self
                    return True

            else:
                if self.left:
                    return self.left.insert(data)
                else:
                    self.left = TreeNode(data)
                    self.left.parent = self
                    return True

    def get_parent(self, val):
        """Get parent method"""
        if self.value == val:
            return self.parent
        else:
            if val > self.value:
                if self.right:
                    return self.right.get_parent(val)
                else:
                    return None
            else:
                if self.left:
                    return self.left.get_parent(val)
                else:
                    return None


class Tree(object):
    """User class to construct the tree"""

    def __init__(self):
        self.root = None

    def insert(self, data):
        """Insert user method"""
        if self.root:
            return self.root.insert(data)
        else:
            self.root = TreeNode(data)
            return True

    def get_parent(self, val):
        """Get parent user method"""
        if val == self.root.value:
            return None
        else:
            return self.root.get_parent(val)


def get_ancestors(val, lista):
    """Get a list with all the ancestor for one Node and compare the node"""
    ancestor = BST.get_parent(val)
    if val in lista:
        return val

    ret = [val]

    while ancestor:

        val = ancestor.value
        ret.append(val)

        ancestor = BST.get_parent(val)
        if val in lista:
            return val

    return ret


with open(sys.argv[1], 'r') as test_cases:

    BST = Tree()
    BST.insert(30)
    BST.insert(8)
    BST.insert(52)
    BST.insert(3)
    BST.insert(20)
    BST.insert(10)
    BST.insert(29)

    for test in test_cases:
        line = test.strip()
        parts = line.split(' ')

        ancestors1 = get_ancestors(int(parts[0]), [])
        ancestors2 = get_ancestors(int(parts[1]), ancestors1)
        ancestors3 = get_ancestors(int(parts[1]), [])
        print ancestors2
