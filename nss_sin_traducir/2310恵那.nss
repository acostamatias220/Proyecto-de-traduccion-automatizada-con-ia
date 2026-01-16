
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2310恵那.nss_MAIN
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
		$GameName = "2320カゴメ5.nss";
	}else if($myRoute=="d"){
		CreateColorEX("絵色黒", 20000, "#000000");
		Fade("絵色黒", 2000, 1000, null, true);
		$GameName = "c2340恵那.nss";//★エンディングへ（d）
	}else{
		CreateColorEX("絵色黒", 20000, "#000000");
		Fade("絵色黒", 2000, 1000, null, true);
		$GameName = "c2340恵那.nss";//★エンディングへ（c）
	}
}

scene 2310恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1190">
////////////header////////////
//file name "2310恵那.nss"
//title "河原屋組の闇を暴け"
//previous "2301恵那.nss"

////////////footer////////////
//next "恵那" "2320カゴメアソビ5.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);



//◆場所：籠_内部
//	OnBG(10,"bg0802100籠_内部_通常");
//	FadeBG(0,true);

{	ClockPass(2315);}

	if($PreGameName=="2301恵那.nss"){
	Wait(2000);
	FadeDelete("上背景", 1000, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200010fje">
「ん…………あ…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200020fje">
「んん……ん、んんん……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 5000);

	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg0802100籠_内部_通常.jpg");
	SetShade("絵背景", HEAVY);

	FadeDelete("上背景", 1500, null, true);
WaitKey(200);
	FadeDelete("絵背景", 1500, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200030fje">
「あれ……ここ……は？」



//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200040ksr">
「籠っつってな」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200050ksr">
「カゴメアソビの、舞台だよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-50,@0,"bu双六a_通常_normal");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);
	SoundPlay("@xbgm21",0,450,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200060ksr">
「気付いたか」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@100,"bu恵那_哀愁_worry");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200070fje">
「――――ッ！？」

{	DeleteAllSt(200,true);}
{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200080ksr">
「無理するな。まだ頭、痛むだろ？」

{	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200090fje">
「う……うるさい！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200100fje">
「千秋を……千秋を、よくも……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//◆演出指定：アザナエルを構える

	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu双六a_銃構え");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200110ksr">
「いやいや、オレはなにもしてねぇぜ」

//	St("ML",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200120ksr">
「ただ、アザナエルを渡しただけ。
　撃ったのは、あいつの決断だ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200130fje">
「ふざけないで！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200140fje">
「あなたがいなかったら、千秋は――千秋は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200150ksr">
「死ななかった？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200160fje">
「――――ッ！！」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200170ksr">
「ずいぶん走らされて、おまけに途中で邪魔入って、オレは機嫌が悪ぃんだ。だからな、サクッと言うぞ」



{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200180ksr">
「おまえはこれから、死にます」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200190fje">
「…………ぇ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200200ksr">
「死ぬ」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200210ksr">
「昇天」

{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200220ksr">
「デッド！」

{	St("C",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200230ksr">
「デエエエエエエエエエエエス！！」

{	St("C",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200240ksr">
「わかる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2316);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200250fje">
「――どうして？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200260ksr">
「双一親分の命令だ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200270fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200280ksr">
「死にたくない？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200290fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200300ksr">
「後悔とか、ないのか？
　おまえのせいで、人が死んじゃったのに？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");//bu恵那_哀愁_cry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200310fje">
「――――ッ！！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200320ksr">
「おーおー、涙ぐんじゃって。可愛いねぇ」

{	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200330ksr">
「で、おまえ――
　なんかオレに、お願いすることあるんじゃねぇの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200340fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200350ksr">
「ん？　どうした？」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200360ksr">
「ほら、お願いの言葉が聞こえねぇぞ」


{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200370fje">
「……身体は……屈しても……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200380ksr">
「ん？　なんか言ったかァ？」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200390fje">
「心まで……悪には……屈しない……」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200400ksr">
「おいおい、今なんて――」




{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200410fje">
「あなたに、お願いするの？
　それとも――カメラの向こうの、双一親分？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200420ksr">
「……もちろん、決めるのは双一親分さ。
　オレはただ、この電話を受け取って――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200430fje">
「その芝居、いつまで続ける気？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200440ksr">
「……あ？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200450fje">
「河原屋組の組長が、いったい誰か。
　誰にもバレてないと思った？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2317);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200460ksr">
「へぇ……平次の娘は警察の真似事もするのか……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200470fje">
「探偵よ。あんなひとと一緒にしないで」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200480ksr">
「ほいじゃ、聞かせてもらいたいもんだな。
　その、探偵さんとやらの推理をな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
//	TextBoxDelete(150);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciライン_00_00", true, "ciライン_00_00z");
	Fade("絵マ*",0,0,null,true);
	CreateTextureSP("絵マ/絵背景", 100, -924, -432, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	SetShade("絵マ/絵背景", MEDIUM);
	CreateTextureSP("絵マ/絵立_normal", 120, 437,-30, "cg/bu/bu恵那_通常_normal.png");//C287,MR437,32
	CreateTextureSP("絵マ/絵立_pride", 120, 437,-30, "cg/bu/bu恵那_通常_pride.png");//C287,MR437,32
	Move("絵マ/絵*", 0, @100, @0, null, false);
	Fade("絵マ/*",0,0,null,true);

	Move("絵マ/絵*", 200, @-100, @0, Dxl3, false);
	Fade("絵マ*",200,1000,null,false);
	Fade("絵マ/絵背景",200,1000,null,false);
	Fade("絵マ/絵立_normal",200,1000,null,true);


	CreateMaskAXLEX("絵み", 800, 0, 0, "ciライン_00_01", true, "ciライン_00_01z");
	Fade("絵み*",0,0,null,true);
	CreateTextureSP("絵み/絵背景", 100, -100, -144, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	SetShade("絵み/絵背景", MEDIUM);
	CreateTextureSP("絵み/絵立_normal", 100, 62,160, "cg/bu/bu双六a_通常_normal.png");//ML62,-31
	CreateTextureSP("絵み/絵立_hard", 100, 62,160, "cg/bu/bu双六a_通常_hard.png");//ML62,-31
	CreateTextureSP("絵み/絵立_pride", 100, 62,160, "cg/bu/bu双六a_通常_pride.png");//ML62,-31
	Move("絵み/絵*", 0, @-100, @0, null, false);
	Fade("絵み/*",0,0,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	DeleteAllSt(200,false);}
//	St("C",700, @50,@0,"bu恵那_通常_normal");
//Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200490fje">
「賭けをしましょう」


{	Move("絵み/絵*", 200, @100, @0, Dxl3, false);
	Fade("絵み/絵背景",200,1000,null,false);
	Fade("絵み/絵立_normal",200,1000,null,true);
}
//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200500ksr">
「賭け？」

//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200510fje">
「これから私は、河原屋組の組長の正体を推理する。
　それが当たったら、無条件で銃を撃たせてちょうだい」

//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200520ksr">
「外れたら？」

{	Fade("絵マ/絵立_pride", 200, 1000, Dxl1, false);
	Fade("絵マ/絵立_normal", 200, 0, Axl2, true);
}
//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_pride");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200530fje">
「屈辱だけれども、頭を下げて、撃たせてもらうわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	Fade("絵み/絵立_hard", 200, 1000, Dxl1, false);
	Fade("絵み/絵立_normal", 200, 0, Axl2, true);
}
//	St("C",700, @0,@0,"bu双六a_通常_hard");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200540ksr">
「どうせ、撃つんじゃねぇか」

{	Fade("絵マ/絵立_normal", 200, 1000, Dxl1, false);
	Fade("絵マ/絵立_pride", 200, 0, Axl2, true);
}
//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200550fje">
「どうせ双一は、撃たせるつもりなんでしょ？」

{	Fade("絵み/絵立_pride", 200, 1000, Dxl1, false);
	Fade("絵み/絵立_hard", 200, 0, Axl2, true);
}
//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200560ksr">
「……流石名探偵。良い推理だよ」

//	St("C",700, @0,@0,"bu双六a_横向き_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200570ksr">
「おもしれえ。その賭け、乗った」

//	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200580fje">
「いいわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 2000, 0, null);

	Move("絵マ/絵*", 200, @100, @0, Dxl3, false);
	Fade("絵マ*",200,0,null,false);
	Fade("絵マ/*",200,0,null,false);
	Move("絵み/絵*", 200, @-100, @0, Dxl3, false);
	Fade("絵み*",200,0,null,false);
	Fade("絵み/*",200,0,null,true);

Delete("絵*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@50,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200590fje">
「富士見恵那の名推理――
　聞かせてあげようじゃないの！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteAllSt(200,true);}

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	SetShade("絵背景", MEDIUM);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]


{	St("C",19700, @0,@0,"fu恵那_一休_hard");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200600fje">
（逃げ道なんて、最初からない）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200610fje">
（これが最後の推理）

//	St("C",19700, @0,@0,"fu恵那_ハルヒ_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200620fje">
（きっと何の役にも立たない推理だけど――
　言いなりばっかりになって、たまるもんですかッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵背景", 200, null, false);
{	DeleteAllSt(200,true);}

	SoundPlay("@xbgm08_noint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200630fje">
「そもそもね、河原屋双一って言うのが嘘くさいのよ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200640fje">
「戦後、秋葉原の闇市を基盤にしてのし上がったヤクザ？」

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200650fje">
「じゃあ訊くけど、双一は何歳かしら？」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200660ksr">
「さあ。昭和の生まれとかは言ってたけど」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200670fje">
「終戦で二十歳なら、今年で８５よ。
　よくもまあ、河原屋組の切り盛り続けてられるわね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200680ksr">
「若い衆がしっかりしてるからな」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200690fje">
「自分で良く言うわよ……」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200700fje">
「でも、何故そこまでして公の場に姿を見せないの？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200710ksr">
//「こっちの世界は、嬢ちゃんが思う以上に物騒なのさ」
「そっちの世界は、嬢ちゃんが思う以上に物騒なのさ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200720fje">
「けど、河原屋組の組員ですら、大半は親分の姿を見たことがないって、もっぱらの噂じゃない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2318);}

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200730fje">
「命令は、必ずその電話越しに下される――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200740fje">
「河原屋組の領地は、他の組からも敬意をもって扱われる、一種の聖域って話を聞いたことがあるわ」

//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200750fje">
「そこまで執拗に自分の身を隠す必要が、果たして本当にあるのかしら」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200760ksr">
「何故双一親分は、人前に姿を現さない？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200770fje">
「答えは簡単よ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200780fje">
「河原屋双一は、既にこの世にいない」

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200790fje">
「ま、考えてみれば陳腐なトリックよ」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200800fje">
「戦後の闇社会にその名を轟かした河原屋双一。
　その名の下に守られてきた河原屋組の安寧」

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200810fje">
「しかし河原屋双一が命を失ってしまったら――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200820fje">
「そこで、貴方たちは考えた」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200830fje">
「河原屋双一を目立たない場所――携帯電話の向こう側へと隠し、限られた人間しか連絡を受けないようにする」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200840fje">
「一度それが印象づけられてしまえば、話は簡単よ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200850fje">
「あなたにかかってきた電話がそのまま親分の意思であり、あなたの発する言葉が親分の言葉になる」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200860fje">
「極端な話、双一自身が生きていようが生きていまいが関係ないわけよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200870fje">
「ねえ、双六」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200880fje">
「本当に、電話はかかってきているの？」


{	SetVolume("@xbgm*", 3000, 0, null);}

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200890ksr">
「ふふ……ふふふふ……」

{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200900ksr">
「ふははははははははははは！！」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200910ksr">
「いやあ……さすがは名探偵。
　富士見平次の娘だな」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200920ksr">
「ホレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//銃受け取る
	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	Shake("@StNameC/C*", 200, 0, 8, 0, 0, 300, Axl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200930fje">
「――っ！」

//左
{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);
	SoundPlay("@xbgm06",0,450,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200940ksr">
「弾は入ってる」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200950ksr">
「シリンダ回して、撃て」



{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200960fje">
「お願いしなくて良かったってことは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2319);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200970ksr">
「サービスだよ」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100200980ksr">
「半分当たりで、半分外れだ」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100200990fje">
「半分……？」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201000ksr">
「いやまあ、その話はいいじゃねぇか」

{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201010ksr">
「嬢ちゃんが平次のとっつぁんと同じく、悪に屈せぬ心を持ってるってのは、よーくわかったよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100201020fje">
「別に父さんは関係な――」




{	DeleteAllSt(200,true);}
//C
{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201030ksr">
「関係あるんだよ。わかんだろ？」







//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201040ksr">
「カゴメカゴメ……」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201050ksr">
「<RUBY text="シリンダ">運命</RUBY>回して<RUBY text="トリガー">決意</RUBY>を引いて、上手くいったらお慰み」

//	St("C",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201060ksr">
「おまえの本当の願いが、ひとつだけ叶う」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100201070fje">
「本当の……願い……」



{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201080ksr">
「選択肢は色々ある」

//	St("C",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201090ksr">
「オレが憎けりゃ、オレを殺せばいい。
　死にたくなけりゃ、死にたくないって願えばいい」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201100ksr">
「死んじまった人を生き返らせる――なんてのでもいい。
　その願いが、本当の願いならな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201110ksr">
「でも、所詮他人だろ？」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201120ksr">
「普通なら、自分の命の方が大切だろ？」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201130ksr">
「それが例え家族でも――
　愛し合い、共に生きていくことを誓った配偶者でも――」


{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/100201140fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);




//C

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201150ksr">
「１０年前の話だ――」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201160ksr">
「平次のとっつぁんは、トリガーが引けなかった」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201170ksr">
「籠の中の鳥は、飛べずに羽根を折っちまったんだ」


{	SetVolume("@xbgm*", 3000, 0, null);}

{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201180ksr">
「なあ、富士見恵那」


//	St("C",700, @0,@0,"bu双六a_横向き_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/100201190ksr">
「おまえの羽根は、まだついてるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);






	EndScene();
}
