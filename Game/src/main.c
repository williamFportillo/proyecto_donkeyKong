#include <screen.h>
#include <keypad.h>

#define TO_STR(ch) ( ( ((ch) >= 0 ) && ((ch) <= 9) )? (48 + (ch)) : ('a' + ((ch) - 10)) )
    int contadorVidas = 3;
   
    int filaMono = 28;
    int columnaMono = 65;
    int filaPlanta = 28;
    int columnaPlanta = 30;
    int filaNube1 = 20;
    int columnaNube1 = 18;
    int filaNube2 = 20;
    int columnaNube2 = 50;
    int filaBarril = 28;
    int columnaBarril = 0;
    //uint8_t f, b;
    //char mario[6] = "\x1\x2";
    int columna=1;
    int fila = 28;
    int semilla = 1234;
    int movMono = 0;
    int contadorSaltos = 0;
    uint32_t m = 3000;
    uint32_t caida = 100;
    //get_color(&f, &b);
    //set_color(WHITE, BLACK);


/*void moverMono()
{
            set_cursor(filaMono, columnaMono);
            puts("\x4\x4\x4\x4");
            set_cursor(filaMono-1, columnaMono);
            puts("\x4\x4\x4\x4\x4");
            set_cursor(filaMono-1, columnaMono);
            puts("\x4");
              if(movMono == 0 && columnaMono >= 50){
		  if(columnaMono == 50){
			movMono = 1;
                   }
                  columnaMono = columnaMono-1;             
		}else if(movMono == 1 && columnaMono <= 70){ 
                   if(columnaMono == 70){
                      movMono = 0;
                   }
                  columnaMono = columnaMono + 1;
                }

	    set_color(WHITE, BLACK);
    	    set_cursor(filaMono, columnaMono);
            puts("\x14\x15\x16\x17");//parte inferior de Donkey Kong

            set_color(WHITE, BLACK);
            set_cursor(filaMono-1,columnaMono);
            puts("\x18\x19\x22\x23\x24");//parte central de Donkey Kong

            set_color(WHITE, BLACK);
            set_cursor(filaMono-1, columnaMono);
            puts("\x25");//parte superior de Donkey Kong
            
      
}*/

/*
void moverBarril()
{
	   set_cursor(filaBarril, columnaBarril);
           puts("\x4");
           if(columnaBarril > 1){
              columnaBarril = columnaBarril - 1;
           }else{
	      columnaBarril = columnaMono - 3;
           }
           if(columnaBarril == columnaPlanta+1){
		set_color(WHITE, BLACK);
 	        set_cursor(filaPlanta, columnaPlanta+2);
                puts("\x29");//parte inferior derecha de la planta
           }else if(columnaBarril == columnaPlanta){
 		set_color(WHITE, BLACK);
 	        set_cursor(filaPlanta, columnaPlanta+1);
                puts("\x28");//parte inferior central de la planta              
           }else if(columnaBarril == columnaPlanta-1){
		set_color(WHITE, BLACK);
 	        set_cursor(filaPlanta, columnaPlanta);
                puts("\x26");//parte inferior izquierda de la planta
           }else if(columnaBarril == columna-1){
		set_color(WHITE, BLACK);
 	        set_cursor(fila, columna);
                puts("\x1\x2");
           }
          set_color(WHITE, BLACK);
          set_cursor(filaBarril,columnaBarril);
          puts("\x86");//barril
      
}*/

int perderConPlanta()
{
	//PERDER CONTRA LA PLANTA
       if((columna >= columnaPlanta && columna <= columnaPlanta+2 && fila >= filaPlanta-1 &&fila <= filaPlanta && contadorVidas > 1) || (columna+1 >= columnaPlanta && columna+1 <= columnaPlanta+2 && fila <= filaPlanta&& fila >= filaPlanta-1 && contadorVidas > 1)){
          set_cursor(filaPlanta, columnaPlanta);
          puts("\x4\x4\x4"); // limpia la planta parte inferior
          set_cursor(filaPlanta-1, columnaPlanta);
          puts("\x4\x4");  // limpia la planta parte central
          set_cursor(fila, columna);
          puts("\x4\x4"); // limpia a mario
          set_cursor(filaBarril, columnaBarril);
          puts("\x4"); // limpia el barril
          contadorVidas = contadorVidas - 1;
          set_color(WHITE, BLACK);
          set_cursor(28, 1);
          puts("\x1\x2");//se pinta mario.
	  delay_ms(45);
	  return 1;
         // goto reinicio;
       }else if((columna >= columnaPlanta && columna <= columnaPlanta+2 && fila >= filaPlanta-1 &&fila <= filaPlanta && contadorVidas == 1) || (columna+1 >= columnaPlanta && columna+1 <= columnaPlanta+2 && fila <= filaPlanta&& fila >= filaPlanta-1 && contadorVidas == 1)){
		clear_screen();
                set_color(RED, BLACK);
		set_cursor(15, 34);
                puts("PERDISTE :O");
	        return 2;
              //  goto salir;
       }
       return 3;
}

/*int perderConBarril()
{
	//PERDER CONTRA EL BARRIL
       if((columna == columnaBarril &&fila == filaBarril && contadorVidas > 1) || (columna+1 == columnaBarril && fila == filaBarril && contadorVidas > 1)){
          set_cursor(filaBarril, columnaBarril);
          puts("\x4"); //limpia el barril
          set_cursor(fila, columna);
          puts("\x4\x4"); // limpia a mario
          contadorVidas = contadorVidas - 1;
          set_color(WHITE, BLACK);
          set_cursor(28, 1);
          puts("\x1\x2");//se pinta mario.
	  delay_ms(45);
          return 1;
         // goto reinicio;
       }else if((columna == columnaBarril && fila == filaBarril && contadorVidas == 1) || (columna+1 == columnaBarril && fila == filaBarril && contadorVidas == 1) ){
		clear_screen();
                set_color(RED, BLACK);
		set_cursor(15, 34);
                puts("PERDISTE :O");
                return 2;
               // goto salir;
       }
       return 3;
}*/


int perderConMono()
{
	//PERDER CONTRA DONKEY KONG
       if((columna >= columnaMono && columna <= columnaMono+4 && fila >= filaMono-2 &&fila <= filaMono && contadorVidas > 1) || (columna+1 >= columnaMono && columna+1 <= columnaMono+4 && fila <= filaMono 		  && fila >= filaMono-2 && contadorVidas > 1)){
          set_cursor(fila, columna);
          puts("\x4\x4");
          set_cursor(filaBarril, columnaBarril);
          puts("\x4");
          set_cursor(filaMono, columnaMono);
          puts("\x4\x4\x4\x4");
          set_cursor(filaMono-1, columnaMono);
          puts("\x4\x4\x4\x4\x4");
          set_cursor(filaMono-1, columnaMono);
          puts("\x4");
          contadorVidas = contadorVidas - 1;
          set_color(WHITE, BLACK);
          set_cursor(28, 1);
          puts("\x1\x2");//se pinta mario.
	  delay_ms(45);
	  return 1;
          //goto reinicio;
       }else if((columna >= columnaMono && columna <= columnaMono+4 && fila >= filaMono-2 &&fila <= filaMono && contadorVidas == 1) || (columna+1 >= columnaMono && columna+1 <= columnaMono+4 && fila <= 			filaMono && fila >= filaMono-2 && contadorVidas == 1)){
		clear_screen();
                set_color(RED, BLACK);
		set_cursor(15, 34);
                puts("PERDISTE :O");
		return 2;
                //goto salir;
       }
       return 3;
}

int ganar()
{
	//GANAR RESCATANDO A LA PRINCESA
       if((columna >= 76 && columna <= 77 && fila >= 26 && fila <= 28 && contadorVidas >= 1) || (columna+1 >= 76 && columna+1 <= 77 && fila <= 28 && fila >= 26 && contadorVidas >= 1)){
		clear_screen();
                set_color(GREEN, BLACK);
		set_cursor(15, 34);
                puts("GANASTE :D ");
                return 1;
                //goto salir;
       }
       return 3;
}

int main() {
    clear_screen();


 reinicio: //cuando mario pierde una vida, se vuelve a pintar todo.
   // filaMono = 28;
   // columnaMono = 65;
    filaPlanta = 28;
    columnaPlanta = 30;
    filaNube1 = 20;
    columnaNube1 = 18;
    filaNube2 = 20;
    columnaNube2 = 50;
    filaBarril = 28;
    columnaBarril =  columnaMono-3;
    columna = 1;
    fila = 28;
   set_color(RED, BLACK);
    set_cursor(29,1); puts("\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5\x5");

    set_color(WHITE, BLACK);
    set_cursor(28,76);
    puts("\x6\x7\x8");//parte de abajo de la princesa
    set_color(WHITE, BLACK);
    set_cursor(27,76);
    puts("\x9\x11\x12"); //mitad del cuerpo de la princesa
    set_color(WHITE, BLACK);
    set_cursor(26,77);
    puts("\x13");//corona de la princesa
    set_color(WHITE, BLACK);
    set_cursor(filaMono, columnaMono);
    puts("\x14\x15\x16\x17");//parte inferior de Donkey Kong
    set_color(WHITE, BLACK);
    set_cursor(filaMono-1, columnaMono);
    puts("\x18\x19\x22\x23\x24");//parte central de Donkey Kong
    set_color(WHITE, BLACK);
    set_cursor(filaMono-1, columnaMono);
    puts("\x25");//parte superior de Donkey Kong
    set_color(WHITE, BLACK);
    set_cursor(filaPlanta, columnaPlanta);
    puts("\x26\x28\x29");//parte inferior de la planta
    set_color(WHITE, BLACK);
    set_cursor(filaPlanta-1, columnaPlanta);
    puts("\x2a\x2b");//parte Superior de la planta
    set_color(WHITE, BLACK);
    set_cursor(filaNube1 ,columnaNube1);
    puts("\x7f\x83\x84\x85");//parte Inferior de la nube 1
    set_color(WHITE, BLACK);
    set_cursor(filaNube1-1, columnaNube1);
    puts("\x80\x81\x82");//parte superior de la nube 1
    set_color(WHITE, BLACK);
    set_cursor(filaNube2,columnaNube2);
    puts("\x7f\x83\x84\x85");//parte Inferior de la nube 2
    set_color(WHITE, BLACK);
    set_cursor(filaNube2-1,columnaNube2);
    puts("\x80\x81\x82");//parte superior de la nube 2
    set_color(WHITE, BLACK);
    set_cursor(filaBarril,columnaBarril);
    puts("\x86");//barril
    set_color(WHITE, BLACK);
    set_cursor(28, 1);
    puts("\x1\x2");//se pinta mario.
    set_color(RED, BLACK);
    set_cursor(20, 76);
    if(contadorVidas == 3){
        puts("\x3\x3\x3");//se pintas las vidas
    }else if(contadorVidas == 2){
        puts("\x3\x3\x4");//se pintas las vidas
    }else if(contadorVidas == 1){
        puts("\x3\x4");//se pintas las vidas
    }
   set_color(WHITE, BLACK);
   // set_color(f, b);
    keypad_init();
    delay_ms(100);
    //delay_ms(m);
    while (1) {
        uint8_t k = keypad_getkey();

	//MOVIMIENTO HACIA LA DERECHA
        if(k == 2){
         // delay_ms(50);
          if(columna < 76){
            set_cursor(fila, columna);
            puts("\x4\x4");
            columna = columna + 1;
       	    set_cursor(fila,columna);
            puts("\x1\x2");
	   }
        }
        //MOVIMIENTO HACIA LA IZQUIERDA
        if(k == 1){
          //  delay_ms(50);
	  if(columna > 1){
            set_cursor(fila, columna);
            puts("\x4\x4");
            columna = columna - 1;
       	    set_cursor(fila,columna);
            puts("\x1\x2");
	   }
        }
        //SALTO NORMAL
        if(k == 8){
           // delay_ms(50);
            set_cursor(fila, columna);
            puts("\x4\x4");	  
            fila = fila - 5;
       	    set_cursor(fila,columna);
            puts("\x1\x2");
            delay_ms(caida);
            set_cursor(fila, columna);
            puts("\x4\x4");
            fila = fila + 5;
            set_cursor(fila, columna);
            puts("\x1\x2");
        }
        //SALTO CON MOVIMIENTO HACIA ADELANTE
        if(k == 4){
          //  delay_ms(50); 
           if(columna < 76){
            set_cursor(fila, columna);
            puts("\x4\x4");   
            fila = fila - 5;
            set_cursor(fila,columna);
            puts("\x1\x2");
            set_cursor(fila, columna);
            puts("\x4\x4");
            columna = columna + 7;
	    if(columna > 76){
            columna = 76;
	    set_cursor(fila,columna);
            }else{
       	    set_cursor(fila,columna);
            }
            puts("\x1\x2");
            delay_ms(caida);
            set_cursor(fila, columna);
            puts("\x4\x4");
            fila = fila + 5;
       	    set_cursor(fila,columna);
            puts("\x1\x2");
           }
        }
        //SALTO CON MOVIMIENTO HACIA ATRAS
        if(k == 3){
           //delay_ms(50);
	  if(columna > 1){
            set_cursor(fila, columna);
            puts("\x4\x4");
            fila = fila - 5;
            set_cursor(fila,columna);
            puts("\x1\x2");
            set_cursor(fila, columna);
            puts("\x4\x4");
            columna = columna - 7;
	    if(columna < 1){
            columna = 1;
	    set_cursor(fila,columna);
            }else{
       	    set_cursor(fila,columna);
            }
            puts("\x1\x2");
            delay_ms(caida);
            set_cursor(fila, columna);
            puts("\x4\x4");
            fila = fila + 5;
       	    set_cursor(fila,columna);
            puts("\x1\x2");
          }
        }

	moverMono();   
	moverBarril();
	if(perderConPlanta()==1){goto reinicio;}else if(perderConPlanta()==2){goto salir;}
        if(perderConBarril()==1){goto reinicio;}else if(perderConBarril()==2){goto salir;}
	if(perderConMono()==1){goto reinicio;}else if(perderConMono()==2){goto salir;}
	if(ganar()==1){goto salir;}
	delay_ms(45);
    }

    salir:
    return 0;
}
