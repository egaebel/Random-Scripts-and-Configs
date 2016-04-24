#!/bin/python

import random
for x in range(0, 200):
	num_prisoners = 101
	prisoners = [random.randint(0, 1) for i in range(0, num_prisoners)]
	answers = []
	# For each prisoner
	for i in range(0, num_prisoners):
		answer = 0
		# For each prisoner in front of the current prisoner
		for j in range(i + 1, num_prisoners):
			answer += prisoners[j]
		# For each prior answer given
		for j in range(0, i):
			answer += answers[j]
		answer %= 2
		answers.append(answer)
	print("prisoners: \n" + str(prisoners))
	print("answers: \n" + str(answers))

	print("Checking....")
	incorrect_flag = False
	for i in range(1, num_prisoners):
		if prisoners[i] != answers[i]:
			print("WRONG")
			print("at index: " + str(i))
			incorrect_flag = True
			break
	if not incorrect_flag:
		print("Fully correct!")
	else:
		break
