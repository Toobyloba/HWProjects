

val1        .req r1
val2        .req r2
sum         .req r6
			.syntax unified
			.cpu cortex-m4
			.fpu softvfp
			.thumb
			.section 	.text
			.global 	__main
			.global		Reset_Handler


Reset_Handler:
			mov r1, #00
			mov r2, #126
__main:
	        mov r5, #45
	        mov r3, #45


	        add sum, val1, val2
loop:
			mov val2, #1
			add sum, sum, val2

            b loop
            .align
            .end
