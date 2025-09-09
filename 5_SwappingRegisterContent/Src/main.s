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
    ldr r0, =0xBABEFACE
    ldr r1, =0xDEADBEAF

    eor	r0,r0,r1
    eor r1,r0,r1
    eor	r0,r0,r1


stop:
    b __main

.align
.end
