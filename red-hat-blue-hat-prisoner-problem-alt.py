#!/bin/python

import random
num_prisoners = 100
prisoners = [random.randint(0, 1) for i in range(0, num_prisoners)]
answers = []
# For each prisoner
for i in range(0, num_prisoners):
	answer = 0
	if (i - 1) >= 0:
		answer -= answers[i - 1]
	# For each prior answer given
	for j in range(0, i):
		answer += answers[j]
	answer %= 2
	answers.append(answer)
print("prisoners: \n" + str(prisoners))
print("answers: \n" + str(answers))

print("Checking....")
for i in range(1, num_prisoners):
	if prisoners[i] != answers[i]:
		print("WRONG")
		print("at index: " + str(i))
		break

print("Fully correct!")	
