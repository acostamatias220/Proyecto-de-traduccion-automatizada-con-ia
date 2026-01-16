
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2310ノーコ.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName = "2311ノーコ.nss";
	}else{
		CreateColorSP("絵色黒", 20000, "#000000");
		DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

		$GameName = "d2311ノーコ.nss";
	}
}

scene 2310ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="190">
////////////header////////////
//file name "2310ノーコ.nss"
//title "フウリのいばしょ"
//previous "2301似鳥_ノーコ.nss"

////////////footer////////////
//next "ノーコ"（"flkagome4" = false） "d2311ノーコ.nss"
//next "ノーコ" "2311ノーコ.nss"

////////////body////////////

//あきゅん「演出："d2311ノーコ.nss"との繋ぎがあるので何か変更したら言ってけろ」

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2310);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null,true);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(200);

	SoundPlay("@xbgm26",0,450,true);

	SetVolume("SE01", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @30,@0,"buノーコb_幽霊_sad");
	Move("@StNameC/C*", 200, @-30, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100010nko">
「フウリ――フウリ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100020nko">
「でてきて、おねがい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想：2233沙紅羅_似鳥_ノーコ_フウリ.nss

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色１", 20000, "#FFFFFF");
	Fade("絵色１", 100, 1000, null, true);

	ClockDelete(0,true);
	ClockTime(2310);

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);
	DeleteAllSt(0,false);
	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",0,true);

	Fade("絵色１", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="綿抜フウリ（富士見平次）" src="voice/23/100100030wff">
「しばらくケガの治療で地元に戻るとさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想：2235沙紅羅_似鳥_ノーコ.nss

//	CreateSE("SE01","se擬音_フラッシュバック");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色１", 100, 1000, null, true);

	DeleteAllSt(0,false);
	St("C",700, @0,@0,"bu貫太_通常_shout");
	FadeSt("C",0,true);

	Fade("絵色１", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/23/100100040okt">
「そいつがフウリだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想：2240沙紅羅_恵那_似鳥_ノーコ.nss
//	CreateSE("SE01","se擬音_フラッシュバック");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色１", 100, 1000, null, true);

//◆場所：半田明神_男坂
	OnBG(10,"bg0107200秋葉原_遠景_閉店");
	FadeBG(0,true);
	DeleteAllSt(0,false);
	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",0,true);

	Fade("絵色１", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100100050fje">
「病院に行くって約束したのに！
　なんで父さんがアザナエル回収して――」

{	TextBoxDelete(150);
	Fade("絵色１", 100, 1000, null, true);

	ClockPass(2310);

	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);
	DeleteSt("C",0,true);
	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",0,true);
	Fade("絵色１", 300, 0, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100060nko">
「フウリが、ばけだぬきなら」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100070nko">
「あのとき、もじゃもじゃにばけてたら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100080nko">
「アザナエルを、てにしてる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @30,@0,"buノーコb_幽霊_sad");
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);

	SetVolume("SE01", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100090nko">
「フウリにも、ねがいがある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100100nko">
「あいたくて、でもあえなかった、おだかんた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100110nko">
「もしかしたら――もしかしたら――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100120nko">
「そのまま、アザナエルをつかって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @30,@0,"buノーコb_幽霊_sad");
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);

	SetVolume("SE01", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100130nko">
「フウリ！　フウリ！」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100140nko">
「いない？　いないの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100150nko">
「どこ？　フウリはどこに――」

{	St("C",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100160nko">
「すごい、ちのあと」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100170nko">
「でも、からだは、ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100180nko">
「けががなおったのは、ほんとう」

{	St("C",700, @30,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/100100190nko">
「ということは、やっぱり――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「演出：いやいや、さすがにこの切替で音量下がるのは無しで」

//	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,true);

	EndScene();
}
