.globl moverBarril
.extern filaBarril
.extern columnaBarril
.extern columnaMono
.extern columnaPlanta
.extern filaPlanta
.extern fila
.extern columna
.data
limpiar: .ascii "\x4"
planta: .ascii "\x29", "\x28", "\x26"
mario: .ascii "\x1", "\x2"
barril: .ascii "\x40"
.text
moverBarril:
        addi $sp, $sp, -36
        sw $a0, 0($sp)
        sw $a1, 4($sp)
        sw $t0, 8($sp)
        sw $t1, 12($sp)
        sw $t2, 16($sp)
        sw $s0, 20($sp)
        sw $s1, 24($sp)
        sw $s2, 28($sp)
        sw $ra, 32($sp)


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
        li $t2, 1
        slt $t0, $t2, $t1
        bne $t0, $zero, if
        j else
        if:
            addi $t1, $t1, -1
            sw $t1, 0($s1)
            j done
        else:
            la $s2, columnaMono
            lw $t2, 0($s2)
            addi $t1, $t2, -3
            sw $t1, 0($s1)
        done:
            la $s2, columnaPlanta
            lw $t2, 0($s2)
            addi $t2, $t2, 2
            beq $t1, $t2, if2
            addi $t2, $t2, -2
            beq $t1, $t2, elseif1
            addi $t2, $t2, -1
            beq $t1, $t2, elseif2
            la $s0, columna
            lw $t0, 0($s0)
            addi $t0, $t0, -1
            beq $t1, $t0, elseif3
            j done2

        if2:
            move $t0, $zero
            addi $t0, $t0, 0xf
            move $a0, $t0
            move $t0, $zero
            addi $t0, $t0, 0x0
            move $a1, $t0
            jal set_color
            la $s0, filaPlanta
            lw $t0, 0($s0)
            move $a0, $t0
            la $s2, columnaPlanta
            lw $t2, 0($s2)
            addi $t2, $t2, 2
            move $a1, $t2 
            jal set_cursor
            la $s0, planta
            lb $t0, 0($s0)
            move $a0, $t0
            jal put_char
            j done2
        elseif1:
            move $t0, $zero
            addi $t0, $t0, 0xf
            move $a0, $t0
            move $t0, $zero
            addi $t0, $t0, 0x0
            move $a1, $t0
            jal set_color
            la $s0, filaPlanta
            lw $t0, 0($s0)
            move $a0, $t0
            la $s2, columnaPlanta
            lw $t2, 0($s2)
            addi $t2, $t2, 1
            move $a1, $t2 
            jal set_cursor
            la $s0, planta
            lb $t0, 1($s0)
            move $a0, $t0
            jal put_char
            j done2
        elseif2:
            move $t0, $zero
            addi $t0, $t0, 0xf
            move $a0, $t0
            move $t0, $zero
            addi $t0, $t0, 0x0
            move $a1, $t0
            jal set_color
            la $s0, filaPlanta
            lw $t0, 0($s0)
            move $a0, $t0
            la $s2, columnaPlanta
            lw $t2, 0($s2)
            move $a1, $t2 
            jal set_cursor
            la $s0, planta
            lb $t0, 2($s0)
            move $a0, $t0
            jal put_char
            j done2
        elseif3:
            move $t0, $zero
            addi $t0, $t0, 0xf
            move $a0, $t0
            move $t0, $zero
            addi $t0, $t0, 0x0
            move $a1, $t0
            jal set_color
            la $s0, fila
            lw $t0, 0($s0)
            move $a0, $t0
            la $s2, columna
            lw $t2, 0($s2)
            move $a1, $t2 
            jal set_cursor
            la $s0, mario
            lb $t0, 0($s0)
            move $a0, $t0
            jal put_char
            jal set_cursor
            la $s0, mario
            lb $t0, 1($s0)
            move $a0, $t0
            jal put_char
        done2:
            move $t0, $zero
            addi $t0, $t0, 0xf
            move $a0, $t0
            move $t0, $zero
            addi $t0, $t0, 0x0
            move $a1, $t0
            jal set_color
            la $s0, filaBarril
            lw $t0, 0($s0)
            move $a0, $t0
            move $a1, $t1
            jal set_cursor
            la $s0, barril
            lb $t0, 0($s0)
            move $a0, $t0
            jal put_char


        lw $a0, 0($sp)
        lw $a1, 4($sp)
        lw $t0, 8($sp)
        lw $t1, 12($sp)
        lw $t2, 16($sp)
        lw $s0, 20($sp)
        lw $s1, 24($sp)
        lw $s2, 28($sp)
        lw $ra, 32($sp)
        addi $sp, $sp, 36
        jr $ra