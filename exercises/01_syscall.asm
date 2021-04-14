# Exercise 1
# Use a system call like write

# Segments when to use .data / .text?
# ===================================
#
# .data for data known at compilation, such as strings or arrays of known size.
# .text for the code. :)

# We indicate that we want to store data in the data segment.
.data

# the .asciz directive allows you to declare a string ending with a 0x00, '\0' in ASCII.
message: .asciz "Hello ASM from .data"
# number: .double 666

.text # <- code segment.

# Exercise: Observation in RARS
#
# - What is the base address of the msg chain? His end address?
# In Hexa the base address of the msg chain is OX10010000 and his end address is OX10010014
# Else the base address of the msg chain is 268500992 and his end address is 268501012 
# - In which segment of memory is it?
# the segment of memory is GP
# - What are the hexadecimal values ​​present in .data?
# the hexadecimal values is 0x10008000

# la: Load Address, load an address (label) into a register
la a0, message # argument of the system call
#la a1, number # argument of the system 
li a7, 4  # system call number 4 according to the RARS printString doc

ecall       # used to switch to kernel mode to make the system call


# Bonus: Now display a number, you will need the documentation.
li a0, 32 	# integer to print
li a7, 1        
ecall          # print it       

