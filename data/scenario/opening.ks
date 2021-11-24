*input_name
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[bg  storage="black.jpg"  time="100"  ]
[layopt  layer="message"  visible="false"  ]
[ptext  layer="1"  text="Introduce&nbsp;tu&nbsp;nombre"  size="30"  x="180"  y="180"  color="white"  ]
[edit  name="f.Player"  top="290"  left="320"  maxchars="20"  size="30"  height="50"  ]
[glink  clickse="02_b_006.ogg"  text="Confirmar"  target="*commit"  x="540"  y="285"  ]
[s  ]
*commit
[commit  name="f.Player"  ]
[cm  ]
[if  exp="f.Player==''"  ]
[jump  target="*input_name"  ]
[endif  ]
[freeimage  layer="1"  ]
[iscript  ]
$(".current_span").parent().css("text-align","center");
[endscript  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
[r  ]
Tu nombre es
[l  ]
[r  ]
“
[emb  exp="f.Player"  ]
”
[l  ]
[r  ]
¿Correcto?
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Sí"  storage="opening.ks"  target="*input_judge"  x="370"  y="380"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="opening.ks"  target="*input_name"  x="370"  y="440"  ]
[s  ]
*input_judge
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[iscript  ]
$(".current_span").parent().css("text-align","center");
[endscript  ]
[if  exp="f.Player=='まおう'||f.Player=='魔王'||f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
¡El nombre no está disponible!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
¡El nombre no está disponible!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='ゆうしゃ'||f.Player=='勇者'||f.Player=='ユウシャ'||f.Player=='yuusha'||f.Player=='ゆうしや'"  ]
[r  ]
¡El nombre no está disponible!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[jump  target="*opning"  ]
*opning
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[layopt  layer="message"  visible="true"  ]
[bg  storage="black.jpg"  time="100"  ]
[stopbgm  ]
[position  left="16"  top="16"  width="928"  height="608"  marginl="8"  margint="8"  marginr="8"  marginb="8"  ]
[font  size="30"  bold="false"  ]
De la nada,
[r  ]
escuchas la voz del Maestro...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Para triunfar debes comprender
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
la suma extensión de tu papel.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
El Héroe debe ser el vencedor,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
y con tu ayuda no cabrá temor.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Incluso el Rey Demonio
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
y su hechicería macabra
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
se postrarán ante tu sabiduría.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
¿Entiendes el peso de mis palabras?
[l  ]
[resetfont  ]
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Sí"  storage="battle.ks"  target="*battle_judge"  x="370"  y="510"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="title.ks"  target="*start"  x="370"  y="570"  ]
[s  ]
