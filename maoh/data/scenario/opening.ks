*input_name
[cm  ]
[clearfix  ]
[freeimage  layer="1"  ]
[bg  storage="black.jpg"  time="100"  ]
[layopt  layer="message"  visible="false"  ]
[ptext  layer="1"  text="Enter_a_name"  size="30"  x="180"  y="180"  color="white"  ]
[edit  name="f.Player"  top="290"  left="320"  maxchars="20"  size="30"  height="50"  ]
[glink  clickse="02_b_006.ogg"  text="Confirm"  target="*commit"  x="540"  y="285"  ]
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
The name you entered is
[l  ]
[r  ]
“
[emb  exp="f.Player"  ]
”
[l  ]
[r  ]
Is that correct?
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Yes"  storage="opening.ks"  target="*input_judge"  x="370"  y="380"  ]
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
That name is not available!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='マオウ'||f.Player=='maou'"  ]
[layopt  layer="message"  visible="true"  ]
[r  ]
[r  ]
That name is not available!
[l  ]
[r  ]
[jump  target="*input_name"  ]
[endif  ]
[if  exp="f.Player=='ゆうしゃ'||f.Player=='勇者'||f.Player=='ユウシャ'||f.Player=='yuusha'||f.Player=='ゆうしや'"  ]
[r  ]
That name is not available!
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
From out of nowhere
[r  ]
the voice of the Master sounds...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Know thy role, good fellow,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
that is key to thy success.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Thou must aid the True Brave, that he may prevail.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Art thou willing? Be not afeared,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
inside thee there is wisdom - use it to conquer
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
the evil that awaiteth ye both.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Archfiend he may be, but fall he shall.
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Understand thee the weight of my words?
[l  ]
[resetfont  ]
[playse  storage="03_b_051.ogg"  loop="false"  ]
[glink  clickse="02_b_006.ogg"  text="Yes"  storage="battle.ks"  target="*battle_judge"  x="370"  y="510"  ]
[glink  clickse="02_b_006.ogg"  text="No"  storage="title.ks"  target="*start"  x="370"  y="570"  ]
[s  ]
