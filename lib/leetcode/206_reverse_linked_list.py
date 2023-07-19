def reverseList(list):
  stack = []
  
  for num in list:
    stack.insert(0, num)

  return stack


print(reverseList([1, 2, 3, 4, 5]))
print(reverseList([1,2]))
print(reverseList([]))