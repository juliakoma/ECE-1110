li $s1, 5 # store the length of your name
li $s2, 0 # initial $s2 for the loop
addi $t0, $gp, 0 # store the base address to $t0
LOOP:
bge $s2, $s1, END # jump to the END label if $s2 is equal or larger than $s1
lw $a0, 0($t0) # load a letter of your name
li $v0, 11 # prepare the system call for printing
addi $t0, $t0, 4 # move the address to the next letter
addi $s2, $s2, 1 # increase the iteration variable
syscall
j LOOP # jump to the LOOP label
END:
sw $s2, 0($gp) # store $s2