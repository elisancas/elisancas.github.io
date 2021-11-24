*tool
[ignore  exp="tf.DrawFlag==1"  ]
[eval  exp="tf.DrawFlag=1"  ]
[clearfix  name="command1"  ]
[cm  ]
[clearstack  ]
[layopt  layer="message0"  visible="false"  ]
[action_command  ]
[wait  time="50"  ]
[tool_command  ]
[freeimage  layer="1"  ]
[eval  exp="tf.DrawFlag=0"  ]
[s  ]
[endignore  ]
*breve_select_tool
[brave_reset_window  ]
[clearfix  name="command1"  ]
[cm  ]
[clearstack  ]
[layopt  layer="message0"  visible="false"  ]
[action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="745"  storage="arcenemy/2_battle/9_SelectTool/select_tool_window.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*breve_select_tool2"  x="810"  y="450"  ]
[glink  clickse="02_b_006.ogg"  target="*brave_use"  exp="tf.check=1"  text="Héroe"  x="750"  y="510"  ]
[wait  time="50"  ]
[s  ]
*breve_select_tool2
[wait  time="100"  ]
[clearstack  ]
[clearfix  name="command1"  ]
[cm  ]
[action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*breve_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  target="*brave_use"  exp="tf.check=2"  text="Rey&nbsp;Demonio"  x="320"  y="490"  layer="3"  ]
[wait  time="50"  ]
[s  ]
*brave_use
[if  exp="tf.tool==1"  ]
[eval  exp="tf.tool=0"  ]
[jump  target="*brave_leaf"  ]
[elsif  exp="tf.tool==2"  ]
[eval  exp="tf.tool=0"  ]
[jump  target="*brave_ether"  ]
[endif  ]
*brave_leaf
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
El Héroe usa Hierba Medicinal.
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveLifePoint=f.braveLifePoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
[chara_show  layer="1"  name="m_window"  top="445"  left="0"  time="0"  ]
¡El Héroe recupera 50 PV!
[elsif  exp="tf.check==2"  ]
¡Pero el Rey Demonio tiene el PV al máximo!
[endif  ]
[eval  exp="tf.check=0"  ]
[eval  exp="f.braveLeaf=f.braveLeaf-1"  ]
[p  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_ether
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
El Héroe usa Éter.
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
¡El Héroe recupera 50 PM!
[p  ]
[elsif  exp="tf.check==2"  ]
[freeimage  layer="1"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
¡El Rey Demonio recupera 50 PM!
[p  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[eval  exp="f.braveEther=f.braveEther-1"  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_diary
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[freeimage  layer="2"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
El Héroe lee “Mi épico diario”.
[p  ]
¡JA, JA, JA!
[l  ]
[r  ]
¡Soy yo, el auténtico, el inigualable, el poderoso Héroe!
[p  ]
¡El único que puede derrotar al Rey Demonio!
[l  ]
[r  ]
Hay que admitir que soy todo un genio.
[l  ]
[r  ]
No necesito entrenar ni nada de ese rollo.
[p  ]
¡Vamos a asaltar el castillo del Rey Demonio
[l  ]
[r  ]
sin ganar ni un nivel 
[l  ]
[r  ]
y con un solo compañero de equipo!
[p  ]
¡Qué podría salir mal!
[l  ]
[r  ]
(Firma ilegible que empieza con H)
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_letter
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
El Héroe lee la carta del Maestro.
[p  ]
Querido Héroe.
[l  ]
[r  ]
¡Tienes la mala costumbre de usar la magia 
[l  ]
[r  ]
al tuntún, malgastando todo tu maná!
[p  ]
Me preocupa que se te acabará.
[l  ]
[r  ]
— El Maestro.
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_dummy
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
El Héroe lee la Revista Abracadabra.
[p  ]
Los hechizos del mes:
[p  ]
Fuego: Magia de fuego (30 PM)
[l  ]
[r  ]
Hielo: Magia de hielo (30 PM)
[l  ]
[r  ]
Intercambio: Intercambia cuerpos (30 MP)
[p  ]
Infierno: Fuego infernal (50 PM)
[l  ]
[r  ]
Helada: Frío glacial (50 PM)
[p  ]
Salto temporal: Viaja en el tiempo (100 PM)
[l  ]
[r  ]
Posesión: Controla al rival (100 PM)
[l  ]
[r  ]
Sanctus: Luz sagrada (100 PM)
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*brave_book
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
El Héroe lee “El manual del guerrero”.
[p  ]
Secretos del combate.
[l  ]
[r  ]
La victoria sigue un solo principio:
[p  ]
—¡Quien golpea primero, golpea dos veces!—
[l  ]
[r  ]
Su distracción juega en tu beneficio,
[l  ]
[r  ]
¡interrúmpele, se lo merece!
[p  ]
¡Ni te pares a pensarlo!
[l  ]
[r  ]
¡Dos oportunidades para atacarlo!
[l  ]
[r  ]
— El Maestro.
[p  ]
[jump  storage="battle.ks"  target="*counter_arcenemy"  ]
*arcenemy_tool
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[arcenemy_tool_command  ]
[s  ]
*arcenemy_select_tool
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="745"  storage="arcenemy/2_battle/9_SelectTool/select_tool_window.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool2"  x="810"  y="450"  ]
[glink  clickse="02_b_006.ogg"  target="*arcenemy_use"  exp="tf.check=1"  x="750"  y="510"  text="Rey&nbsp;Demonio"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_select_tool2
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  text="Héroe"  target="*arcenemy_use"  exp="tf.check=2"  x="320"  y="490"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_use
[freeimage  layer="1"  ]
[if  exp="tf.arcenemy_tool==1"  ]
[eval  exp="tf.arcenemy_tool=0"  ]
[jump  target="*arcenemy_leaf"  ]
[elsif  exp="tf.arcenemy_tool==2"  ]
[eval  exp="tf.arcenemy_tool=0"  ]
[jump  target="*arcenemy_ether"  ]
[endif  ]
*arcenemy_leaf
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
El Rey Demonio usa Hierba Medicinal.
[r  ]
[if  exp="tf.check==1"  ]
¡Pero el Rey Demonio tiene el PV al máximo!
[r  ]
[p  ]
[elsif  exp="tf.check==2"  ]
¡El Héroe recupera 50 PV!
[r  ]
[p  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[cm  ]
[eval  exp="f.daemonLeaf=f.daemonLeaf-1"  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_ether
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
[eval  exp="f.daemonEther=f.daemonEther-1"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[playse  storage="12_b_034.ogg"  loop="false"  ]
EL Rey Demonio usa un Éter.
[r  ]
[if  exp="tf.check==1"  ]
[freeimage  layer="3"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
¡El Rey Demonio recupera 50 PM!
[r  ]
[p  ]
[arcenmy_status  ]
[elsif  exp="tf.check==2"  ]
¡El Héroe recupera 50 PM!
[r  ]
[p  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[endif  ]
[eval  exp="tf.check=0"  ]
[cm  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_diary
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
La clave para derrotarme...
[l  ]
[r  ]
¡es magia de elemento luz!
[p  ]
Pero esta magia solo la puede usar
[l  ]
[r  ]
alguien que sea un Héroe 
[l  ]
[r  ]
en cuerpo y alma.
[p  ]
Aún no se han dado cuenta,
[l  ]
[r  ]
¡y me aseguraré de que nunca lo hagan!
[l  ]
[r  ]
(Firmado: Rey Demonio)
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_letter
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[layopt  layer="message0"  visible="true"  ]
[freeimage  layer="0"  ]
¡Oh, gran rey! ¡Le ruego que nos perdone!
[l  ]
[r  ]
Nos han derrotado. La Élite del Mal ha caído.
[p  ]
El Héroe es un cabeza hueca, sin duda alguna,
[p  ]
pero la magia de su acompañante,
[l  ]
[r  ]
「
[emb  exp="f.Player"  ]
」
[l  ]
[r  ]
no se debe subestimar.
[p  ]
Usa un hechizo llamado “posesión”
[p  ]
que le permite entrar en nuestra mente
[l  ]
[r  ]
y controlarnos.
[p  ]
Sucumbir al poder de esta magia
[l  ]
[r  ]
sería el fin incluso para usted, su majestad.
[p  ]
Rogamos que sea precavido.
[l  ]
[r  ]
Este ha sido el último servicio de vuestra Élite...
[p  ]
P.D.
[l  ]
[r  ]
Solo podemos rezar para que no estéis 
[l  ]
[r  ]
bajo su control cuando leáis est- (termina abruptamente).
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
*arcenemy_dummy
[clearfix  name="command1"  ]
[clearfix  name="brave_name"  ]
[cm  ]
[chara_new  name="m_window"  storage="arcenemy/2_battle/2_Window/frame.png"  width="1024"  height="315"  jname="window"  ]
[chara_show  layer="2"  name="m_window"  top="445"  left="0"  time="1"  ]
[freeimage  layer="0"  ]
[layopt  layer="message0"  visible="true"  ]
El Rey Demonio lee “El Demonomicón”.
[p  ]
Los tres fundamentos de un Rey Demonio:
[p  ]
1. El Rey Demonio nunca huye.
[l  ]
[r  ]
Que ni se te ocurra. Queda feo,
[l  ]
[r  ]
y da vergüenza hasta pensarlo.
[p  ]
2. El Rey Demonio es galante.
[l  ]
[r  ]
Puedes usar objetos en tu oponente,
[l  ]
[r  ]
pero te abstendrás de curarles.
[p  ]
3. El Rey Demonio nunca se queda sin PM.
[l  ]
[r  ]
Que te falte maná al tratar de usar magia
[l  ]
[r  ]
sería una puñalada en toda la dignidad.
[p  ]
Asegúrate de que siempre llevas 
[l  ]
[r  ]
2 Éteres contigo antes de luchar.
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
