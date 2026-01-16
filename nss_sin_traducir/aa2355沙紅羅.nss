
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2355沙紅羅.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("aa");

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

	//★エンディング中（aa）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene aa2355沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="500">
////////////header////////////
//file name "aa2355沙紅羅.nss"
//title "噛み合わない最後"
//previous "aa2350千秋_恵那.nss"

////////////footer////////////
//flag "flaa"
//next オシマイ

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//	FadeDelete("上背景", 0, null, true);
//◆演出指定：会場盛り上がる

{	ClockPass(2353);}



//◆場所：泰然堂大学病院_廊下
	SetVolumeEX("@SE*", 1500, 250, null);
	OnBG(10,"bg1403100泰然堂大学病院_廊下_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);
	Wait(1000);

//あきゅん「β演出：後ろで恵那の叫び(aa23/500100610fje)を入れる」
// ↑素材不明

	CreateVOICE("富士見恵那","aa23/500100610fje");
	MusicStart("富士見恵那",0,450,0,1000,null,false);

	$SETime = RemainTime("富士見恵那");
	WaitKey($SETime);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100010skr">
「……なんだか、やかましいな」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100020mso">
「全くです」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100030buu">
「最近のゆとりは、教育がなってねーですよ」

{	DeleteAllSt(200,false);
	SetVolumeEX("富士見恵那", 300, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100040skr">
「ホントだぜ。ようやくアタシが、約束のどーじんしを手に、弟と涙の再会だってのによー！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100050skr">
「もうちょっと、静かにしろってんだ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100060mso">
「でも……ホントに、こっちでいいんですかね」

//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100070mso">
「なんかこう、静か過ぎるような……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100080skr">
「誰にも邪魔されねぇし、そっちの方がいいだろうよ。
　きっと看護士が、気を利かせてくれたんだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100090skr">
「おまえらも、ほら！　どーじんしをくれた双六さんみたいに、もーちょっと気ぃ利かせろよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2354);}

//	TextBoxDelete(150);


	CreateSE("SE01a","se動作_歩く2人_l");
	SoundEffect("SE01a","LARGEHALL");

	CreateSE("SE01","se動作_歩く2人_l");

	MusicStart("SE01a",0,1600,0,800,null,true);
	MusicStart("SE01",0,400,0,800,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100100mso">
「そういえば、双六さんどこに行ったんですかね？
　伝言も残さずに……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100110buu">
「まさか……姐さんを、捨てた！？」

{	DeleteAllSt(200,false);
	St("C",700, @60,@0,"bu沙紅羅_後ろ向き_hard");
	Move("@StNameC/C*", 200, @-60, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100120skr">
「バーカ。んなわけねぇだろ！」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100130skr">
「最初からアタシなんて、拾われてもいねぇんだよ」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);
	SetVolumeEX("SE*", 300, 0, null);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100140mso">
「姐さん……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100150skr">
「きっとアレは……双六さんの……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100160skr">
「双六さんなりの……優しさなんだよ……」

{	St("C",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100170skr">
「うぐっ、ぐすっ、うぅ……ぅ……
　おーいおいおい、おーいおいおいおいおい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_cry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100180buu">
「姐さん……！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100190skr">
「うう……ぐすっ！
　ううっ！　いよっしゃ！」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100200skr">
「なんか、辛気くさくていけねぇな！」

{	SoundPlay("@xbgm07",0,450,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100210skr">
「どーじんし持って、いよいよマーくんと会えるんだ！
　もうちっと、気合い入れていくぜッ！」

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
[text0059]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100220mso">
「押忍！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa23/550100230buu">
//「押忍！」

</PRE>
	SetText();
	AddText(1,"「押忍！」","みそ","aa23/550100220mso",false,false,1000);
	AddText(2,"「押忍！」","ブー","aa23/550100230buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(1000);
	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100240skr">
「この部屋だな！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100250buu">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100260skr">
「んじゃ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100270skr">
「――――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100280skr">
「行くぜッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@SE*", 500, 0, null);
//	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateSE("SE02","se動作_ドア開ける06");
	MusicStart("SE02",0,700,0,1000,null,false);

{	ClockPass(2355);}

//◆場所：泰然堂大学病院_病室
	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg1402100泰然堂大学病院_病室_通常");
	DeleteAllSt(200,false);
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

//	SoundPlay("@xbgm27",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @-50,@0,"bu沙紅羅_通常_happy");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100290skr">
「よう！　久しぶりだな、マーくん――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100300skr">
「え……？」

{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);
//	SetVolumeEX("@xbgm*", 500, 0, null);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100310skr">
「マーくん……マーくん？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100320mso">
「あ、姐さん……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100330buu">
「お、おい弟くん！　どこに――」

{	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100340skr">
「なんで……マーくんが……」

{	SoundPlay("@xbgm24",0,450,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100350skr">
「いないんだ……？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100360skr">
「まさか――まさか――」

{	St("C",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100370skr">
「アタシに愛想を尽かして、どっか行っちまったのかぁ？
　うおーい、おいおいおいおい……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100380mso">
「そ、そんなわけありませんっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100390buu">
「同感です！　あいつはそんな無責任じゃ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu若原_通常_angry");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/aa23/550100400whr">
「うるさいぞ、おまえたち！
　もう夜中だ！　こっちは寝てんだぞ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100410skr">
「う、うるせーバカヤロー！　わざわざ弟に会いに、郡山から出てきたのに……コレが泣かずにいられるかっ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa23/550100420mso">
「そうだそうだッ！！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_angry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa23/550100430buu">
「病人は寝てろッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu若原_通常_normal");
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/aa23/550100440whr">
「あ……あれ？　もしかして」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/aa23/550100450whr">
「おまえ……そこの病人の、身内か？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100460skr">
「おーよ！
　おまえ、マーくんがどこに行ったか知ってるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu若原_通常_normal");
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/aa23/550100470whr">
「いや、オレが聞いた話だと――」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/aa23/550100480whr">
「そこの人、今日の夕方、亡くなったって」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100490skr">
「え……？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa23/550100500skr">
「マーくんが、死んだ……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndingReady();

//◆演出指定：エンディング

	EndScene();
}
