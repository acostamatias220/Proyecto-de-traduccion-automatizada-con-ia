
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1950沙紅羅_似鳥.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "2000沙紅羅.nss";
	}else{
		$GameName = "2000似鳥.nss";
	}
//	$GameCircle=false;

}

scene 1950沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="980">
////////////header////////////
//file name "1950沙紅羅_似鳥.nss"
//title "念願のどーじんしを手に入れたぞ！"
//previous "1949沙紅羅.nss"
//previous "1940似鳥.nss"


////////////footer////////////
//next "沙紅羅" "2000沙紅羅.nss"
//next "似鳥" "2000似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1950);}

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,1000,0,1000,null,true);

//使用箇所001：先んじて定義================================

	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100b", 120, Center, -450, "cg/bg/bg0302100あにのあな_店内_通常.jpg");
	Zoom("カメラ１/絵背景100b", 0, 5500, 5500, null, true);
	SetShade("カメラ１/絵背景100b", MIDEUM);
	Request("カメラ１/絵背景100b", Smoothing);

	CreateTextureEX("カメラ１/絵背景100", 500, -587, -1699, "cg/bu/l/st沙紅羅_通常_normal_x01.png");
	Request("カメラ１/絵背景100", Smoothing);

//==========================================================



//おがみ：後で本番素材を確認　サクラの顔が見えないように調整
	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);
	CreateColorSP("絵色黒幕２", 1500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 550, 550, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);
//	CreateColorSP("絵色黒幕３", 1500, "BLACK");
//	DrawTransition("絵色黒幕３", 0, 300, 300, 500, null, "cg/data/circle_10_00_1.png", true);
//	Fade("絵色黒幕３", 0, 500, null, true);

	OnBG(10,"bg0302200あにのあな_店内_停電");
	FadeBG(0,true);

//◆場所：あにのあな_店内_停電

	Fade("上背景", 1000, 0, null, true);
	FadeDelete("上背景", 0, null, true);

	if($CharaName=="沙紅羅"){
	St("ML",2001, @-200,@0,"fu沙紅羅_通常_normal");
	}else{
	St("ML",700, @-200,@0,"bu沙紅羅_通常_normal");
	}

	SetFrequency("SE01", 2000, 300, null);
	SetVolumeEX("SE*", 2000, 0, null);


	Move("@StNameML/ML*", 500, @200, @0, Dxl1, false);
	FadeSt("ML",400,true);

	Wait(1000);

	DeleteAllSt(200,true);


	SoundPlay("@xbgm24",0,450,true);


	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_normal");
	}
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400010nki">
「また、お前かよ」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_shout");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400020skr">
「そのどーじんし、『のーこんとろーる』の１１！」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_rage");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	}
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400030skr">
「アタシが譲り受ける！」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_normal");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400040nki">
「なんでもらえるつもりになってるんだよ」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_pinch");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400050nki">
「これ、高いぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_hard");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400060skr">
「わかってる！」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_hard");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400070nki">
「いくら持ってる？」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_hard");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400080skr">
「現金はない！」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_sad");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400090nki">
「ない？」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_shout");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400100skr">
「その代わり！
　すごく、大事な物を持ってきた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1951);}

	TextBoxDelete(150);

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_hard");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400110nki">
「なんだよ？」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_shout");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400120skr">
「貴重な物だ！」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_shout");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400130nki">
「だからなんだって訊いてんだよ！」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_sad");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400140skr">
「…………」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_頭かき_think");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	}
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400150skr">
「……わかんねー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_worry");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400160nki">
「はい？」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_頭かき_sigh");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400170skr">
「袋の中に入ってて……中味は……知らない」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_shock");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400180nki">
「えー？」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_worry");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400190nki">
「ちょっとちょっと！　それ、おかしくないですか？」

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_shout");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400200skr">
「しょうがねーだろ！
　袋の中、見ねーって約束したんだから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1952);}


	TextBoxDelete(150);

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_normal");
	}
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400210nki">
「アンタさ、さっきも散々、階段で殴っといてさ」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_hard");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400220nki">
「オレの超激レアな同人誌を、わけのわかんない袋の中味と交換しろって？」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_angry");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400230nki">
「オレを舐めてる？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400240nki">
「なあ、舐めてない？」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_rage");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400250nki">
「舐めてませんか？　ねえ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1953);}


	SetVolumeEX("@xbgm*", 1000, 0, null);

	Wait(500);

//◆ＳＥ：足音
	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,700,0,1000,null,true);

{
	if($CharaName=="沙紅羅"){
	St("ML",2001, @0,@0,"fu沙紅羅_通常_think");
	}else{
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	}
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400260skr">
「――――――ッ！」

{
	Move("@StNameML/ML*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_shock");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400270nki">
「ぇ……？」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400280skr">
「――――――！！」

{
	if($CharaName=="沙紅羅"){
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	}else{
	St("MR",2001, @-100,@0,"fu似鳥_通常_shock");
	}
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400290nki">
「な……なんだよ。こっち来んな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


{	ClockPass(1954);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);
//◆場所：あにのあな_店内

//◆演出指定：電気が点く
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/bg/bg0302100あにのあな_店内_通常.jpg");
	Fade("絵背景100", 0, 800, null, true);
	Wait(20);
	Fade("絵背景100", 0, 0, null, true);
	Wait(200);
	Fade("絵背景100", 0, 800, null, true);
	Fade("絵色黒幕*", 500, 0, null, false);
	Delete("絵停電色");
	Wait(20);
	Fade("絵背景100", 0, 0, null, true);
	Wait(20);
	Fade("絵背景100", 0, 800, null, true);
	Wait(20);
	Fade("絵背景100", 0, 0, null, true);
	Wait(20);
	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景100", 300, 1000, null, true);
	OnBG(10,"bg0302100あにのあな_店内_通常");
	FadeBG(0,true);
	Delete("絵背景100");

	Wait(200);
	Delete("絵色黒幕*");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/500400300e13">
「あ、灯り」

{
	if($CharaName=="沙紅羅"){
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	}else{
	St("C",2001, @0,@0,"fu似鳥_通常_shock");
	}
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400310nki">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//おがみ：β調整済み

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreatePlainSP("揺用", 2005);


//◆演出指定：虎部にアップして「がおーん！」とかＳＥ入れて初めて見た沙紅羅の印象を強調
//使用箇所001：動作
	Fade("カメラ１/絵背景100b", 0, 1000, null, false);
	Fade("カメラ１/絵背景100", 0, 1000, null, true);

	MoveCamera("@カメラ１", 0, 200, -500, 500, null, true);

	CreateSE("SE01","se動物_トラ_鳴き声");

	SoundPlay("@xbgm07",0,450,true);

	MoveFTP3("@カメラ１/*", 9000, 8, 12);

	Fade("揺用", 1000, 0, null, false);
	MoveCamera("@カメラ１", 2000, 300, -700, 500, AxlDxl, true);

	MoveCamera("@カメラ１", 1000, 200, 350, 500, AxlDxl, true);
	MoveCamera("@カメラ１", 1000, -350, 520, 500, AxlDxl, false);

	Wait(500);
	MusicStart("SE01",0,1500,0,1000,null,false);
	Wait(1300);
	MoveCamera("@カメラ１", 2000, 0, -1300, 500, AxlDxl, true);

	Delete("揺用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400320nki">
「ちょ……なにそのカッコ……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400330nki">
「ずいぶん、気合入って……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1955);}


	TextBoxDelete(150);

	CreateSE("SE00","se戦闘_風切り音10");
	CreateSE("SE01","se擬音_ギャグ_ドーン");
	CreateSE("SE02","se動物_ネコ_鳴き声02");
	MusicStart("SE02",0,1000,0,1000,null,false);


//◆ＥＶ："ev/ev1950沙紅羅が似鳥に土下座.txt"
	CreateTextureEX("絵背景100", 2000, Center, 400, "cg/ev/ev1950沙紅羅が似鳥に土下座a.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2500, 2500, null, true);

	MoveCamera("@カメラ１", 500, 0, 500, 500, Axl1, false);
	Move("絵背景100", 500, @0, @50, Axl1, false);

	Wait(200);

	MusicStart("SE00",0,1200,0,1000,null,false);
	Fade("絵背景100", 300, 1000, null, false);
	Move("絵背景100", 2000, @0, 0, Axl2, false);
	Zoom("絵背景100", 2000, 1000, 1000, Axl2, true);

	MusicStart("SE01",0,1200,0,1000,null,false);
	Zoom("絵背景100", 200, 1100, 1100, Dxl2, true);
	Zoom("絵背景100", 200, 1000, 1000, Axl2, true);


	Wait(800);

	MoveFTP3stop();
	Delete("カメラ１/*");
	Delete("カメラ１");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400340skr">
「お願いだッ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400350nki">
「土下座ああッ！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400360skr">
「アタシに――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400370skr">
「アタシにその同人誌、譲ってください！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400380skr">
「この通り、お願いします！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400390skr">
「お願いしますッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400400nki">
「え、いやいやあのその、そういうのやめて！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400410nki">
「やめてくださいって、ねえ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);

	Fade("絵背景100", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400420skr">
「話――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400430skr">
「……聞いてくれ」

　土下座したまま、沙紅羅が口を開く。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1956);}

	SoundPlay("@xbgm25",0,450,true);


	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 2000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400440skr">
「アタシ……弟がいるんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400450skr">
「でもアタシ、いい姉ちゃんじゃなくて。
　小さい頃から悪ガキで、弟を泣かせてばっか」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400460skr">
「両親は共働きで、家を空けっぱなし。
　アタシが遊び歩くから、弟は留守番係で」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400470skr">
「勉強のできないアタシは、当然バカ学校入るだろ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400480skr">
「オチコボレ同士のちっちゃなグループで、単車を乗り回すようになったんだ。いわゆる暴走族よ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400490skr">
「裏では皆、時代遅れだってバカにしたけど、んなのはハッキリ言ってどうでもいい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400500skr">
「バカでマヌケでオチコボレなアタシたちが、夜風を切ってバイクを走らせるだけで、何もかも忘れられた」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400510skr">
「バカやって、バカやって、バカやって……
　毎日がすごく楽しかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵色100", 100, 1000, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg2601100電柱_見上げ_通常.jpg");
	Fade("絵色100", 500, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400520skr">
「そんなアタシたちを、親も教師も諦めきっていて、文句を言うヤツなんて誰もいなかった」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400530skr">
「でも、ひとりだけ、いたんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400540skr">
「弟だけが、アタシに反対したんだよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400550skr">
「腹立った」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400560skr">
「腹立ったから、殴って、蹴って、ボコボコにした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400570skr">
「それでも弟は、バカみたいにアタシに反対して。
　だからある日、言ってやったんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400580skr">
「テメーのことなんて、大ッ嫌いだ――って」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400590skr">
「それから……アイツはアタシと全然話さなくなった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1957);}

	TextBoxDelete(150);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg0201100秋葉原駅_正面_通常.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400600skr">
「アタシがそのまま地元でバカを続けてるうちに、弟は進学校に入って、上京した」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400610skr">
「こんぴゅーたの会社で働いてるって
　名前は……なんて言ったっけな？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400620skr">
「じぼく……ナントカ？　まあいいや」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400630skr">
「アタシがその話を聞いたのは、つい１週間前」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400640skr">
「弟が心臓の病気で倒れてからだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1401100泰然堂大学病院_正面_通常.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Delete("絵背景200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400650skr">
「知らない電話番号は、弟の新しい携帯から、アタシへの初めての連絡だった」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400660skr">
「連日の残業が祟って、緊急入院。
　いつ容体が急変しても、おかしくないらしい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400670skr">
「弟がな、電話口で、死にそうな声で囁くんだよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400680skr">
「――どうしても、手に入れて欲しい本がある
　――だから、自分の代わりに買いに行って欲しい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400690skr">
「アタシはな、オタクくせぇものは好きじゃねぇ。
　アニメとかマンガとかそういうの、大ッ嫌いだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400700skr">
「そのことくらい、アイツだって知ってる」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400710skr">
「でも、アイツは、アタシに連絡してきた」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400720skr">
「アタシしか、頼めるヤツがいないんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1958);}


	TextBoxDelete(150);
	CreateTextureEX("絵背景200L", 120, -1024, -576, "cg/ev/l/ev1950沙紅羅が似鳥に土下座b_l.jpg");

	Move("絵背景200L", 30000, -912, -576, null, false);
	Fade("絵背景200L", 1000, 1000, null, true);
	Delete("絵背景100");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400730skr">
「断れるか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400740skr">
「アタシは、あいつの、ねーちゃんだぞ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400750skr">
「だから約束したんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400760skr">
「年が明けるまでに、絶対、アイツの元にどーじんしをとどけてやる！　――って」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400770skr">
「それで、アタシは、秋葉原に来た」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400780skr">
「ツーバードとかいうヤツの、同人誌を買うために」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景200", 120, Center, Middle, "cg/ev/ev1950沙紅羅が似鳥に土下座b.jpg");
	Fade("絵背景200", 500, 1000, null, true);
	Delete("絵背景200L");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400790skr">
「頼む！　正直、金はない。
　無茶な話だってのもわかってる！　わかってるけど――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400800skr">
「その本、譲ってください！！
　お願いします！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400810nki">
「…………ちぇっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400820nki">
「泣き落としかよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400830skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400840skr">
「……すんません！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400850nki">
「あのな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400860nki">
「オレ、そういう話大ッ嫌いなんだわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1959);}


	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	Fade("絵背景200", 500, 0, null, true);
	Delete("絵背景200");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400870skr">
「――――ッ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400880nki">
「でも、まあ、すごいものなんだろ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400890nki">
「この袋の中味、興味あるから」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400900nki">
「だから、交換な」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400910skr">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);

	CreateSE("SE10","se動作_バッグ渡す");

	CreateTextureEX("絵演物袋", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物袋", 0, @0, @120, null, true);

	Fade("絵演物袋", 300, 1000, null, false);
	Move("絵演物袋", 300, @0, @-120, Dxl2, true);

	Wait(100);

	MusicStart("SE10",0,700,0,1000,null,false);
	Zoom("絵演物袋", 300, 800, 800, null, false);
	FadeDelete("絵演物袋", 300, null, true);

	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",3000,200,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400920nki">
「もらってくから」

{	DeleteAllSt(200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400930skr">
「あ――あの！」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400940nki">
「来んな！」

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400950nki">
「そんな汚ない顔、見たくないし」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/500400960nki">
「鼻水とか、拭えよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("C",700, @0,@50,"bu沙紅羅_通常_cry");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400970skr">
「あ……うん、はい！　あの……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/500400980skr">
「ありがとうございましたッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 1800, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(300);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);


	EndScene();
}
