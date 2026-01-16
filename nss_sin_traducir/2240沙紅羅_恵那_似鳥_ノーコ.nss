
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2240沙紅羅_恵那_似鳥_ノーコ.nss_MAIN
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
	$GameName = "2250カゴメ4.nss";
	//$GameName = "2250沙紅羅_恵那_似鳥_ノーコ.nss";
}

scene 2240沙紅羅_恵那_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1730">
////////////header////////////
//file name "2240沙紅羅_恵那_似鳥_ノーコ.nss"
//title "三人寄れば！"
//previous "2235沙紅羅_似鳥_ノーコ.nss"
//previous "2230恵那.nss"

////////////footer////////////
//next "沙紅羅" "2250沙紅羅_恵那_似鳥_ノーコ.nss"
//next "恵那" "2250沙紅羅_恵那_似鳥_ノーコ.nss"
//next "似鳥" "2250沙紅羅_恵那_似鳥_ノーコ.nss"
//next "ノーコ" "2250沙紅羅_恵那_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_男坂
	OnBG(10,"bg0107200秋葉原_遠景_閉店");
	FadeBG(0,true);

	SoundPlay("@xbgm32",0,450,true);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg0107200秋葉原_遠景_閉店.jpg");

	if($PreGameName=="2235沙紅羅_似鳥_ノーコ.nss"||$PreGameName=="2230恵那.nss"){
	St("C",700, @0,@500,"bu恵那_ハルヒ_shout");
	Move("絵背景", 0, @0, -450, null, true);
	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", false);
	FadeSt("C",200,false);
	Move("絵背景", 400, @0, -650, Dxl2, false);
	Move("@StNameC/C*", 400, @0, @-500, Dxl2, true);
	}else{
	St("C",700, @0,@500,"bu恵那_ハルヒ_shout");
	Move("絵背景", 0, @0, -450, null, true);
	FadeSt("C",0,false);
	Move("絵背景", 0, @0, -650, Dxl2, false);
	Move("@StNameC/C*", 0, @0, @-500, Dxl2, true);
	FadeDelete("上背景", 0, null, true);

//あきゅん「演出：スクリーン希望場所」

	}

{	ClockPass(2240);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200010fje">
「さっきテレビに出てた、ふたりじゃない！！」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200020nko">
「だれ？」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200030fje">
「私の名前は富士見恵那！
　秋葉原の名探偵よ！」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200040nko">
「めいたんてい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200050fje">
「ここで会ったが１００年目！
　あなたがアザナエルを使ったのはわかってるの！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200060fje">
「大人しく返しなさい！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200070nko">
「もう、ない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200080fje">
「ないですって！？　いったいどこに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200090nki">
「さっき警官に渡したよ。なあ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200100nko">
「うん。もじゃもじゃに」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200110fje">
「もじゃもじゃ？」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 5600);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200120fje">
「もじゃもじゃ……もじゃもじゃ……
　ってまさか――父さん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	AgainSt("C",700, @0,@0,"bu恵那_一休_shy");
	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200130fje">
「病院に行くって約束したのに！
　なんで父さんがアザナエル回収して――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200140nki">
「父さん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200150nko">
「おやこ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200160fje">
「な、なによ！？　親子で悪い？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2241);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200170fje">
{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
「っていうか……あれ？
　あなたたち、テレビでケンカしてなかった？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200180skr">
「いわゆるひとつの逆ザヤってヤツだよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200190nko">
「もとサヤ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200200skr">
「あー、うんうん。それそれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200210fje">
「なんか……頭、混乱してきた……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200220skr">
「んん？　名探偵も悩むのか？」

{	CreateSE("SE01","se擬音_ギャグ_ずずい");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,false);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200230fje">
「うるさい！　アンタなに？　なんなのよその格好！？
　昭和の時代にタイムスリップ！？」

{	CreateSE("SE01","se戦闘_刃物構える");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("ML",700, @-30,@50,"bu沙紅羅_木刀_rage");
	Move("@StNameML/ML*", 200, @30, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200240skr">
「ナンダ、コラァ！？
　百野殺駆ヘッド、月夜乃沙紅羅をバカにすんのかァ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200250nki">
「まあまあ、ふたりとも……」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200260nki">
「それよりほら、そろそろ半田明神が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);


{	ClockPass(2242);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：半田明神_鳥居_ペンキ
	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, Center, 0, "cg/bg/bg0602211半田明神_鳥居_ペンキ.jpg");
	Fade("絵背景", 300, 1000, null, true);



	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

	Wait(600);


	Move("絵背景", 3500, @0, -780, AxlDxl, true);

	CreateSE("SE10","se擬音_ギャグ_寒い風");
	MusicStart("SE10",0,1000,0,1000,null,false);




	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200270skr">
「…………」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200280nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200290fje">
「…………」

{	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",5000,400,0,1000,null,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200300skr">
「……ひでえな」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200310nki">
「ひどい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200320fje">
「なにがあったの……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200330nko">
「わたしのせい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200340nko">
「アザナエルのたまをとりにきたとき、ペイントだんをうたれたので、よけたら……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200350fje">
「ペイント弾？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200360nko">
「カレーのたま。インドじんがよういした」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200370skr">
「みそブーが撃ったのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200380nko">
「はい」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200390skr">
「はぁ……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200400skr">
「ったく、しゃーねーなー！
　弟分の尻くらい、きっちり拭ってやっか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景");

{	ClockPass(2243);}


	SetVolumeEX("SE*", 2000, 0, null);


//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);
	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200410skr">
「ここも……ひでぇ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200420nki">
「ああ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200430nko">
「………………」

{	DeleteAllSt(200,false);
	St("L",700, @-100,@0,"buみそa_通常_pride");
	Move("@StNameL/L*", 200, @100, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200440mso">
「あ！」

{	St("R",700, @100,@0,"buブーa_通常_shout");
	Move("@StNameR/R*", 200, @-100, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200450buu">
「いた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",700, @0,@0,"buみそa_通常_happy");
	St("R",700, @0,@0,"buブーa_通常_happy");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200460mso">
「姐さああああああああああん」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200470buu">
「姐さああああああああああん」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200460mso">
「姐さああああああああああん」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/22/400200470buu">
//「姐さああああああああああん」

</PRE>
	SetText();
	AddText(1,"「姐さああああああああああん」","みそ","22/400200460mso",false,false,1000);
	AddText(2,"「姐さああああああああああん」","ブー","22/400200470buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);
	St("C",700, @0,@100,"bu沙紅羅_木刀_rage");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Axl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Axl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200480skr">
「ちぇすとッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(100);
	DeleteAllSt(100,true);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆演出指定：木刀振る
	CreateTextureEX("EF100", 2000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	Fade("EF100", 100, 1000, null, false);
	Zoom("EF100", 100, 1000, 1000, Dxl2, true);
	Zoom("EF100", 300, 5000, 5000, Axl3, false);
	FadeF4("EF100", 300, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");

//おがみ：ＳＥ：がんっ！！
	CreateSE("SE00","se擬音_ギャグ_頭打つ");
	MusicStart("SE00",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("L",700, @0,@0,"buみそa_通常_cry");
	Shake("@StNameL/L*", 400, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @0, @100, Dxl1, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200490mso">
「うぬ！」

//おがみ：ＳＥ：がんっ！！
{	CreateSE("SE00","se擬音_ギャグ_頭打つ");
	MusicStart("SE00",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_cry");
	Shake("@StNameR/R*", 400, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @0, @100, Dxl1, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200500buu">
「ぎゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200510skr">
「てめーらのせいで、神社中が真っ黄色じゃねーか！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@50,"buみそa_通常_pinch");
	Move("@StNameL/L*", 200, @0, @-50, Dxl1, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200520mso">
「いや、でもそれは、コイツが逃げるから！」

{	St("R",700, @0,@50,"buブーa_通常_pinch");
	Move("@StNameR/R*", 200, @0, @-50, Dxl1, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200530buu">
「そうだそうだこいつがみんなわり――え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2244);}

	TextBoxDelete(150);
	DeleteAllSt(150,true);

//おがみ：β要演出箇所：優先度Ａ　曲とめる演出
	SetVolumeEX("@xbgm*", 500, 0, null);
	SetVolumeEX("SE*", 500, 0, null);

	Wait(100);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",150,true);

	Wait(500);
	WaitKey(500);

//おがみ：β要演出箇所：優先度Ａ　曲とうとつに再生
	DeleteAllSt(100,true);

	SoundPlay("@xbgm03",0,450,true);

	St("L",700, @0,@0,"buみそa_通常_angry");
	St("R",700, @0,@0,"buブーa_通常_angry");
	Shake("@StNameR/R*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameL/L*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);


/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200540mso">
「でたああああああああああ」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200550buu">
「でたああああああああああ」
*/



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200540mso">
「でたああああああああああ」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/22/400200550buu">
//「でたああああああああああ」

</PRE>
	SetText();
	AddText(1,"「でたああああああああああ」","みそ","22/400200540mso",false,false,1000);
	AddText(2,"「でたああああああああああ」","ブー","22/400200550buu",true,true,2000);
	TypeBeginD();//―――――――――――――――――――――――――――

{	St("L",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200560mso">
「こんどこそ！」

{	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200570buu">
「ブッ殺す！」

//◆ＳＥ：キリキリキリ
{	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@50,"buノーコa_カッター_pinch");
	Move("@StNameC/C*", 400, @0, @-50, Dxl1, false);
	FadeSt("C",400,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200580nko">
「…………」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200590skr">
「待ておまえら、コイツはもう――」

{	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 500, 0, null);

	St("C",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200600nki">
「すまなかった！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm12",0,450,true);

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);
//おがみ：ＳＥ：土下座のおと　勢いよく地面に手とひざをつく
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);


	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　割り込みかけた沙紅羅より一歩早く、似鳥が間に挟まると、石畳に頭を擦りつける。

{
	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200610nko">
「にとり……」

{	DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200620nki">
「オレが、コイツに向き合えなかったから！
　だから、ここがこんなことに……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200630mso">
「え……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200640buu">
「おまえ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	WaitKey(1000);
//◆ＳＥ：どかっばきっがすっ！！
	CreateSE("SE01","se戦闘_殴打連続01");
	MusicStart("SE01",0,700,0,1000,null,true);

	SoundPlay("@xbgm07_noint",0,450,true);


	CreatePlainSP("揺用", 2005);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 12, 18, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

	SetVolumeEX("SE01", 500, 500, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@50,"buみそa_通常_angry");
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200650mso">
「わかってんなら最初っからそうしやがれッ！　でいっ！」

{	Move("@StNameML/ML*", 200, @0, @50, Axl1, false);
	DeleteAllSt(150,false);
	CreatePlainSP("揺用", 600);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	St("MR",700, @0,@50,"buブーa_通常_angry");
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200660buu">
「ってかパチ屋でおまえに会ってから！
　オレたちは、オレたちはああ――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 200, @0, @50, Dxl1, false);
	DeleteAllSt(150,false);

	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 12, 18, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);

	WaitKey(300);

	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200670nki">
「いでッ！　イデデデデでッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200680nki">
「悪かった！　悪かったってば！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200690skr">
「おいみそブー。謝ってんだからそのくらいにしてやれ」

{	DeleteAllSt(200,false);
	SetVolumeEX("SE*", 1000, 0, null);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200700mso">
「え？　でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	DeleteAllSt(150,true);

//おがみ：β要演出箇所：優先度Ａ　BGMとめる演出いれたい

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#CC3322");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/l/buノーコa_カッター_smile_x01.png");
	Zoom("絵窓/絵演立絵", 0, 500, 500, null, true);
	Move("絵窓/絵演立絵",0, @500, @150, null, true);
	SetBlur("絵窓/絵演立絵", true, 2, 500, 50, false);

	CreateTextureEX("絵背景枠01", 10000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 10000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 500, @-500, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

	Wait(500);

	SetVolumeEX("@xbgm*", 100, 0, null);

	Move("絵窓/絵演立絵", 150, @0, @150, Dxl1, false);
	Zoom("絵窓/絵演立絵", 150, 1000, 1000, Dxl1, true);

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,800,0,1800,null,false);

	CreateEffect("ネガポジ", 2500, 0, 0, 1024, 576, "NegaPosi");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200710nko">
「それいじょうしたらコロス」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2245);}

	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 5500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

//	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("ネガポジ");

	CutInLineStop02();
	Delete("絵背景枠*");

	St("L",700, @0,@0,"buみそa_通常_fear");
	St("R",700, @0,@0,"buブーa_通常_cry");
	FadeSt("L",0,false);
	FadeSt("R",0,true);

	FadeDelete("絵色100", 200, null, true);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200720mso">
「すんませんっした！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400200730buu">
「すんませんっした！！」
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400200720mso">
「すんませんっした！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/22/400200730buu">
//「すんませんっした！！」

</PRE>
	SetText();
	AddText(1,"「すんませんっした！！」","みそ","22/400200720mso",false,false,1000);
	AddText(2,"「すんませんっした！！」","ブー","22/400200730buu",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//マスク準備
//	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
//	SetAlias("絵マスク","絵マスク");
	CreateMaskAXLEX("絵マスク", 6000, 0, 0, "ciスラッシュ_05_01", false, "ciスラッシュ_05_01z");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミヅハ_フラット_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, @0, null, true);
	Move("絵マスクLine", 0, 1024, @0, null, true);
	Move("絵マスク/絵演立絵", 0, 612, 200, null, true);
	Fade("絵マスクLine", 0, 1000, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

//イン動作
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスクLine", 200, 0, @0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 520, middle, Dxl1, true);

//	CreateSE("SE10","seガヤ_半田明神01_l");
//	MusicStart("SE10",1500,600,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200740mzh">
「おう！　恵那！　恵那ではないか！」

{	St("L",700, @50,@0,"bu恵那_通常_happy");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200750fje">
「あ、ミヅハちゃん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,false);

//アウト動作
	Move("絵マスクLine", 200, 1024, @0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, true);
	Delete("@絵マスク*");

	SoundPlay("@xbgm13",0,450,true);

	Wait(200);

{	St("MR",700, @90,@0,"buミヅハ_通常_sigh");
	Move("@StNameMR/MR*", 400, @-90, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200760mzh">
「フウリは？　フウリはどうなった！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200770fje">
「あ、うん。彼女はなんとか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200780mzh">
「助かったのか！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200790fje">
「フウリさんの友達のタヌキが現れて、傷を治してくれたの」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200800mzh">
「そ……そうか！　よかった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200820mzh">
「しかし……そうか。ずいぶんと強運じゃのう。
　まさかそのようなタヌキが、すぐ側にいるとは……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200830fje">
「言われてみれば……アレ？　確かに」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200840fje">
「なにか、陰謀の匂いが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("ML",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200850nko">
「ミヅハ、さっきはごめん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200860nko">
「ともだちなのに、わたしは、あなたを――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200870mzh">
「うむ、気にするでない！
　過ちを許すのもまた、友達の役目じゃろう？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200880nko">
「ミヅハ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400200890mzh">
「おぬしと似鳥が結ばれるところをテレビで見たぞ。
　心から、祝福しよう！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_shy");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400200900nko">
「ありがとう……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400200910nki">
「どうも……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200920skr">
「ほーら、言ったとおりだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2246);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200930skr">
「やり直しは、絶対にきく――」

{	DeleteAllSt(200,true);
	SetVolumeEX("SE*", 5000, 0, null);
	SetVolumeEX("@xbgm*", 5000, 0, null);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400200940kms">
「ふ……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400200950kms">
「ふふふ……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400200960kms">
「ふふふふふ……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400200970skr">
「ん？　なんだぁ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400200980fje">
「この声……星さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//おがみ：β要演出箇所：優先度Ａ　ここ一体　歌門星をカットで表示する

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu歌門_通常_pride.png");
	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu歌門_威圧_shout.png");
	Request("絵窓/絵演立絵*", Smoothing);
	Move("絵窓/絵演立絵*", 0, @0, @0, null, true);
	Zoom("絵窓/絵演立絵*", 0, 800, 800, null, true);


	CreateTextureEX("絵背景枠01", 10000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 10000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 176, Dxl2, false);
	Move("絵背景枠02", 200, @0, 368, Dxl2, false);
//動作
	Zoom("絵窓", 300, 1000, 500, Dxl2, true);
	Move("絵窓/絵演立絵*", 300, @0, @10, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400200990kms">
「よくも」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201000kms">
「よくも……」

{
	CreateSE("SE01","se環境_雷01");
	MusicStart("SE01",0,400,0,1000,null,false);

	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl1, false);
	Shake("絵窓/絵演立絵*", 200, 10, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1000, 1000, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);

}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201010kms">
「そのような笑顔でいられますねええッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	SoundPlay("@xbgm15",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201020mzh">
「星！　なんじゃ突然――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201030kms">
「あなた方のせいで――
　私の、ここ１０年の努力が水泡に帰したのですよッ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201040nko">
「……じゅうねんの？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400201050fje">
「どういう意味ですか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_威圧_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201060kms">
「アザナエルの呪いを解くには、日付が元旦に変わるその瞬間、半田明神に集まる人々の想いを集める必要がある」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu歌門_威圧_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201070kms">
「人々の清らかな願いを集めることで、アザナエルに籠められた怨念を浄化するのです。しかし――！」

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201080kms">
「本殿が、このような状態です……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400201090fje">
「参拝客も初詣どころじゃない、か。
　だから、ペンキ屋さんを探してたんですね」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201100kms">
「結局、すぐに対応できるお店はありませんでした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2247);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201110kms">
「このままでは……このままでは……」

{	St("C",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201120kms">
「ミヅハ様はまたこの格好で……
　１０年を過ごさねばなりません……ッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201130skr">
「え？　オイちょっと、何で泣く？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201140skr">
「ってかこのカッコでって、どゆこと？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201150mzh">
「わらわは神様じゃ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201160skr">
「いやいや。前もそのデタラメは聞いたけど――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400201170mso">
「姐さん！　でたらめじゃありません！
　その話、本当です」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201180skr">
「……は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400201190buu">
「ほら、ミヅハ！　あのふたりを――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201200mzh">
「うむ。沙悟浄！　九千坊！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@200,"st沙悟浄_通常_normal");
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-200, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/22/400201210e01">
「ヒョーヒョー！」

{	St("MR",700, @0,@200,"st九千坊_通常_normal");
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-200, Dxl1, false);
	FadeSt("MR",200,true);}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/22/400201220e02">
「ガワッガワッ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201230nki">
「あ、さっきの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400201240fje">
「か――河童！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201250skr">
「こ、これもシージーか！？　それともまさか――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201260skr">
「本当に、神様？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201270mzh">
「本来なら、もっと立派な格好をしておるのじゃが……」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201280mzh">
「１０年前、わらわは前のカゴメアソビで失策を犯した」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2248);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201290mzh">
「罰として力を奪われ、この姿に変えられた挙げ句、天界に戻れぬようになってしもうたのだ」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201300mzh">
「わらわは半田明神の中で、ずっと、今日のこの日がくるのを待っていた」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201310nko">
「ずっと、ひとりでいたの？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201320mzh">
「ん……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201330nko">
「もとのばしょにもどれなくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201340nko">
「たったひとりきりで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201350nko">
「ずっと、きょうがくるのをまってた？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201360kms">
「ひとりではありません！」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201370kms">
「いつも側には……私がおりました。
　だから、わかるのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("ML",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201380kms">
「私がどんな思いで、ミヅハ様の側にいたか……
　どれだけこの日を待っていたか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201390mzh">
「星よ、もう良い。泣くな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201400kms">
「ミヅハ様……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201410mzh">
「やっと、わかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201420mzh">
「おぬしを信じられなかった、わらわが悪い。
　本当に、すまなかった……」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201430mzh">
「おぬしが意地悪で、わらわを閉じ込めていたのじゃと、ずっと勘違いをしておった」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201440mzh">
「じゃが、本当は違ったのじゃろ？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201450mzh">
「わらわのためを思って、閉じ込めていたのじゃろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201460mzh">
//【ミヅハ】
「すまなかったのう、星。
　おぬしの言葉を信じられなかったばかりに――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201470kms">
「ミヅハ様……そのようなお言葉……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201480mzh">
「じゃがな、安心するがよい。
　わらわはなにも苦しんでなどおらんぞ」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201490mzh">
「なあに、１０年などあっという間じゃ！
　またおぬしが側で話し相手になってくれるのであろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201500mzh">
「わらわは、全然……全然寂しくなど……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201510nko">
「むりしないで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201520nko">
「あなたはもう、しってしまった」

{	St("ML",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201530nko">
「せかいはひろくて」

{	St("ML",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201540nko">
「ひととあうことはたのしい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2249);}

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/22/400201550mzh">
「そのようなこと――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201560nki">
「確かに、星さんの考え方もわかる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201570nki">
「誰にも会わず、目を閉じ耳を塞げば、危険な目に遭う確率も減るだろう」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201580nki">
「でも……それって本当に幸せなのか？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201590nki">
「オレも、ずっと家の中に引きこもって、ずっと、ひとりで愉快に暮らしてきて、楽だと思ってたけど、でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201600nki">
「外に出て、やっとわかった。
　本当はオレ、息が詰まりそうだった。辛かった」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/400201610nki">
「ずっと、ずっと外に出たかったんだ――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/22/400201620kms">
「その余計な願いが、この事態を招いた。
　今夜、アザナエルの呪いを解くことはもう――」

{	DeleteAllSt(200,false);
	SetVolumeEX("@xbgm*", 300, 0, null);
	CreateSE("SE01","se戦闘_木刀_構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//◆ＳＥ：木刀を振る
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201630skr">
「諦めんじゃねーよッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm07_noint",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201640skr">
「てめぇひとりのオツムじゃ、確かに名案は思い浮かばねぇかもしれねー」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201650skr">
「ショージキ、アタシの頭では無理だ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201660skr">
「けど！　三人寄ればもんじゃを食え！
　アタシとみそブーが揃えば……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(150,false);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/buみそa_通常_fear.png");
	CreateTextureEX("絵窓/絵演立絵2", 1900, center, middle, "cg/bu/buブーa_通常_pinch.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);

	CreateTextureEX("絵背景枠01", 10000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 10000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,500,0,1000,null,false);


	CutInLine02("@絵背景枠*");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/400201670mso">
「全然思い浮かばねぇ！！」

{	Move("絵窓/絵演立絵2", 200, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/400201680buu">
「右に同じ！！」

{	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/400201690nko">
「だめじゃん」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201700skr">
「ところがどっこい！
　アタシは憶えてる！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201710skr">
「人と人が出会ったからこそ、縁があったからこそ、アタシたちはこの問題を解決することができんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("SE*", 500, 0, null);
//	SetVolumeEX("@xbgm*", 500, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/400201720skr">
「な？　名探偵！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/400201730fje">
「え？　わ、私！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	EndScene();
}
