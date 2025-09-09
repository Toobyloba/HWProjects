val1        .req r1
val2        .req r2
sum         .req r6

.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb

.section .text
.global __main
.global Reset_Handler

Reset_Handler:
    ldr r0, =0x20000000           @ Start of RAM
    ldr r1, =0x20020000           @ End of RAM (adjust as needed)
    ldr r2, =0xDEADBEEF           @ Fill pattern

fill_ram:
    cmp r0, r1
    bcs fill_done
    str r2, [r0], #4
    b fill_ram

fill_done:
    @ Ram initialization complete

__main:
    ldr r0, =data_var1            @ Point r0 to data_var1
    mov r1, #5
    str r1, [r0]

    ldr r0, =data_var2
    mov r1, #4
    str r1, [r0]

    ldr r0, =data_var3
    mov r1, #200
    str r1, [r0]

stop:
    b stop

.section .data
.align 4
data_var1:  .space 4              @ Reserve 4 bytes
data_var2:  .space 4
data_var3:  .space 4

.end
