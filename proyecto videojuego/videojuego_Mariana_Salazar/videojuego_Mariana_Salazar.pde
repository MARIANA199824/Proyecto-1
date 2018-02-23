//variables globales
int j1, j2;
int ancla=0;
float j1vida;
float j2vida;
float j1ataque;
float j2ataque;
int turno=0;
//defino el nombre de mi clase utilizando la palabra class y su nombre
class Personaje {
  //especifico sus atributos
  
  int dibujar;
  int valor;
 
 //especifico su método de construcción de clase
  Personaje(int dibujar_, int valor_){
    //los parámetros del método de construcción se asignan como los valores de mis atributos
    dibujar = dibujar_;
    valor = valor_;
  }
  //especifico su representación visual en el método display
  void display(){
    switch(dibujar){
      case 1:
       //montu
       //tocado 
        fill (#FFE200);
        ellipse(100,300,110,140);
        fill (#9B1500);
        rect(45, 280, 110, 25);
        //cuerpo
        fill (#FFF395);
        noStroke();
        ellipse(100,390,130,140);
        //collar
        fill (#3475F5);
        noStroke();
        ellipse(100,330,70,70);
        //cabeza
        fill (#FFF395);
        noStroke();
        ellipse(100,290,80,70);
        //ojos
        fill (#000000);
        ellipse(80,280,25,25);
        fill (#000000);
        ellipse(120,280,25,25);
        //medalla
        fill (#FFE200);
        ellipse(100,240,40,40);
        fill(#9B1500);
        triangle(85,300, 110, 300, 100, 340);
      break;
      
        case 2:
        //Badh
        //orejas
        fill (#080000);
        triangle(400, 267, 414,240,428, 267);
        fill (#080000);
        triangle(370, 267, 384,240,398, 267);
        //cuerpo
        fill (#080000);
        noStroke();
        ellipse(400,390,130,150);
        fill (#080000);
        ellipse(400,290,80,70);
        //ojos
        fill (#FFFFFF);
        ellipse(380,280,25,25);
        fill (#FFFFFF);
        ellipse(415,280,25,25);
      
       break;
      
       
      case 3:
     //Caous
      //cuerpo
        fill (#90663F);
        noStroke();
        ellipse(700,400,130,150);
        //COLLAR
        fill (#408143);
        noStroke();
        ellipse(700,330,50,50);
        //cABEZA
        fill (#90663F);
        noStroke();
        ellipse(700,300,70,70);
        //ojos
        fill (#B2FF03);
        ellipse(680,300,25,25);
        fill (#B2FF03);
        ellipse(720,300,25,25);
        
        break;
        
        case 4:
        //Huitzilopochtli
        fill (#0C9065);
        noStroke();
        ellipse(250,650,130,150);
        //cABEZA
        fill (#0C9065);
        noStroke();
        ellipse(250,550,70,70);
        //ojos
        fill (#224804);
        ellipse(270,550,25,25);
        fill (#224804);
        ellipse(230,550,25,25);
        fill (#FFDB0D);
        rect(220, 515, 59, 15);
        fill (#9B1500);
        rect(185, 630, 130, 15);
         fill (#9B1500);
         ellipse(250,650,30,40);
          fill (#FFDB0D);
         ellipse(250,499,35,35);
         break;
         
         case 5:
     //Marte
      //cuerpo
        fill (#FCD58C);
        noStroke();
        ellipse(530,650,130,150);
         fill (#93461F);
        ellipse(560,650,100,100);
         fill (#F0AA27);
        ellipse(560,650,80,80);
        //pelo
         fill (#D30606);
        rect(520,480, 15, 59);
         //cABEZA
        fill (#FCD58C);
        noStroke();
        ellipse(530,550,70,70);
        //ojos
        fill (#D30606);
        ellipse(510,550,25,25);
        fill (#D30606);
        ellipse(545,550,25,25);
      break;
    }    
  }  
}

//Aquí inicia mi sketch
//ahora tengo acceso a un nuevo tipo de datos que es el tipo Carta

Personaje Montu;
Personaje Badh;
Personaje Caous;
Personaje Huitzilopochtli;
Personaje Marte;

void setup(){
  size(800,800);
  //inicializo mis objetos con su método de construcción;
  Montu=new Personaje(1,1);//el primer numero llama al case donde dibujas el personaje 0== case1
  Badh= new Personaje(2,2);//el ultimo numero es la seleccion del keypressed
  Caous=new Personaje(3,3);
  Huitzilopochtli=new Personaje(4,4);
  Marte= new Personaje (5,5);
  }
  //FONDOS DE PANTALLA
void fondopresentacion()
{
 //fondobeife 
 fill (#FFC964);
rect(0, 0, 800, 800);  
 //fondo verde
 fill (#65B972);
rect(10, 10, 780, 780);
 //fondo cafe
 fill (#6C3905);
 rect(20, 20, 760, 760);
 //fondoazul
 fill (0);
rect(30, 30, 740, 740);
 
 //PERSONAJE DE PRESENTACION
 //PRIMER CIRCULO cafe
 fill (#6C3905);
 ellipse(410,280,500,480);
fill (#FFC964);
  ellipse(410,280,480,460);
//OVALODELFONDO
  fill (#6C3905);
 ellipse(410,350,320,590);
 
 noStroke();
//circulonegro
  fill (#3B6C3D);
 ellipse(410,350,300,570);
 
 //TRIANGULOSVERDES
  fill(#3B6C3D);
 triangle(320, 210, 320, 470, 70,320);
 triangle(500,220, 500, 470, 730,320);
//CIRCULO DE LOS TRIANGULOS
fill(#AF4C1B);
ellipse(260,355,200,200);
ellipse(560,355,200,200);
fill(#FFC964);
ellipse(70,320,70,70);
ellipse(730,320,70,70);

 //CUADROS CAFE IZQUIERA
 fill (#AF4C1B);
 rect(380, 70, 50, 300); 
 fill (#AF4C1B);
 rect(360, 90, 50, 300); 
 fill (#AF4C1B);
 rect(340, 120, 50, 300); 
 fill (#AF4C1B);
 rect(320, 160, 50, 300); 

 
 //CUADROS CAFE DERECHA
 fill (#AF4C1B);
 rect(400, 90, 50, 300); 
 fill (#AF4C1B);
 rect(420, 120, 50, 300); 
 fill (#AF4C1B);
 rect(440, 160, 50, 300); 
 fill (#AF4C1B);
 rect(460, 190, 50, 300); 
 
 
 //CARA AMARILLA
 fill (#6C3905);
 ellipse(410,350,350,350);
 
  fill (#FFC964);
 ellipse(410,350,335,335);
 //CARACUADRADO NEGRO
  fill (0);
 rect(300, 250, 220, 228);
   //LENGUA
 fill (#FCCD99);
 ellipse(410,420,70,80);
 fill(0);
 ellipse(410,420,5,70);
 //CARACUADRADO AZUL
 fill (#697FA5);
 rect(300, 223, 220, 180); 
 //DIENTES
 fill (#697FA5);
 ellipse(350,410,20,40);
 ellipse(370,410,20,40);
 ellipse(390,410,20,40);
 ellipse(410,410,20,40);
 ellipse(430,410,20,40);
 ellipse(450,410,20,40);
 ellipse(470,410,20,40);

 //DIENTES ABAJO
 fill (#697FA5);
 ellipse(350,470,20,40);
 ellipse(370,480,20,40);
 ellipse(390,490,20,40);
 ellipse(410,490,20,40);
 ellipse(430,490,20,40);
 ellipse(450,480,20,40);
 ellipse(470,470,20,40);


 //OJOS
 fill (random(255),random(255),random (255));
 ellipse(350,333,70,50);
 fill (random(255),random(255),random (255));
 ellipse(470,333,70,50);
 //NARIZ
 fill (0);
 ellipse(410,360,40,10);
 ellipse(410,360,10,30);
 //ADORNO ARETES1
  fill(#FFFFFF);
 rect(245, 550, 70, 40);
 
 fill(#AF4C1B);
 rect(235, 500, 90, 60);

 //aDRONO ARETES2
 fill(#FFFFFF);
 rect(510, 550, 70, 40);

fill(#AF4C1B);
 rect(235, 500, 90, 60);
 fill(#AF4C1B);
 rect(500, 500, 90, 60);
 //aretes1
 fill (#AF4C1B);
 ellipse(280, 450,150, 150);
 fill (#FFC964);
 ellipse(280, 450,130, 130);
  fill (#FFFFFF);
 ellipse(280, 450,100, 100);
 fill (#FFC964);
 ellipse(280, 620,95, 95);

 //aretes2
 fill (#AF4C1B);
 ellipse(540, 450,150, 150);
 fill (#FFC964);
 ellipse(540, 450,130, 130);
 fill (#FFFFFF);
 ellipse(540, 450,100, 100);
 fill (#FFC964);
 ellipse(543, 620,95, 95);
 //tocado
fill (#FFFFFF);
 rect(325, 200, 160, 50);
 
 fill (#AF4C1B);
 ellipse(500,240,100,100);
 fill (#FFFFFF);
 ellipse(500,240,70,70);
  
  fill (#AF4C1B);
  ellipse(320,240,100,100);
 fill (#FFFFFF);
 ellipse(320,240,70,70);
 //TRIANGULO TOCADO
 fill(#FFC964);
 triangle(470, 200, 350, 200, 405,80);

 //texto7
 fill (#3B6C3D);
 ellipse(410,730,700,70);
textSize(40);
fill(0);
text("Presione la tecla Z para iniciar", 120, 740); 


  
}
void fondoseleccion ()
{
  fill (#7DC492);
 rect(0, 0, 900, 900); 
 textSize(30);
 fill(#FFFFFF);
text("Jugador1 por favor selecione(a, s, d, f, g)", 100, 50); 
textSize(30);
 fill(#FFFFFF);
text("Jugador2 por favor selecione (q, w, e, r, t)", 100, 90); 
textSize(30);
 fill(#FFFFFF);
text("Dos dioses iguales no pueden enfrentarse)", 70, 130); 
   //letras

textSize(30);
fill(0);
text("a/q", 100, 500); 
text("s/w", 400, 500); 
text("d/e", 700, 500); 
text("f/r" ,250, 750); 
text("g/t", 530, 750); 


   //personajes
   Montu.display();
   Badh.display();
   Caous.display();
   Huitzilopochtli.display();
   Marte.display();
}

void fondoPelea(){
  {
int r = 0;
int g = 0;
int b = 0;
int ColoresChidos = 3;
for ( int i = 0; i< height; i ++)
{
stroke (i,g,b);
line(0,i,width,i);
text("Jugador1 ataca con  x ", 100, 90); 
text("Jugador2 ataca con  y ", 100,120); 
textSize(30);
}
  }

  
  
  
  //jugadorUno
 fill (#FFC964);
rect(200, 200, (j1vida)*2, 40); 
//jugador Dos
 fill (#FFC964);
rect(600, 200, (j2vida)*2, 40); 
 //Para que paren de morir
 if (j1vida<=0)
 {
  text ("JUEGO TERMINADO", 410,200); 
   
 }
 else
if (j2vida <= 0)
{
   text ("K.O", 200,200); 
}
 //paramostrar en pantalla los personjes
 //pushMatrix();
 //translate(100,100);
 if (j1==1)
 {
   Montu.display();
 }
 else if (j1==2)
 {
    Badh.display();
 }
 else if (j1==3)
 {
 Caous.display();
 }
 else if (j1 ==4)
 {
  Huitzilopochtli.display();
 }
 else if (j1==5)
 {
  Marte.display(); 
 }
//popMatrix ();
//personajes jugador dos
 //pushMatrix();
 //translate(400,400);
 if (j2==1)
 {
   Montu.display();
 }
 else if (j2==2)
 {
    Badh.display();
 }
 else if (j2==3)
 {
 Caous.display();
 }
 else if (j2 ==4)
 {
  Huitzilopochtli.display();
 }
 else if (j2==5)
 {
  Marte.display(); 
 }
//popMatrix ();
if(j1vida<=0)
{
  fill (#B589D1);
rect(0, 0, 900, 900); 


fill(0);
textSize(40);
text("PRESIONA M PARA VER EL GANADOR", 70,400);
}
if(j2vida<=0)
{
  fill (#B589D1);
rect(0, 0, 900, 900); 


fill(0);
textSize(40);
text("PRESIONA M PARA VER AL GANADOR", 70,400);
}
}

///
void fondoganador()
{
  if (j1vida<=0)
  {
    fill(255);
    textSize (60);
    text("GANO JUGADOR 1",230,250);
    fill(0);
    textSize(50);
    text("Presione 0 para regresar", 200,500);
  }
if (j2vida<=0)
  {
    fill(255);
    textSize (60);
    text("GANO JUGADOR 2",230,250);
    fill(0);
    textSize(50);
    text("Presione 0 para regresar", 200,500);
  }

}

//Aqui se asiganaran los valores de los jugadores a las letras
void seleccionJugadoruno (){
  if(keyPressed)
  {
  switch (key)
{
case 'a':
j1=1;
j1vida=100;
j1ataque=random(1,10);
break;

case 's':
j1=2;
j1vida=100;
j1ataque=random(1,10);
break;

case 'd':
j1=3;
j1vida=100;
j1ataque=random(1,10);
break;

case 'f':
j1=4;
j1vida=100;
j1ataque=random(1,10);
break;

case 5:
j1=5;
j1vida=100;
j1ataque=random(1,10);
break;
}
  }
}
void seleccionJugadordos (){
  if(keyPressed)
  {
  switch (key)
{
case 'q':
j2=1;
j2vida=100;
j2ataque=random(1,10 );
break;

case 'w':
j2=2;
j2vida=100;
j2ataque=random(1,10 );
break;

case 'e':
j2=3;
j2vida=100;
j2ataque=random(1,10 );
break;

case 'r':
j2=4;
j2vida=100;
j2ataque=random(1,10 );
break;

case 't':
j2=5;
j2vida=100;
j2ataque=random(1,10 );
break;
}
}
}
//aqui pelean con x y y
void keyPressed (){
 if (turno == 0&&ancla==2){
   if (key=='x'|| key == 'X')
   {
     j2vida = j2vida - j1ataque;
     println (j1vida);
     turno = 1;
   }
 } 
 if (turno == 1 &&ancla==2){
   if (key=='y'|| key == 'Y')
   {
     j1vida = j1vida - j2ataque;
     println (j2vida);
     turno = 0;
   }
 }  
}

void draw(){
  //pantalla
  if (ancla==0)
  {
    fondopresentacion();
    
    if(keyPressed && (key=='z'||key=='Z'))
    {
     ancla=1;
    }
  }
  if (ancla==1)
 {
   fondoseleccion();
   seleccionJugadoruno ();
   seleccionJugadordos ();
  
   if(j1!=0 && j2!=0)
   {
     ancla=2;
   }
 }
 
 if(ancla==2){
   fondoPelea();
   if (j1vida<=0||j2vida<=0)
   {
     if(key=='m'||key=='M')
     {
       ancla=3;
     }
   }
 }
   
   if(ancla==3){
     fondoganador();
     {
       if(keyPressed && (key=='0'))
       {
         fondopresentacion();
         ancla=0;
         j1=0;
         j2=0;
       }
     }
 }

//switch(dibujo)
//{
 // case 1:
  //montu.display();
//}



 
  
}
  