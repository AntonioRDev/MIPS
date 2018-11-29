 .data                       
 msga: .asciiz "Digite um numero:"
 msgb: .asciiz "par" 
 msgc: .asciiz "impar" 
																					
  .text                     														
main:   
 li $v0,4			#parametros syscall  // imprimir string
 la $a0,msga		#parametros syscall // imprimir string
 syscall
 li $v0,5			#parametros syscall // digitar int
 syscall
 add $s0,$zero,$v0	#s0 = console.readline
 li $t9,2			#t9 = 2
 rem $t1,$s0,$t9	#t1 = n % 2
 if:
 bne $t1,$zero,else #se t1 =! 0 pula pro else
 li $v0,4			#parametros syscall // imprimir string
 la $a0,msgb		#parametros syscall // imprimir string par
 syscall
 j fim
 else:
 li $v0,4			#parametros syscall // imprimir string
 la $a0,msgc		#parametros syscall // imprimir string impar
 syscall
 fim: jr $ra
 
 
 
 
 
 
 
 
 
		 
	
 
 
 
 
 
