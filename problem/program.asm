// COLOCA AQUÍ TU NOMBRE COMPLETO: JUAN DANIEL MAYA
// COLOCA AQUÍ TU ID: 447525
// COLOCA AQUÍ TU CORREO ELECTRÓNICO: juan.mayap@upb.edu.co
(INICIO) 
            @KBD
            D=M
            @84
            D=D-A
            @SETCRUZ1
            D;JEQ
            
            @KBD
            D=M
            @67
            D=D-A 
            @SETCL
            D;JEQ
            
            
            @INICIO
            0;JMP
            
(SETCL)
            @ifcruz
            M=1
            @num
            M=0
            @16384
            D=A
            @coord
            M=D 
            @8192
            D=A
            @cont
            M=D
            @1
            D=A 
            @salto
            M=D
            @RECT
            0;JMP

(SETCRUZ2)
            @ifcruz
            M=1
            @num
            M=-1
            @20480
            D=A
            @coord
            M=D 
            @32
            D=A
            @cont
            M=D
            @1 
            D=A 
            @salto
            M=D
            @RECT
            0;JMP
(SETCRUZ1)
            @ifcruz
            M=0
            @256
            D=A
            @num
            M=D
            @16400
            D=A
            @coord
            M=D 
            @256
            D=A
            @cont
            M=D
            @32
            D=A 
            @salto
            M=D
            @RECT
            0;JMP
 
(RECT)
            @coord 
            D=M
            @pscreen
            M=D 
            
 
(PAINT)
            @cont
            D=M 
            
            @END
            D;JEQ
            


            @num
            D=M
            @pscreen
            A=M
            M=D
            
            @cont
            M=M-1
            
            @salto
            D=M
            
            @pscreen
            M=M+D
            
            @PAINT
            0;JMP

            
(END)
            @ifcruz 
            D=M
            @SETCRUZ2
            D;JEQ
            @INICIO
            0;JMP
