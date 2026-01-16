
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2010ノーコ.nss_MAIN
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
	$GameName = "2020カゴメ1.nss";
//	$GameCircle=false;
}

scene 2010ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1070">
////////////header////////////
//file name "2010ノーコ.nss"
//title "ほんとうのおもい"
//previous "2008ノーコ.nss"

////////////footer////////////
//next "ノーコ""2020カゴメ1.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	SoundPlay("@xbgm09",0,450,true);}

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

{	ClockPass(2010);}

//	CreateSE("SE03","seガヤ_交通少_l");
//	MusicStart("SE03",2000,700,0,1000,null,true);
//	CreateSE("SE03","seガヤ_街中_l");
//	MusicStart("SE03",2000,700,0,1000,null,true);


	Fade("上背景", 500, 0, null, true);
	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("R",700, @0,@0,"st沙紅羅_通常_think");
	FadeSt("R",200,true);}
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100100010skr">
「なんで……なんで、アタシは……こんなことを……」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@-50,"buノーコa_通常_fear");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 1500, @0, @50, Dxl3, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100020nko">
「あのおんな……！」

{	DeleteAllSt(150,true);
	St("L",700, @-40,@0,"buミヅハ_フラット_shock");
	Move("@StNameL/L*", 200, @40, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100030mzh">
「なんと！　沙紅羅ではないか！」

{	St("L",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("L",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100040mzh">
「ふふふ……これぞ神の導きじゃ！　早速バッグを――」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_smile");
	Move("@StNameML/ML*", 2000, @120, @0, Dxl3, false);
	FadeSt("ML",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100050nko">
「ころす。いっせきにちょう」

{	Move("@StNameML/ML*", 800, @80, @0, Dxl3, false);
	DeleteAllSt(400,true);
	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100060mzh">
「いやいや待て待て！　それはマズい！
　というかおぬしは幻で、あやつに触れることは――」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100070nko">
「かんけいない」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100080mzh">
「関係なくなど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

	St("MR",700, @-30,@0,"stフウリ_通常_shock");
	Move("@StNameMR/MR*", 200, @30, @0, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100100090wfu">
「あ、これは……」

//◆音声指示：遠くから
{	DeleteAllSt(150,true);
	St("R",700, @0,@0,"st沙紅羅_通常_shout");
	FadeSt("R",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100100100skr">
「な……なんだよてめー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2011);}


//	SetVolume("SE*", 1000, 0, null);

//◆演出指示：バックするノーコ
	DeleteAllSt(150,true);
	St("MR",700, @80,@0,"buノーコa_通常_sad");
	Move("@StNameMR/MR*", 1500, @-80, @0, Dxl3, false);
	FadeSt("MR",200,false);
	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100110nko">
「――――！？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100120mzh">
「どうした、ノーコ？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100130nko">
「あのひと……フウリ」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100140mzh">
「本当じゃ、フウリではないか」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100150mzh">
「そういえば、あやつがおぬしの正体をばらしたと言っておったな……」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100160mzh">
「まったく、けしからん！
　わらわがきついお灸を据えて――」

{	DeleteAllSt(150,true);
//	SoundPlay("@xbgm09",0,450,true);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100170nko">
「いらない」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100180mzh">
「なんと！？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100190nko">
「わたしは、けんかした」

{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100200nko">
「でも……くるしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100210nko">
「こんなのはいや」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100220nko">
「このきもちは、なに？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100230mzh">
「もしや……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100240mzh">
「おぬし、仲直りがしたいのか？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100250nko">
「なかなおり……？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100260mzh">
「よかろ！　ここはわらわに任せるのじゃ！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100270nko">
「でも……」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100280mzh">
「遠慮するでない！
　わらわとおぬしは、友達じゃ！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100290nko">
「ともだち……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//◆演出指定："2010沙紅羅_フウリ.nss"と同じ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 300, @100, @0, Dxl3, false);
	DeleteAllSt(300,false);}
//◆音声指示：遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100300mzh">
「待てええええええい！！」

{	DeleteAllSt(150,true);
	St("R",700, @0,@0,"st沙紅羅_通常_shout");
	FadeSt("R",200,true);}
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100100310skr">
「また出た！　変なガキ！」

{	DeleteAllSt(150,true);
	St("MR",700, @-50,@0,"stミヅハ_通常_angry");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//◆音声指示：遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100320mzh">
「変とはなんじゃ変とは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2012);}




//◆演出指定："2010沙紅羅_フウリ.nss"と同じ　ここまで

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100330nko">
「わたしは、フウリとなかなおりしたい？」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100340nko">
「わからない。わからない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100350nko">
「フウリのせいで、わたしのしょうたいがばれた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100360nko">
「フウリがしんじつをいわなければ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm09", 2000, 200, null);


	DeleteAllSt(150,true);

//◆ＳＥ：カサリ
//◆演出指示：足元で切り刻まれた自分の同人誌が風に吹かれて音を立てる
//あきゅん「素材：img引き裂かれた同人誌が地面に散らばる.」

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/img/img引き裂かれた同人誌が地面に散らばる.jpg");

	CreateSE("SE01","se環境_紙飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景１", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100370nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100380nko">
「フウリがいなければよかった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100390nko">
「にとりとしあわせにくらせた？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100400nko">
「うそだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100410nko">
「そんなの、うそだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(2013);}


	TextBoxDelete(150);

	SetVolume("SE01", 1000, 0, null);
	CreateSE("SE02","se環境_紙飛ぶ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色１", 10000, "#FFFFFF");
	Fade("絵色１", 150, 1000, null, true);

//あきゅん「素材：img引き裂かれた同人誌が夜空に舞う」
	CreateTextureEX("絵背景１", 11, 0, -440, "cg/img/img引き裂かれた同人誌が夜空に舞う.jpg");
	Fade("絵背景１", 0, 1000, null, true);
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	Move("絵背景１", 2000, @0, @440, Dxl2, false);

	Fade("絵色１", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100420nko">
「もうおわりがちかいって、わたしはしってた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100430nko">
「だから、にとりと、セックスした」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100440nko">
「セックスして、こんどこそ、いってもらおうって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100450nko">
「にとりのほんとうのきもちを、きこうって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100460nko">
「そうおもった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100470nko">
「ほんとうの……きもち……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm09", 5000, 450, null);

//	TextBoxDelete(150);

	Delete("絵色１");
	FadeDelete("絵背景１", 200, null, true);

//◆演出指定："2010沙紅羅_フウリ.nss"と同じ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100480mzh">
「な、なんじゃとー！！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100100490skr">
「いやさあ、この同人誌、どーしても手に入れなきゃなんなくてさ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100100500skr">
「けどあん時、バッグしか持ってるものなくて。
　泣く泣く交換したってわけなんだけど」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100510mzh">
「な……き、貴様！　なんてことを――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定："2010沙紅羅_フウリ.nss"と同じ ここまで
//	SetVolumeEX("@xbgm*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100520nko">
「このどうじんしをこうかん……？」

{
//	SetVolumeEX("@xbgm*", 1000, 0, null);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100530nko">
「あ……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm09", 1000, 550, null);


//◆ＳＥ：走り出す
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);

	Move("@StNameC/C*", 500, @0, @-50, Dxl3, false);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);





//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

{	ClockPass(2014);}

	DrawTransition("絵黒幕", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("絵黒幕");

//※北原メモ：回想を絡めて演出して欲しいです。
//cono：上記演出未記入です
//↑下倉注で

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100540nko">
「たいへん――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
下倉注：追加 2010/11/09
2000ノーコ.nss
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000100830mzh">
「アザナエルは、願いを叶える銃じゃ」
*/
	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0701600地下_通路_バックギャモン.jpg");
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",0,true);

	Fade("絵色100", 200, 0, null, true);

//▼べー：加工食い違い防止のためタグ修正しました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100100541mzh">
「アザナエルは、願いを叶える銃じゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Fade("絵色100", 0, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,true);
	Fade("絵色100", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100550nko">
「アザナエルは、ねがいをかなえる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
下倉注：追加 2010/11/09
1930ノーコ.nss
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/19/300100980kms">
「はい、そうです！　河原屋双一の――そう、双六が明言しておりました」
*/

	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0603111半田明神_境内_通常.jpg");
	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",0,true);

	Fade("絵色100", 200, 0, null, true);

//▼べー：加工食い違い防止のためタグ修正しました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/100100551kms">
「はい、そうです！　河原屋双一の――そう、双六が明言しておりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Fade("絵色100", 0, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,true);
	Fade("絵色100", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100560nko">
「かわらやそういちがねらっている」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
下倉注：追加 2010/11/09
1830似鳥_ノーコ.nss
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300240nki">
「今日が期限の借金も――」
*/

	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1304100似鳥マンション_リビング_通常.jpg");
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",0,true);

	Fade("絵色100", 200, 0, null, true);

//▼べー：加工食い違い防止のためタグ修正しました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100561nki">
「今日が期限の借金も――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Fade("絵色100", 0, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,true);
	Fade("絵色100", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100570nko">
「にとりはかわらやぐみにしゃっきんがある」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
下倉注：追加 2010/11/09
2000ノーコ.nss
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000101180nki">
「バックギャモン……ですね」
*/


	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1101200スパコン館_裏面_閉店.jpg");
	St("L",700, @0,@0,"st似鳥_通常_hard");
	FadeSt("L",0,true);

	Fade("絵色100", 200, 0, null, true);

//▼べー：加工食い違い防止のためタグ修正しました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100571nki">
「バックギャモン……ですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Fade("絵色100", 0, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,true);
	Fade("絵色100", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100580nko">
「にとりはバックギャモンにむかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2015);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100590nko">
「バックギャモンは――かわらやぐみのもの！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100600nko">
「にとりが、あぶない――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 100, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


{	ClockPass(2016);}

//◆場所：秋葉原_ガード下
	OnBG(10,"bg0102100秋葉原_ガード下_通常");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 100, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("絵黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100610nko">
「ここ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 100, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 100, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵黒幕");

//◆演出指定：後ろに薄くインド音楽が流れていたりする

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100620nko">
「このさき――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm09", 2000, 0, null);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 100, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

//★カメラ設定
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100a", 500, Center, Middle, "cg/bu/l/st河原屋双六a_通常_normal_x09.png");
	CreateTextureEX("カメラ１/絵背景200a", 500, Center, Middle, "cg/bu/l/st河原屋双六a_通常_normal_x09.png");
	Request("カメラ１/絵背景100a", Smoothing);
	Request("カメラ１/絵背景200a", Smoothing);
	SetShade("カメラ１/絵背景200a", MIDEUM);
	Move("カメラ１/絵背景100a", 0, @100, @450, null, true);
	Move("カメラ１/絵背景200a", 0, @100, @450, null, true);


{	ClockPass(2017);}

	DrawTransition("絵黒幕", 100, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵黒幕");

	Wait(500);

	SoundPlay("@xbgm06",0,450,true);

	CreatePlainSP("上背景", 2005);

	CreateTextureSPmul("絵色薄暗", 1500, Center, Middle, "cg/data/slide_02_00_0.png");
	CreateTextureSPmul("絵色薄暗2", 1500, Center, Middle, "cg/data/slide_02_00_0.png");
	CreateTextureSPmul("絵色薄暗3", 1500, Center, Middle, "cg/data/slide_02_00_0.png");
	Fade("絵色薄暗", 0, 1000, null, true);
	Fade("絵色薄暗2", 0, 1000, null, true);
	Fade("絵色薄暗3", 0, 1000, null, true);


	CreateTextureEX("カメラ１/絵背景100b", 300, center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	CreateTextureEX("カメラ１/絵背景200b", 300, 0, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Request("カメラ１/絵背景100b", Smoothing);
	Request("カメラ１/絵背景200b", Smoothing);
	Zoom("カメラ１/絵背景100b", 0, 3000, 3000, null, true);
	Zoom("カメラ１/絵背景200b", 0, 3000, 3000, null, true);
	SetShade("カメラ１/絵背景200b", MIDEUM);
	Move("カメラ１/絵背景100b", 0, @-400, @0, null, true);
	Move("カメラ１/絵背景200b", 0, @-400, @0, null, true);


	Fade("カメラ１/*", 0, 1000, null, true);
	Fade("カメラ１/絵背景200b", 0, 0, null, true);
	MoveCamera("@カメラ１", 0, @-150, @0, @0, null, true);


//	CreateMovieEX("ムービー１", 5000, Center, Middle, true, true, "dx/mvk100.ngs");
//	Request("ムービー１", AddRender);
//	Zoom("ムービー１", 0, 3000, 3000, null, true);
//	Fade("ムービー１", 0, 1000, null, true);


	MoveFTP1("@カメラ１/*",7000,14,3);

	FadeDelete("上背景", 800, null, true);

	Wait(300);

	Fade("カメラ１/絵背景200b", 1000, 1000, null, false);
	Fade("カメラ１/絵背景200a", 1000, 0, null, true);

	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100630ksr">
「アザナエルで自分を撃つ――カゴメアソビ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100640ksr">
「そいつが、借金をチャラにする条件だ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100650ksr">
「命懸けのロシアンルーレット。
　弾が出る確率は、６分の１」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100660ksr">
「６人やったら５人が夢を叶えるんだ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100670ksr">
「オマケに借金もチャラ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100680ksr">
「絶好のチャンスだぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	MoveCamera("@カメラ１", 500, -1200, @0, @0, AxlDxl, false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("カメラ１/*");
	Delete("カメラ*");
	Delete("絵色薄暗*");
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

	Wait(300);

	St("C",700, @0,@-80,"buノーコa_通常_normal");
	Move("@StNameC/C*", 1000, @0, @80, Dxl3, false);
	FadeSt("C",500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100690nko">
「ロシアンルーレット……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100700nko">
「ねがいがかなうと、ミヅハもいっていた」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100710nko">
「でも……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100720nko">
「にとりが、しぬかもしれない？」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100730nko">
「そんなのはだめ。いきのこって――」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100740nko">
「いきのこって、ねがいをかなえる……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100750nko">
「にとりはまんがかになる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100760nko">
「ゆめがかなう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",400,true);
	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",500,false);
//◆ＳＥ：カッターナイフ
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100770nko">
「そうしたら――わたしはふよう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2018);}

{	DeleteAllSt(150,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100780nki">
「オレは……」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100790ksr">
「さあ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100800nki">
「オレは――」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100810ksr">
「さあさあッ！！」

//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100820nki">
「オレは――！」

{	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100830nko">
「にとり――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 15000);
	SetBlur("揺用", true, 3, 1000, 50, false);

	CreateTextureEX("絵背景200", 1000, 0, -576, "cg/ev/l/ev2020カゴメアソビ1a_l.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev2020カゴメアソビ1a.jpg");
	Fade("絵背景200", 0, 1000, null, true);


	Zoom("揺用", 200, 10000, 10000, null, false);

	FadeDelete("揺用", 200, null, true);

	CreateSE("SE02","se動作_着地");
	CreateSE("SE00","se銃_構える");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,1500,0,1000,null,false);

	Wait(500);

	Move("絵背景200", 1000, @0, -520, null, false);

	Wait(850);
	MusicStart("SE02",0,1500,0,1000,null,false);
	Wait(150);
	MusicStart("SE00",0,1500,0,1000,null,false);
	Move("絵背景200", 300, @0, 0, AxlDxl, true);
	Fade("絵背景100", 0, 1000, null, true);

	Wait(500);

	Delete("絵Ｗ*");

	Fade("絵背景200", 800, 0, null, true);
	Delete("絵背景200");
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0184]
{	DeleteAllSt(150,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100840nki">
「やっぱり、嫌だ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100850ksr">
「へぇ。そうやって――」

//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100100860nki">
「動くな！　撃つぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	FadeDelete("絵背景100", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100870nko">
「なに……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100880nko">
「にとりがしゃっきんとりに、じゅうをむけた？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100890nko">
「にとりが、ころす？」

{DeleteAllSt(150,true);}
//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100900ksr">
「流されて、言い繕って、仕方なかったとオレを撃つか」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100910ksr">
「腹を決めて、狂いながら、夢を追って自分を撃つか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100920ksr">
「ふたつにひとつ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100930ksr">
「さあ」

//◆音声指示：扉越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/100100940ksr">
「てめぇが決めろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2019);}
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100950nko">
「もしここで、にとりがうったら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100960nko">
「もとのせかいに、ぎゃくもどり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100970nko">
「よのなかにせをむけて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100980nko">
「きにくわなければ、こわせばいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100100990nko">
「きにくわなければ、きればいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100101000nko">
「わたしみたいに、きずつけて――」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100101010nko">
「わたしみたいに……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);

	TextBoxDelete(150);

//◆演出指示：回想開始
	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色１", 20000, "#FFFFFF");
	Fade("絵色１", 300, 1000, null, true);

	ClockDelete(0,true);
	ClockTime(2019);

	DeleteSt("ML",0,true);
	CreateTextureEX("絵背景２", 10, 0, 0, "cg/bg/bg0106100秋葉原_蔵前橋通り_通常.jpg");
	Fade("絵背景２", 0, 1000, null, true);

	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",0,true);

	Fade("絵色１", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100101020wfu">
「ノーコちゃん、私と約束してくれませんか？」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100101030wfu">
「気に食わないからって、ひとを傷つけたりしない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：回想終了

	Fade("絵色１", 300, 1000, null, true);

	ClockPass(2019);

	Delete("絵背景２");
	DeleteSt("C",0,true);

	St2("C",700, @0,@0,"fuノーコa_通常_fear","cg2/",".png");
	FadeSt("C",0,true);

	Fade("絵色１", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100101040nko">
「だめだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100101050nko">
「ひとをきずつけては、だめ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/100101060nko">
「きずつけては……」

{DeleteAllSt(150,true);}
//◆音声指示：扉越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/100101070nki">
「うおおおおおおおおおおおおお――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
