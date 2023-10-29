# Jaron Lin, Timothy Lee, Jonah Lysne, Alan Mong
# CS 2640.01
# Date: October 19, 2023
# Github Link: https://github.com/CS2640Group/MIPS_Assembly_Assignments
# Program 1: Getting Familiar with Assembly

.data
int1: .asciiz "Enter the first integer: "
int2: .asciiz "Enter the second integer: "
space: .asciiz " "
newline: .asciiz "\n"
addition: .asciiz "Add the two values: "
subtraction: .asciiz "Subtract the two values: "
multiplication: .asciiz "Multiply the two values: "
division: .asciiz "Divide the two values: "
same: .asciiz "User input are the same"
different: .asciiz "User inputs are different"


.text
main:
## TASK 1: User Input and Output
#Displaying prompt for first integer
li $v0, 4
la $a0, int1
syscall

#Read first integer from user and store to $s0
li $v0, 5
syscall
move $s0, $v0

#Display prompt for second integer
li $v0, 4
la $a0, int2
syscall

#Read second integer from user and store to $s1
li $v0, 5
syscall
move $s1, $v0

#Print out first integer
li $v0, 1
move $a0, $s0
syscall

#Print Space
li $v0, 4
la $a0, space
syscall

#Print out second integer
li $v0, 1
move $a0, $s1
syscall

#Print New-Line
li $v0, 4
la $a0, newline
syscall


## TASK 2: Arithmetic Operation Practice
#Prompt Addition:
li $v0, 4
la $a0, addition
syscall

add $t1, $s0, $s1
li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, newline
syscall

#Prompt Subtraction:
li $v0, 4
la $a0, subtraction
syscall

sub $t1, $s0, $s1
li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, newline
syscall

#Prompt Multiplication:
li $v0, 4
la $a0, multiplication
syscall

mul $t1, $s0, $s1
li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, newline
syscall

#Prompt Division:
li $v0, 4
la $a0, division
syscall

div $t1, $s0, $s1
li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0, newline
syscall


## TASK 3: Conditions

#Comparing the two values
beq $s0, $s1, equal

#Printing if Different
li $v0, 4
la $a0, different
syscall
j end


#Printing if the Same
equal: 
li $v0, 4
la $a0, same
syscall

#Ending Program:
end: 
li $v0, 10
syscall

