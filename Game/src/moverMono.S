
.globl moverMono
.extern filaMono
.extern columnaMono
.extern movMono
.data
parteInferiorMono: .ascii "\x4", "\x4", "\x4", "\x4"
parteCentralMono: .ascii "\x4", "\x4", "\x4", "\x4", "\x4"
inferiorMono: .ascii "\x14", "\x15", "\x16", "\x17"
centralMono: .ascii "\x18", "\x19", "\x22", "\x23", "\x24"
superiorMono: .ascii "\x25"
colores: .ascii "WHITE", "BLACK"


.text
moverMono: 
        addi $sp, $sp, -52
        sw  $a0, 0($sp)
        sw  $a1, 4($sp)
        sw  $ra, 8($sp)
        sw  $s0, 12($sp)
        sw  $s1, 16($sp)
        sw  $s2, 20($sp)
        sw  $s3, 24($sp)
        sw  $t0, 28($sp)
        sw  $t1, 32($sp)
        sw  $t2, 36($sp)
        sw  $t3, 40($sp)
        sw  $t4, 44($sp)
        sw  $t5, 48($sp)

        la $t0, filaMono
        lw $s0, 0($t0)
        move $a0, $s0
        la $t1, columnaMono
        lw $s1, 0($t1)
        move $a1, $s1
        jal set_cursor
        la $s2, parteInferiorMono 
        lb $s3, 0($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 1($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 2($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 3($s2)
        move $a0, $s3
        jal put_char
        la $t0, filaMono
        lw $s0, 0($t0)
        addi $s0, $s0, -1
        move $a0, $s0
        la $t1, columnaMono
        lw $s1, 0($t1)
        move $a1, $s1
        jal set_cursor
        la $s2, parteCentralMono
        lb $s3, 0($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 1($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 2($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 3($s2)
        move $a0, $s3
        jal put_char
        lb $s3, 4($s2)
        move $a0, $s3
        jal put_char

        
        li $t5, 50
        la $s0, movMono
        lw $t1, 0($s0)
        la $s1, columnaMono
        lw $t2, 0($s1)
        bne $t1, $zero, elseif
        slt $t4, $t5, $t2
        li $t3, 51
        bne $t4, $zero, if
        elseif:
                
                li $t3, 1
                li $t5, 70 
                la $s0, movMono
                lw $t1, 0($s0)
                la $s1, columnaMono
                lw $t2, 0($s1)
                beq $t1, $t3, if1
                j done
                if1:
                
                slt $t4, $t2, $t5 
                li $t3, 69
                bne $t4, $zero, if2 
                j done
                if2:
                 beq $t2, $t3, continuar2 
                 addi $t2, $t2, 1
                sw $t2, 0($s1)
                j done
                continuar2:
                addi $t1, $t1, -1
                sw $t1, 0($s0)  
                j done
               

        if:
         
         beq $t2, $t3, continuar
         addi $t2, $t2, -1
         sw $t2, 0($s1)
         j done
         continuar:
         
            addi $t1, $t1, 1
            sw $t1, 0($s0)

            
       
        
        done:
                move $t4, $zero
                addi $t4, $t4, 0xf
                move $a0, $t4
                move $t4, $zero
                addi $t4, $t4, 0x0
                move $a1, $t4
                jal set_color
                la $t0, filaMono
                lw $s0, 0($t0)
                move $a0, $s0
                move $a1, $t2
                jal set_cursor
                la $s2, inferiorMono 
                lb $s3, 0($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 1($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 2($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 3($s2)
                move $a0, $s3
                jal put_char
                la $t0, filaMono
                lw $s0, 0($t0)
                addi $s0, $s0, -1
                move $a0, $s0
                move $a1, $t2
                jal set_cursor
                la $s2, centralMono 
                lb $s3, 0($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 1($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 2($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 3($s2)
                move $a0, $s3
                jal put_char
                lb $s3, 4($s2)
                move $a0, $s3
                jal put_char
                la $t0, filaMono
                lw $s0, 0($t0)
                addi $s0, $s0, -1
                move $a0, $s0
                move $a1, $t2
                jal set_cursor
                la $s2, superiorMono
                lb $s3, 0($s2)
                move $a0, $s3
                jal put_char

        

        lw      $a0, 0($sp)
        lw      $a1, 4($sp)
        lw      $ra, 8($sp)
        lw      $s0, 12($sp)
        lw      $s1, 16($sp)
        lw      $s2, 20($sp)
        lw      $s3, 24($sp)
        lw      $t0, 28($sp)
        lw      $t1, 32($sp)
        lw      $t2, 36($sp)
        lw      $t3, 40($sp)
        lw      $t4, 44($sp)
        lw      $t5, 48($sp)
        addi    $sp, $sp, 52

        jr $ra
