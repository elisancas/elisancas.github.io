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
[glink  clickse="02_b_006.ogg"  target="*brave_use"  exp="tf.check=1"  text="Brave"  x="750"  y="510"  ]
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
[glink  clickse="02_b_006.ogg"  name="command1"  target="*brave_use"  exp="tf.check=2"  text="Archfiend"  x="320"  y="490"  layer="3"  ]
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
The Brave uses a Medicinal herb!
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveLifePoint=f.braveLifePoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
[chara_show  layer="1"  name="m_window"  top="445"  left="0"  time="0"  ]
The Brave recovered 50 HP!
[elsif  exp="tf.check==2"  ]
But the Archfiend’s HP is already full!
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
The Brave uses an Ether!
[r  ]
[p  ]
[if  exp="tf.check==1"  ]
[eval  exp="f.braveMagicPoint=f.braveMagicPoint+50"  ]
[freeimage  layer="3"  ]
[brave_status  ]
The Brave restores 50 MP!
[p  ]
[elsif  exp="tf.check==2"  ]
[freeimage  layer="1"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
The Archfiend restores 50 MP!
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
The Brave reads the DIE-ary of the Brave!
[p  ]
Muwahahahaha!
[l  ]
[r  ]
I'm the one and only, the mitee Brave!
[p  ]
The only one who can beat the Archfiend!
[l  ]
[r  ]
I must admit, I must be a genious.
[l  ]
[r  ]
I don' need any boring trainings or nothin.
[p  ]
Now, without even leveling,
[l  ]
[r  ]
and only one extra party member with me,
[l  ]
[r  ]
we'll storm the Archfiend's Castle!
[p  ]
What cud go wrong!
[l  ]
[r  ]
(Illegible signature starting with B)
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
The Brave reads the letter from the Master
[p  ]
My dear Brave...
[l  ]
[r  ]
Thou art in the habit of casting spells as it please thee,
[l  ]
[r  ]
wasting thine entire store of mana
[p  ]
This worries me...
[l  ]
[r  ]
—Thy Master
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
The Brave reads Magical Magus Monthly!
[p  ]
Featured Spell of the Month:
[p  ]
FIRE --Fire spell (30MP)
[l  ]
[r  ]
BLIZZARD --Ice spell (30MP)
[l  ]
[r  ]
SWITCH --Swap bodies (30MP)
[p  ]
HELLFIRE --Burning fire (50MP)
[l  ]
[r  ]
FREEZE --Absolute zero (50MP)
[p  ]
TIMEWARP--Time travel (100MP)
[l  ]
[r  ]
POSSESSION--Control opponent's mind (100MP)
[l  ]
[r  ]
HOLY--Light elemental spell (100MP)
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
The Brave reads the Book of Battlemasters!
[p  ]
The Secrets of Battle
[l  ]
[r  ]
This is the universal law of victory:
[p  ]
—Whoever Strikes First Wins!—
[l  ]
[r  ]
Attack thine enemy when unguarded,
[l  ]
[r  ]
and thou wilt gain another chance to act.
[p  ]
Hesitate not!
[l  ]
[r  ]
Attack the enemy afore his speech endeth!
[l  ]
[r  ]
—Thy Master
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
[glink  clickse="02_b_006.ogg"  target="*arcenemy_use"  exp="tf.check=1"  x="750"  y="510"  text="Archfiend"  ]
[wait  time="50"  ]
[s  ]
*arcenemy_select_tool2
[arcenemy_reset_window  ]
[arcenmy_action_command  ]
[wait  time="50"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="473"  left="295"  storage="arcenemy/2_battle/2_Window/sub_window.png"  ]
[image  layer="0"  name="brave_name"  page="fore"  visible="true"  top="476"  left="296"  storage="arcenemy/2_battle/9_SelectTool/select_cheage.png"  ]
[button  name="command1"  graphic="9_SelectTool/select_tool_arrow.png"  enterimg="9_SelectTool/select_tool_arrow_cursor.png"  clickse="01_b_008.ogg"  target="*arcenemy_select_tool"  x="330"  y="450"  ]
[glink  clickse="02_b_006.ogg"  name="command1"  text="Brave"  target="*arcenemy_use"  exp="tf.check=2"  x="320"  y="490"  ]
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
The Archfiend uses a Medicinal herb!
[r  ]
[if  exp="tf.check==1"  ]
But the Archfiend’s HP is already full!
[r  ]
[p  ]
[elsif  exp="tf.check==2"  ]
The Brave recovered 50 HP!
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
The Archfiend uses an Ether!
[r  ]
[if  exp="tf.check==1"  ]
[freeimage  layer="3"  ]
[eval  exp="f.deamonMagicPoint=f.deamonMagicPoint+50"  ]
The Archfiend restores 50 MP!
[r  ]
[p  ]
[arcenmy_status  ]
[elsif  exp="tf.check==2"  ]
The Brave restores 50 MP!
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
The secret of my weakness...
[l  ]
[r  ]
Is light elemental spells!
[p  ]
Light elemental spells can only be cast
[l  ]
[r  ]
by one with the body and soul
[l  ]
[r  ]
of a True Brave!
[p  ]
The Brave's party is yet unawares,
[l  ]
[r  ]
so I must keep this from them at all cost!
[l  ]
[r  ]
(The Archfiend’s signature)
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
Oh Lord! Please accept our apologies!
[l  ]
[r  ]
We, the Evil Elites, are defeated.
[p  ]
The Brave is undoubtedly a simple fool,
[p  ]
but his mage fellow named
[l  ]
[r  ]
「
[emb  exp="f.Player"  ]
」
[l  ]
[r  ]
must not be taken lightly.
[p  ]
The mage uses a spell called Possession
[p  ]
which enables the mage
[l  ]
[r  ]
to possess our minds and control us.
[p  ]
Even our mighty lord would be ruined,
[l  ]
[r  ]
once succumb to this spell.
[p  ]
Oh Lord, we pray thee take caution.
[l  ]
[r  ]
This will be our last service as Evil Elites...
[p  ]
P.S.
[l  ]
[r  ]
We only hope you are not already under the spell
[l  ]
[r  ]
when reading thi... (abruptly ends here)
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
The Archfiend reads the Archfiend in a Nutshell!
[p  ]
Three Fundamental Principles of Great Archfiend
[p  ]
1. An Archfiend Never Flees
[l  ]
[r  ]
Never even try to make an escape.
[l  ]
[r  ]
It is altogether too embarrassing as an archfiend.
[p  ]
2. An Archfiend is a True Friend.
[l  ]
[r  ]
You are able to use items on your opponent
[l  ]
[r  ]
but deign not to use restoratives on them.
[p  ]
3. An Archfiend Never Runs Out of MP
[l  ]
[r  ]
To run out of mana when about to cast a spell
[l  ]
[r  ]
would be a severe blow to your dignity.
[p  ]
Always make sure to take
[l  ]
[r  ]
2 Ethers with you when going into fighting.
[p  ]
[jump  storage="battle.ks"  target="*counter_brave"  ]
