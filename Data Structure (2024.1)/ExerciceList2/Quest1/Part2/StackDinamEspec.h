#include<stdio.h>
#include<stdlib.h>

typedef struct Node{
  int data;
  struct Node *next;
} Node;

typedef struct Stack{
  Node *top;
  int size;
} Stack;