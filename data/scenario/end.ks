*end
[jump  target="*hint"  ]
[jump  target="*hint"  ]
*trueend
[stopbgm  ]
[playbgm  storage="05_game_maoudamashii_9_jingle05.ogg"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Héroe: ¡POR FIN! Lo he... ¡lo he logrado!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡OYE!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡Deja de esconderte y ven aquí!
[l  ]
[chara_mod  name="yuusha"  face="normal"  time="0"  ]
[keyframe  name="animation1"  ]
[frame  p="100%"  x="-571"  ]
[endkeyframe  ]
[chara_show  layer="4"  name="player"  wait="true"  top="320"  left="1124"  ]
[chara_mod  name="player"  face="done"  time="0"  ]
[keyframe  name="animation2"  ]
[frame  p="100%"  x="-130"  ]
[endkeyframe  ]
[kanim  name="yuusha"  keyframe="animation2"  time="2000"  ]
[kanim  name="player"  layer="3"  keyframe="animation1"  time="2000"  ]
[wa  ]
[cm  ]
[chara_mod  name="player"  face="normal"  time="0"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
Héroe: ¡Bien hecho!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Usaste Posesión 
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
para controlarlo durante la batalla, ¿cierto?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡Lo has clavado!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¿Qué?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¿Que la lié al
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
usar Intercambio?
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡Bah, detalles, detalles!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Nos lo hemos cargado, ¿no?
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ya no hay nada que temer,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
ni siquiera al Rey Demonio,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡porque os tengo a tu magia y a ti!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡Mejores amigos para siempre!, ¿a que sí?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¡JA, JA, JA!
[p  ]
[cm  ]
[freeimage  layer="4"  ]
[freeimage  layer="3"  ]
[freeimage  layer="2"  ]
[freeimage  layer="1"  ]
[freeimage  layer="0"  ]
[bg  storage="black.jpg"  time="400"  ]
[wait  time="500"  ]
[jump  storage="staff.ks"  target="*staffroll"  ]
*hint
[eval  exp="f.deadcounter=f.deadcounter+1"  ]
[if  exp="f.hollyFlag==1"  ]
De la nada, 
[r  ]
escuchas la voz del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Sanctus borrará la villanía
[l  ]
[r  ]
cuando cuerpo y alma
[l  ]
[r  ]
estén en armonía.
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Examínate a conciencia, amigo mío.
[l  ]
[r  ]
En este cuerpo, ¿quién dicta el albedrío?
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.ChangeDoneFlag==1"  ]
De la nada, 
[l  ]
[r  ]
escuchas la voz del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Al Rey Demonio no has vencido, 
[l  ]
[r  ]
pues su cuerpo no has destruido.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint>0"  ]
De la nada, 
[l  ]
[r  ]
escuchas la voz del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Para vencer a este enemigo,
[l  ]
[r  ]
usa sus objetos
[p  ]
o la muerte será tu abrigo.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint==0"  ]
De la nada, 
[l  ]
[r  ]
escuchas la voz del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Un éter te devolverá maná,
[l  ]
[r  ]
y la magia a ti responderá.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
De la nada, 
[l  ]
[r  ]
escuchas la voz del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Lee “El manual del guerrero”,
[l  ]
[r  ]
vislumbra el camino verdadero. 
[p  ]
[jump  storage="initialize.ks"  ]
