


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


	        add r6, r5, r3
loop:
			mov r2, #1
			add r6, r6, r2

            b loop
            .align
            .end
