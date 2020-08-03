#!/bin/python3

import math
import os
import random
import re
import sys

class SinglyLinkedListNode:
    def __init__(self, node_data):
        self.data = node_data
        self.next = None

class SinglyLinkedList:
    def __init__(self):
        self.head = None
        self.tail = None

def print_singly_linked_list(node, sep, fptr):
    while node:
        fptr.write(str(node.data))

        node = node.next

        if node:
            fptr.write(sep)
            
------------------------------------------------------------------------------------------------------------------------------------------------------------------

def insertNodeAtHead(head, data):
 
    sys.setrecursionlimit(1000000) #necessary so that we don't reach infinite recursion

    if head == None:
        return SinglyLinkedListNode(data)
    else:
        new_head = SinglyLinkedListNode(data)
        new_head.next = head
        return new_head

------------------------------------------------------------------------------------------------------------------------------------------------------------------

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    llist_count = int(input())

    llist = SinglyLinkedList()

    for _ in range(llist_count):
        llist_item = int(input())
        llist_head = insertNodeAtHead(llist.head, llist_item)
        llist.head = llist_head
    
    print_singly_linked_list(llist.head, '\n', fptr)
    fptr.write('\n')
    
    fptr.close()
