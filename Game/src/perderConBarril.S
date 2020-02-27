.globl perderConBarril
.extern filaBarril
.extern columnaBarril
.extern fila
.extern columna
.extern contadorVidas
.data
    mensaje: .asciiz "PERDISTE :0"
    limpiar: .ascii "\x4"
    mario: .ascii "\x1", "\x2"

.text

perderConBarril:
    addi $sp, $sp, -28
    sw $a0, 0($sp)
    sw $a1, 4($sp)
    sw $s0, 8($sp)
    sw $s1, 12($sp)
    sw $t0, 16($sp)
    sw $t1, 20($sp)
    sw $ra, 24($sp)
    
    
    la $s0, columna
    lw $t0, 0($s0)
    la $s1, columnaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, elseif
    
    la $s0, fila
    lw $t0, 0($s0)
    la $s1, filaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, elseif
    la $s0, contadorVidas
    lw $t0, 0($s0)
    li $t1, 1
    bne $t0, $t1, if
    la $s0, columna
    lw $t0, 0($s0)
    addi $t0, $t0, 1
    la $s1, columnaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, elseif
    la $s0, fila
    lw $t0, 0($s0)
    la $s1, filaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, elseif
    la $s0, contadorVidas
    lw $t0, 0($s0)
    li $t1, 1
    bne $t0, $t1, if
    j elseif

    if: 
       
       la $s0, filaBarril
       lw $t0, 0($s0)
       la $s1, columnaBarril
       lw $t1, 0($s1)
       move $a0, $t0
       move $a1, $t1
       jal set_cursor
       la $s0, limpiar
       lb $t0, 0($s0)
       move $a0, $t0
       jal put_char
       la $s0, fila
       lw $t0, 0($s0)
       la $s1, columna
       lw $t1, 0($s1)
       move $a0, $t0
       move $a1, $t1
       jal set_cursor
       la $s0, limpiar
       lb $t0, 0($s0)
       move $a0, $t0
       jal put_char
       la $s0, limpiar
       lb $t0, 0($s0)
       move $a0, $t0
       jal put_char
       la $s0, contadorVidas
       lw $t0, 0($s0)
       addi $t0, $t0, -1
       sw $t0, 0($s0)
       move $t0, $zero
       addi $t0, $t0, 0xf
       move $a0, $t0
       move $t0, $zero
       addi $t0, $t0, 0x0
       move $a1, $t0
       jal set_color
       li $t0, 28
       li $t1, 1
       move $a0, $t0
       move $a1, $t1
       jal set_cursor
       la $s0, mario
       lb $t0, 0($s0)
       move $a0, $t0
       jal put_char
       la $s0, mario
       lb $t0, 1($s0)
       move $a0, $t0
       jal put_char
       li $t0, 45
       move $a0, $t0
       jal delay_ms
       li $v0, 1
       j done
       
       
    elseif:
        la $s0, columna
    lw $t0, 0($s0)
    la $s1, columnaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, done
    
    la $s0, fila
    lw $t0, 0($s0)
    la $s1, filaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, done
    la $s0, contadorVidas
    lw $t0, 0($s0)
    li $t1, 1
    beq $t0, $t1, if2
    la $s0, columna
    lw $t0, 0($s0)
    addi $t0, $t0, 1
    la $s1, columnaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, done
    la $s0, fila
    lw $t0, 0($s0)
    la $s1, filaBarril
    lw $t1, 0($s1)

    bne $t0, $t1, done
    la $s0, contadorVidas
    lw $t0, 0($s0)
    li $t1, 1
    beq $t0, $t1, if2
    j done

    if2:
        jal clear_screen
        move $t0, $zero
        move $t1, $zero
        addi $t0, $t0, 0x4
        addi $t1, $t1, 0x0
        move $a0 , $t0
        move $a1 , $t1
        jal set_color
        li $t0, 15
        li $t1, 34
        move $a0, $t0
        move $a1, $t1
        jal set_cursor
        
        la $a0, mensaje
        jal puts
        li $v0, 2
        
    done:
    

    lw $a0, 0($sp)
    lw $a1, 4($sp)
    lw $s0, 8($sp)
    lw $s1, 12($sp)
    lw $t0, 16($sp)
    lw $t1, 20($sp)
    lw $ra, 24($sp)
    
    addi $sp, $sp, 28
    
    jr $ra
    