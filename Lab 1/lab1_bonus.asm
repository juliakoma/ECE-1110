.data
name: .asciiz "Julia\n"
.text

# Load the address of the string into $a0
la $a0, name

# Print the string
li $v0, 4
syscall

# Exit the program
li $v0, 10
syscall
