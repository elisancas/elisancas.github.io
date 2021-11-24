*end
[jump  target="*hint"  ]
[jump  target="*hint"  ]
*trueend
[stopbgm  ]
[playbgm  storage="05_game_maoudamashii_9_jingle05.ogg"  ]
[chara_mod  name="yuusha"  face="done"  time="0"  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Brave: Yess! I finally...made it!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Hey!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Stop hidin' and get out here!
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
Brave: Well done!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
You used Possession
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
and controlled him during the battle, right?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Flippin' great job!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
What?
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Did I muddy things up
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
by casting Switch on us?
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ah, don't sweat the details!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
We did him for good, didn't we?
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
There's nothin' more to fear,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
especially not the archfiend,
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
'cause I have you and your Possession spell!
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Best of friends forever, right!
[l  ]
[r  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ha ha ha!!
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
From out of nowhere
[r  ]
the voice of the Master sounds...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
The Brave may only cast Holy
[l  ]
[r  ]
when his body and spirit
[l  ]
[r  ]
are truly one.
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Ponder full deep, my friend
[l  ]
[r  ]
on what manner of being thou art.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.ChangeDoneFlag==1"  ]
From out of nowhere
[l  ]
[r  ]
the voice of the Master sounds...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
To defeat the Archfiend
[l  ]
[r  ]
thou must its flesh destroy!
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint>0"  ]
From out of nowhere
[l  ]
[r  ]
the voice of the Master sounds...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
If thou art to defeat the Archfiend,
[l  ]
[r  ]
partake of his items,
[p  ]
else wilt ye perish.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
[if  exp="tf.SurpriseAttckDoneFlag==1&&f.braveMagicPoint==0"  ]
From out of nowhere
[l  ]
[r  ]
the voice of the Master sounds...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
To cast a spell
[l  ]
[r  ]
restore thy mana with Ether.
[p  ]
[jump  storage="initialize.ks"  ]
[endif  ]
From out of nowhere
[l  ]
[r  ]
the voice of the Master sounds...
[p  ]
[playse  storage="01_b_008.ogg"  loop="false"  ]
Read of the Book of Battlemasters
[l  ]
[r  ]
to find thy purpose.
[p  ]
[jump  storage="initialize.ks"  ]
