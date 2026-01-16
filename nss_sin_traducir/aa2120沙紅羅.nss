
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2120沙紅羅.nss_MAIN
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
	$GameName = "aa2345フウリ.nss";//★エンディングへ（aa）
}

scene aa2120沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1330">
////////////header////////////
//file name "aa2120沙紅羅.nss"
//title "人生ハラショーバンジョー"
//previous "aa2110沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "aa2345フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2120);}

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	if($PreGameName=="aa2110沙紅羅.nss"){
	Wait(2000);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

//	SoundPlay("@xbgm32",0,450,true);


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

	CreateSE("SE01","se動作_歩く2人_l");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @-50,@0,"bu沙紅羅_通常_happy");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200010skr">
「ふんふふーんふっふー！
　るんるんらんらー！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200020mso">
「おい、ブー」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200030buu">
「なんだ、みそ」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200040mso">
「オレは……もう、我慢できねぇ！」

{	St("L",700, @0,@0,"buみそa_通常_cry");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200050mso">
「あんなの、姐さんじゃねぇやいっ！！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200060buu">
「落ち着け、みそよ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200070buu">
「姐さんだって、いつまでもオレたちだけの姐さんじゃねえんだ」

{	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200080buu">
「タカ兄にホの字だったときも、ふたりでさんざん話し合ったじゃねぇか」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200090mso">
「それは……まあ……そうだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200100buu">
「姐さんには姐さんの幸せがある。
　やっとタカ兄をなくしたショックから立ち直れたんだ」

{	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200110buu">
「オレたちは、その幸せを見守ってやるべきじゃねぇか？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200120mso">
「ブー！　ブーよ！」

{	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200130mso">
「スマン！　オレが……オレが悪かった！」

{	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200140mso">
「姐さんの幸せが……オレたちの幸せ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200150buu">
「ああ、その通り」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200160mso">
「でも、何かが――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200170skr">
「いよっしゃあ！　ここだなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("@SE*", 2000, 0, null);

	TextBoxDelete(150);



//◆場所：似鳥マンション_エントランス
	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SceneIn(1000, "blind_01_00_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200180buu">
「た、多分そうです」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200190skr">
「おうおう、随分ご立派な建物じゃねぇか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2121);}


//◆場所：似鳥マンション_正面
	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200200skr">
「みそ、鍵」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200210mso">
「押忍！」

{
	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_鍵開ける");
	MusicStart("SE01",0,700,0,1000,null,false);
}

　みそが双六から受け取った鍵を、鍵穴に差し込む。

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200220skr">
「いよぅし！　じゃ、行くぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




	SoundPlay("@xbgm12",0,450,true);



//◆場所：似鳥マンション_玄関
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SceneIn(1000, "blind_01_00_1");
	Wait(500);




//◆場所：似鳥マンション_リビング_同人誌散乱
	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");


{	ClockPass(2122);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200230skr">
「ゲ！　きたなッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200240skr">
「なんだこの部屋！？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200250mso">
「地震で崩れたのか……？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200260buu">
「それにしても、エロい同人誌ばっかり……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200270skr">
「え……エッチいどーじんしだとッ！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200280skr">
「なっ、なっ、ななななな――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200290mso">
「姐さんッ！　ダメ！　落ち着いてください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200300buu">
「そ、そうです！
　売れる物はちゃんと売って、お金に変えないと！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200310skr">
「こ、こんな中で仕事しろって言うのか！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200320skr">
「ここら辺にある本が、みんなスケベな――」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200330mso">
「双六さんと、約束したでしょ！」

{	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200340mso">
「姐さん、その約束を破る気ですか！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200350skr">
「ぐ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200360buu">
「それに、早くしないと店が閉まります！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200370buu">
「売っぱらうものは、売っぱらっちまわねぇと」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200380skr">
「わ……わーったよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200390skr">
「とにかく、サクッとこっちの仕事をカタすぞッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200400skr">
「アタシは台所やるから、おまえらはそっちの部屋頼むぜ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200410skr">
「２０分で仕上げっから、気合い入れてやれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("L",200,false);
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200420mso">
「押忍っ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa21/200200430buu">
//「押忍っ！」

</PRE>
	SetText();
	AddText(1,"「押忍っ！」","みそ","aa21/200200420mso",false,false,1000);
	AddText(2,"「押忍っ！」","ブー","aa21/200200430buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);




	TextBoxDelete(150);



	SoundPlay("@xbgm32",0,450,true);


	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SceneIn(1000, "blind_01_00_1");

{
//	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200440skr">
「さーて、それじゃ掃除掃除……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200450skr">
「かぁ……汚ぇ台所ッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200460skr">
「なんか流し台に白い膜が――
　これ、夏だったら大惨事だぞ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	Shake("@StNameC/C*", 200, 0, 6, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200470skr">
「うっは！　クセぇ！　ちょ！
　コレ無理無理無理無理」

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buみそa_通常_hard");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200480mso">
「姐さん？　大丈夫ですか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200490skr">
「大丈夫なワケねぇだろ！　ったく……」

{	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buブーa_通常_normal");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200500buu">
「代わります？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200510skr">
「エッチいのは無理！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200520buu">
「ですよねー」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200530skr">
「ええい、コレも双六さんのためだッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200540skr">
「気合い入れて――やったるぜ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：時間経過

//
	SetVolumeEX("@xbgm*", 2500, 0, null);
	CreateColorEX("上背景", 20000, "BLACK");
	Fade("上背景", 2500, 1000, null, true);
	Wait(500);

{	ClockPass(2124);}

//◆場所：似鳥マンション_リビング_同人誌散乱
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	FadeDelete("上背景", 2500, null, true);

//	SoundPlay("@xbgm04",0,450,true);

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,600,0,1000,null,true);
	CreateSE("SE02","se動作_着替え");
	MusicStart("SE02",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200550buu">
「ふぅ……なかなか片づかねぇな……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200560mso">
「けど、この部屋の住人はどうしたんだ？」

{
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200570mso">
「やっぱり死んだのかな……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200580buu">
「でも、死んだなら家族に始末を任せるだろ」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200590mso">
「孤独死とか……？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200600buu">
「いや、でも部屋を見るにまだまだ若いし」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200610skr">
「しかしまあ、人の運命ってのは不思議なもんだな……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200620skr">
「まさか昨日の夜までは、東京に出てこんな見ず知らずの男の家、掃除するとは思ってもみなかったし」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200630buu">
「確かに」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200640skr">
「ところでおまえら、アタシがいない間はどうしてた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200650mso">
「いやまあ、さんざんでしたよ」

{	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200660mso">
「宇都宮で離ればなれになってから、しばらくあの辺りで姐さんを捜しまくって」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200670skr">
「あー、わりぃわりぃ。
　アタシ気付いたら水戸に向かっててさ」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200680buu">
「やっぱり……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200690skr">
「で、慌ててビッグ斎藤に向かったんだけど、もう夜で終わってて、しかも財布も落としちまって」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200700skr">
「で、しゃーねーから秋葉原まで来たんだけど、ブラパンには追いかけられるしオカマの弟子はできるし――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200710skr">
「あと真っ暗闇のどーじんしの店を駈け上がったり、テレビの大食いマッチに出たり……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200720skr">
「なんか振り返ると、人生ハラショーバンジョーだな！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200730skr">
「で、おまえたちはどうだった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200740mso">
「オレたちだって、結構大変だったんですよ！
　なあ、ブー！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200750buu">
「そうですよ。離ればなれで電話も繋がらないし、とりあえず姐さんを秋葉原で探そうってことになって」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200760mso">
「けど肉まんが売り切れてたり、パチンコ屋で双六さんに絡まれたり、無理矢理子供を――ええと――」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200770buu">
「子供の面倒見てくれって言われたり、地震が起こって泣き出してお漏らししたり、幼女誘拐犯と間違えられたり」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200780buu">
「で、そのままトイレの個室に閉じ込められて。
　ガラス割って逃げだそうとしたけど、腹がつっかかった」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200790buu">
「テレビ局の人に助けてもらって、斧で救出してもらったから良かったものの……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200800mso">
「あー、そういや番組に乱入しちまったし。
　あのねーちゃんには、恩返ししねぇとなあ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200810buu">
「で、その後姐さんを見つけて本屋に入ったら、なんか地下に迷い込んで変な字を見つけて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200820mso">
「あそこ、絶対なんか悪い霊みたいなのがいたぜ……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200830buu">
「それからやっと外に出たと思ったら、なんか泥棒扱いされるし……」

{	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200840buu">
「大体オレたち、あそこに双六さんがいるってこと自体知らなかったんですよ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200850skr">
「なんか……よくわかんないけど」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200860skr">
「おまえらも、色々あったんだなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@SE0*", 500, 0, null);
//	SetVolumeEX("@xbgm*", 1500, 0, null);


//	TextBoxDelete(150);

{	ClockPass(2125);}

//◆ＳＥ：バイブ
// 該当SEなし？

	CreateSE("SE02","se擬音_バイブ01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("@SE02*", 2500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200870buu">
「あ……すいません、ちょっと電話」

{
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200880skr">
「あ、ああ。すぐ戻れよ」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200200890buu">
「はいっ！」

{	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200900skr">
「……こんな時間に、誰から電話だ？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200910mso">
「さあ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200920skr">
「かーちゃん？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200930mso">
「いや、かーちゃんからなら無視するような……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200940skr">
「じゃあまさか……女か！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200950skr">
「いやいや、まさかまさか……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200960skr">
「ん？　でも待て……
　あいつネットには詳しいからな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200970skr">
「もしかして、アタシたちの知らないところでそういうコネクションが……！？」

{
	SetVolumeEX("@xbgm*", 4000, 0, null);
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200200980mso">
「あの……姐さん。
　ひとつ、聞いて良いですか？」

{
	SoundPlay("@xbgm26",0,450,true);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200200990skr">
「ん？　なんだ？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201000mso">
「姐さん……本当に双六さんのことが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201010skr">
「ああ、そのことか」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201020skr">
「アタシが双六さんを好きになっちゃ、駄目か？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201030mso">
「双六さんは――たぶん、幸せになれません」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201040mso">
「オレにはわかります。あの人は……オレたちには、想像もつかないほど重い物を背負って生きてるんです」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201050mso">
「その重荷を振り解いてあげることは、難しい」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201060skr">
「たぶん、そうだろうな。
　アタシもそう思うよ」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201070mso">
「でも、それじゃあなんで――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201080skr">
「惚れちまったからな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201090skr">
「難しいけど、やるしかねぇだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201100mso">
「でも――」

{
	SoundPlay("@xbgm07",0,450,true);

}

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201110skr">
「アタシはな、やる前から諦めたりはしねぇ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201120skr">
「もし、双六さんの重荷を解いてやれるヤツがいたとしたら、きっとそれはアタシだよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201130skr">
「そう、信じるしかねぇだろ」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201140skr">
「惚れちまったしな」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201150mso">
「姐さん――」

{	St("L",700, @0,@0,"buみそa_通常_cry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201160mso">
「なんて……なんて優しい人なんだッ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201170mso">
「オレ……オレ、一生ついていきますッ！！
　うううっ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201180skr">
「こらこら、なに泣いてんだよ。
　そんなヒマあったら、ほら、荷造り荷造り」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_cry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201190mso">
「はっ、はいっ！！」

{
	DeleteAllSt(200,false);
	St("R",700, @50,@0,"buブーa_通常_sad");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200201200buu">
「電話を終えたら、みそが泣いてる？
　どういうことなの？」

{	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200201210buu">
「ほらほらみそ、泣いてる場合じゃねぇぞ」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_cry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201220mso">
「う、うるせぇやいッ！
　な、泣いてなんて……ないやいっ！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200201230buu">
「さっきのＡＤの人から電話が来てな。
　是非、オレたちの力を貸して欲しいんだと」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201240mso">
「オレたちの力を……？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200201250buu">
「ああ、なんでも――」

{
	SetVolumeEX("@xbgm*", 500, 0, null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201260skr">
「あああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200201270buu">
「あ……姐さん？　どうしたんですか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201280skr">
「あ！　あ！　あー！　あー！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201290skr">
「この、ここに崩れ落ちてる同人誌――」

{
	DeleteAllSt(200,false);
}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201300skr">
「こ……これは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
//	FadeSt("C",200,true);
//	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);

	CreateTextureEX("絵演全画面", 1000, Center, Middle, "cg/img/imgノーコントロール11.jpg");
	CreateSE("SE01","se擬音_ギャグ_ドーン");
	Zoom("絵演全画面", 0, 5000, 5000, null, true);

	Zoom("絵演全画面", 2000, 1000, 1000, null, false);
	Fade("絵演全画面", 500, 1000, null, true);

	WaitAction("@絵演全画面", null);

	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(1010, 500, 0, 8, 0, 0, 1000, Dxl1, true);

	Wait(2000);

	CreateAXLWindowEX("絵窓", "X",1600, 256,512, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
	CreateColorEX("絵窓/絵演色", 1510, "#440000");
	CreateTextureEXadd("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵窓/絵演色", 0, 1000, null, true);
	Fade("絵窓/絵演背景", 0, 1000, null, true);

//	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("絵窓/キャラ", 1530, @0, InBottom, "cg/bu/bu沙紅羅_通常_rage.png");
	SetAlias("絵窓/キャラ","絵窓/キャラ");
	Move("絵窓/キャラ", 0, 0, @96, null, true);
	Shake("@絵窓*", 300, 0, 10, 0, 0, 500, null, false);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/200201310skr">
「アタシがずっと探してた、『ノーコントロール』じゃねえかあああああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	WindowAXLZoom("絵窓", "X",300, 0, Dxl2, true);

	FadeDelete("絵演全画面", 500, null, true);

{	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/200201320mso">
「ええええええええええええええっ！？」

{
	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/200201330buu">
「ええええええええええええええっ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
//next "沙紅羅" "aa2345フウリ.nss"
