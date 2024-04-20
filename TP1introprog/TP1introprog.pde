// Primer trabajo de intro programacion :)

PImage paisaje;

void setup(){
size(800,400);
background (204,214,224);
paisaje = loadImage("cactus.jpg");
}

void draw(){
  println(mouseX+"/"+mouseY);

 //cielo
 noStroke();
 fill(200,200,204);
 ellipse(492,125,400,50);

 fill(250,138,64); //naranja
rect(550,134,300,134);
fill (254,168,135,150); //rosita
ellipse(600,160,200,30);
ellipse(753,140,250,10);
ellipse(555,140,20,10);
ellipse(554,208,82,30);
ellipse(593,160,200,30);
ellipse(600,232,200,30);
ellipse(581,204,128,10);
ellipse(562,134,102,17);
fill(135,107,106); //violeta
rect(731,105,130,50);
ellipse(781,110,40,20);
fill(168,133,133); //violeta clr
ellipse(781,110,40,20);
fill(135,107,106); //violeta
ellipse(786,110,30,10);

//NUBE
fill(204,214,224); //celeste
rect(731,105,30,20);
fill(193,175,175); //violeta claro
ellipse(311+350,94,60,20);
ellipse(287+400,21,20,7);
ellipse(264+400,2,30,10);
fill(253,208,140);//amarillo
rect(740,215,73,4);
rect(720,200,80,4);
fill(253,208,140,50);//amarillo opacidad b
rect(720,190,80,4);
rect(710,198,80,4);
rect(710,198,80,4);
rect(704,205,80,4);
rect(710,207,80,4);
rect(710,194,80,4);
rect(710,198,80,4);
fill(253,208,163);//blanco luz
rect(710,197,90,2);
fill(192,157,148,150); //violeta blanco nube rara
rect(400,160,318,36);
fill(135,107,106,150); //violeta pero faded
rect(700,160,318,20);
fill(247,195,182); //Rosa nube cuadrada esa
quad(447,7,444,106,604,105,613,11);
ellipse(581,100,30,10);
fill(204,214,224,150); //celeste
triangle(493,32,542,80,592,43);
triangle(615,58,594,74,637,76);
rect(440,73,41,57);
rect(440,60,56,30);
ellipse(606,26,30,40);
fill(250,210,200); //Rosa brote psicotico
ellipse(581,79,30,10);
ellipse(581,105,30,10);
fill(247,195,182); //Rosa nube cuadrada esa 2
ellipse(561,63,30,10);
ellipse(590,77,30,10);
ellipse(581,100,30,10);
fill(192,157,148,150); //violeta blanco nube rara 2
rect(400,102,60,10);
ellipse(420,160,50,10);
ellipse(550,160,200,10);
ellipse(550,197,200,10);
fill(192,167,160,160);//violeta blanco la secuela
ellipse(550,197,200,5);
fill(255,50);
ellipse(550,187,200,5);
ellipse(550,162,200,5);
fill(135,107,106,100); //violeta pero faded
rect(450,30,30,5);
fill(204,214,224,150); //celeste
rect(420,95,10,10);
rect(435,95,10,10);
rect(450,95,10,10);
rect(432,110,50,10);
fill(135,107,106); //violeta malvado
ellipse(757,122,50,20);
ellipse(731,143,50,30);
fill(192,167,160,160);//violeta blanco la secuela
ellipse(733,145,30,20);
ellipse(771,133,30,10);
fill(135,107,106); //violeta malvado 2
ellipse(735,143,30,20);
ellipse(774,135,30,10);
fill(193,165,187); //me olvide el nombre
ellipse(421,80,37,9);
ellipse(604,95,34,10);
ellipse(448,198,122,12);
strokeWeight(1);


//SUELO
fill(179,139,122);
rect(400,238,800,238);

//TIERRA
stroke(111,66,45); 
fill(123,87,75); //marron 1
ellipse(703,317,41,18);
fill(119,76,63); // 2
ellipse(736,258,75,10);
fill(134,99,88); //3
ellipse(719,270,85,7);
fill(106,83,37); //4
ellipse(441,281,113,26);
fill(132,88,76); 
ellipse(685,292,70,16);
fill(104,71,43); 
ellipse(676,343,66,20);
fill(104,58,43); 
ellipse(666,365,46,7);
fill(121,74,59); 
ellipse(659,258,47,10);
fill(153,109,96); 
ellipse(675,310,94,27);


//MONTAÑas
noStroke();
fill(119,86,64); //verde no puedo mas
rect(394,232,458,19); 

//pastito A
fill(158,89,26);
quad (395,230,426,280,460,287,525,257);
stroke(48,24,7);
line(457,262, 441,303);
line(457,262, 441,303);
stroke(139,89,26);
line(534,265, 511,303);
line(501,250, 512,303);
line(521,273, 511,303);
line(484,265, 511,303);
line(492,265, 511,303);
line(552,265, 511,303);
line(515,265, 511,303);
line(543,265, 511,303);
line(529,265, 511,303);
line(495,265, 511,303);
line(519,265, 511,303);
line(564,285,576,260);
line(565,289,586,260);
line(584,285,593,260);
line(566,285,582,260);
line(651,285,660,263);
line(652,287,645,256);
line(651,285,628,245);
line(651,290,666,272);
line(585,280,587,260);
line(625,286,587,249);
line(603,286,587,256);
line(625,286,587,249);
line(615,286,598,249);
line(625,286,647,249);
line(625,286,668,249);
rect(386,233,427,5);

//malditos cactus
fill(92,45,30); 
ellipse(569,203,10,100);
ellipse(600,220,5,60);
ellipse(643,227,5,70);
ellipse(677,228,4,47);
ellipse(561,213,19,4);
ellipse(554,188,5,49);
ellipse(526,225,4,42);

//pasto rabioso!!!!!!!!!!!!!!!
stroke (93,72,55);
fill(182,118,66);
rect(406,233,2,26);
noStroke();
ellipse(439,283,28,38);
ellipse(527,233,2,18);
ellipse(637,209,4,30);
ellipse(710,246,3,19);
fill(201,136,84,100);
ellipse(406,272,9,66);
fill(182,127,82);
ellipse(411,264,4,31);
ellipse(460,281,4,30);
rect(404,227,1,10);
rect(396,279,29,42);
rect(432,229,1,10);
fill(46,49,36);
ellipse(737,275,27,22);
ellipse(619,265,27,21);
ellipse(767,292,36,28);
ellipse(564,265,29,30);
ellipse(544,324,20,31);
ellipse(789,265,31,21);
ellipse(619,265,28,21);
ellipse(693,289,18,23);

//PASTO relleno
stroke(1); 
line(635,246,648,256);
line(641,236,648,256);
line(654,246,648,256);
line(649,246,648,254);
line(668,246,648,257);
line(619,246,647,256);
line(658,225,648,256);
line(537,227,551,251);
line(540,218,551,248);
line(533,233,551,248);
line(552,219,551,248);
line(559,233,551,248); 
line(562,219,551,248);
line(533,233,551,248);
line(581,219,551,248);
line(625,285,615,260);

//cactus
stroke(56,61,47);
fill(133,125,104); //verde clarito
ellipse(176+400,316,50,82);
noStroke();
fill(219,145,58); //verde amarillento
ellipse(164+400,344,21,90);
ellipse(225+400,359,23,90);
fill(121,101,48); //verde vibrante
ellipse(721,402,85,90);
ellipse(195+400,336,45,50);
fill(133,125,104); //verde clarito
ellipse(729,324,48,71);
triangle(719,332,767,324,730,361);
ellipse(153+400,266,30,22);
triangle(583,290,565,260,550,277);
ellipse(94+400,348,60,82);
ellipse(415,360,38,97);
stroke(95,76,34);
ellipse(796,363,70,129);
ellipse(201+400,392,100,90);
fill(95,76,34); //verde oscuro
ellipse(795,342,100,90);
ellipse(476,373,40,70);
ellipse(408,350,40,40);
fill(66,62,53); //verde ultra oscuro
ellipse(129+400,354,40,40);
ellipse(89+400,402,40,40);
fill(100,83,46); //verde ultra oscuro
ellipse(212+400,309,18,23);
ellipse(52+400,348,21,40);
ellipse(51+400,403,21,40);
ellipse(263+400,391,16,40);
//fLORES
fill(208,39,77); //rosa flor
stroke (132,20,9);
ellipse(152+400,385,20,25);
ellipse(195+400,345,20,30);
ellipse(346+400,315,30,20);
ellipse(382+400,300,20,30);

fill(201,91,117); //ROSA CLARO
stroke (132,9,58);
ellipse(194+400,338,18,13);
ellipse(336+400,314,9,18);
ellipse(383+400,290,21,9);
ellipse(301+400,363,13,18);
ellipse(190+400,282,10,15);


//LINEARTT
noStroke();
fill(71,52,5); //verde no puedo mas
rect(458,363,5,38);
noStroke();
fill(132,120,105);
circle(486,363,2);
circle(486,376,8);
circle(474,361,9);
circle(470,379,6);
circle(483,353,5);
circle(781,363,16);
circle(765,339,7);
circle(486,363,5);
circle(792,323,9);
circle(800,344,17);
noStroke();
stroke(71,52,5); 
strokeWeight(2);
line(471,339,481,338);
line(458,362,471,338);
line(495,358,482,339);
line(497,389,494,353);
line(467,317,467,342);
line(482,309,470,316);
line(515,314,489,307);
line(763,372,746,332);
line(782,385,761,367);
line(712,352,705,318);
line(771,411,767,382);
noFill();
quad(559,249,573,281,542,279,538,265); 
quad(399,310,387,369,420,366,431,323);
quad(758,376,721,353,675,398,763,404);
fill(104,115,102);
quad(417,403,457,375,434,342,423,362);
quad(416,315,459,301,452,316,451,326);
quad(552,303,529,308,532,278,555,295);
quad(544,367,520,351,513,375,510,472);

//pinchos estos
noStroke();
fill(191,207,188);
quad(696,357,710,373,716,351,709,374);
quad(732,390,731,360,740,384,752,368);
quad(731,399,716,386,727,382,714,382);
quad(629,375,611,366,630,373,672,355);
quad(574,367,558,356,573,359,566,346);
quad(581,368,566,396,564,378,575,391);
quad(595,368,590,360,597,364,614,355);
quad(650,339,637,364,659,355,628,362);
quad(695,398,704,349,694,387,680,361);
quad(725,310,710,291,722,314,719,280);
quad(729,340,725,324,705,313,718,319);
strokeWeight(2);
stroke(191,207,188);
line(478,301,483,315);
line(463,310,472,325);
line(510,328,511,320);
line(490,301,483,315);
line(497,335,497,318);
line(501,347,509,336);
line(458,293,445,314);
line(520,346,515,336); 
line(448,293,445,314);
line(519,347,522,336);
line(427,368,439,348);
line(544,347,554,336);
line(403,338,412,314);
line(479,361,467,345);
line(578,304,576,314);
line(610,389,612,374);
line(533,299,527,305);
line(480,361,477,345);
line(585,304,576,314);
line(611,389,601,374);
line(525,299,528,305);
line(522,381,534,366);
line(578,304,576,314);
line(610,389,612,374);
line(539,270,548,279);
line(610,389,612,374);
line(539,270,548,279);
line(610,389,612,374);
line(539,270,548,279);

//Estrellita esa
noStroke();
fill(255);
circle (546,33,3);

 //referencia
 image(paisaje,0,0); 
}

//fin del trabajo xfin,,,
