
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2050ノーコ.nss_MAIN
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
	$GameName = "2100ノーコ.nss";
	//$GameCircle=false;
}

scene 2050ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1520">
////////////header////////////
//file name "2050ノーコ.nss"
//title "きょうかしょはエロゲー"
//previous "2040千秋_ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2100ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2050);}

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeFF("@StNameC/C*",0,0,500,-100,0,Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200010nko">
「う」

{	Move("@StNameC/C*", 500, @150, @50, Dxl3, false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200020nko">
「は」

{	Move("@StNameC/C*", 500, @0, @-50, Dxl3, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200030nko">
「や」

{	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200040nko">
「と」

{	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameC/C*", 200, @-100, @20, Dxl3, true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	Move("@StNameC/C*", 300, @-150, @40, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200050nko">
「とと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameC/C*", 200, @-150, @40, Dxl1, false);
	DeleteAllSt(100,true);

//◆ＳＥ：どどーん、転ぶ。ここで発砲音がかき消される

	CreateSE("SE01","se人体_倒れる01");

	if(Substr($myRoute,0,1)=="b"){
	CreateSE("SE02","se擬音_カゴメアソビ成功");
	}else{
	CreateSE("SE02","se銃_銃声01");
	}

	CreateTextureEX("絵ゆれ", 20, Center, Middle, "cg/bg/bg1001100バックギャモン_正面_通常.jpg");

	MusicStart("SE01",0,1400,0,1000,null,false);
	MusicStart("SE02",0,600,0,1000,null,false);
	Fade("絵ゆれ", 0, 1000, null, true);
	Shake("絵ゆれ", 500, 10, 30, 2, 0, 500, null, false);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-40,@40,"buノーコa_通常_normal");
	Move("@StNameC/C*", 200, @40, @-40, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200060nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200070nko">
「うしろから、おと、した？」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200080nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200090nko">
「まあいい」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200100nko">
「かいだんはきけん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200110nko">
「うきあしだたない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200120nko">
「きをつけておりる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵ゆれ");
//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	Wait(300);

	CreateSE("SE10","seガヤ_エレキセンター内部_l");
	MusicStart("SE10",3000,700,0,1000,null,true);


	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

	St("C",700, @30,@0,"buノーコa_幽霊_think");
	Move("@StNameC/C*", 200, @-30, @0, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200130nko">
「……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200140nko">
「くんくん……このにおいは」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-30, @0, Axl1, false);

//※下倉注：ここの背景、 bg0902100エレキセンター_ジャガンナート_通常 で 2010/11/22
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);

	OnBG(10,"bg0902100エレキセンター_ジャガンナート_通常");
	FadeBG(0,true);
	Wait(300);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200150jbr">
「ありゃ？」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200160jbr">
「おじょさん！　どこからデスカ？」

{	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200170nko">
「…………」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200180jbr">
「中に入ったの見てないデスネ！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200190jbr">
「不思議！　マジック？　ペテン？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200200nko">
「…………」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200210jbr">
「おじょさん、無視するのはつれない人！　やるせナイ。
　なにか買っていくデスカ？　なんでもあるデスネ」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200220nko">
「いらない」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200230jbr">
「そなこといわないで！　ほらほら、テッポもあるデス！
　パソコンも、カレーも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200240nko">
「…………あ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/obj/objノートＰＣ.png");
	Move("絵演物", 0, @0, @120, null, true);

	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

	Wait(1000);

	FadeDelete("絵演物", 500, null, true);

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200250nko">
「スマガ？」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200260jbr">
「おじょさん！　おめがたかいデス！
　知ってるデスカ、スマガ？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200270nko">
「ストライプウィッチーズ・マジカル・ガールズ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200280nko">
「にとりがだいすき。エロゲ」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200290jbr">
「ご名答デスネ！　そのとおりデスネ！
　ちょっとスケベなゲームデス」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200300jbr">
「けどけどゴメナサイ！
　これだけは売り物違うデスネ。発売前の非売品」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200310nko">
「うりものじゃない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200320jbr">
「カタジケナイ……」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200330jbr">
「でもその代わり、テッポはあるデス！
　カレーもあるデス！」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200340nko">
「カレー」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200350jbr">
「はいはい、カレーデスネ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200360nko">
「カレー、にとりは、すき」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200370jbr">
「にとり？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200380nko">
「いっしょにすんでる」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200390jbr">
「ああ、ダーリンさんデスネ！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200400nko">
「ダーリン……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2051);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200410nko">
「ダーリン……！！」

{	St("MR",700, @0,@0,"buジャブル_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200420jbr">
「カレーつくると喜ぶデス！
　元気溌剌！　ロケット爆発！！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200430nko">
「ばくはつ……」

{	St("MR",700, @0,@40,"buジャブル_通常_happy");
	DeleteAllSt(200,false);
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200440jbr">
「ぼかーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200450nko">
「…………カレー、つくる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200460nko">
「でも、はじめて」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200470nko">
「つくれる？」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200480jbr">
「あたりまえだのくらっか！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200490jbr">
「かんたんかんたん！　失敗しないデス！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200500nko">
「ちょうだい」

{	St("MR",700, @0,@0,"buジャブル_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200510jbr">
「まいど！　そして、どれが必要デスカ？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200520nko">
「いちばんじょうとう」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200530jbr">
「一番上等なカレー……」

{	St("MR",700, @50,@0,"buジャブル_通常_normal");
	St("MR",700, @50,@0,"buジャブル_通常_smile");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 4200);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200540jbr">
「すると……えと……コレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	AgainSt("MR",700, @100,@0,"buジャブル_通常_smile");
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200550nko">
「ちがう」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200560jbr">
「へ？」

{	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200570nko">
「あれがいちばん」

{	St("MR",700, @0,@0,"buジャブル_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200580jbr">
「へえええええ！！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200590jbr">
「おきゃくさん！　お目がタカイ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200600jbr">
「これ、おっしゃるとおりイチバン貴重デス！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200610jbr">
「ガンジスの流れのほとり、ワーラナシーの砂が育てた貴重な貴重な聖なるスパイス――」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200620nko">
「ぜんぶ」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200630jbr">
「へ？」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200640nko">
「ぜんぶほしい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200650jbr">
「おじょさん！　それはたいへんデスネ！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200660jbr">
「ダーリンさんはスモウレスラー？」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200670jbr">
「でもでも、私も商売！
　売れと言われたら売るデスネ！」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200680jbr">
「いくらだすデスカ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200690nko">
「ない」

{	St("MR",700, @0,@0,"buジャブル_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200700jbr">
「はい？　おかねは――」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200710nko">
「ない」

{	St("MR",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200720jbr">
「それはよくないデス！　よくないデスネ！」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_カッター_刃出す04単発a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200730nko">
「もらう」

{	St("MR",700, @0,@0,"buジャブル_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200740jbr">
「ちょ！　待った！　止まるデス！　ストップ！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200750jbr">
「それ以上近づいたら、私のてっぽが火を噴く――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(100,true);

//◆ＳＥ：シャキーン　カッターナイフが光る

//◆ＳＥ：ゴトッ！　鉄砲が落ちる

	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",100,true);

	CreateSE("SE05","se戦闘_風切り音10");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,false);
	Fade("絵色100", 500, 0, null, true);

	CreateSE("SE02","se戦闘_金属弾く01");
	CreateSE("SE03","se銃_落とす01");
	MusicStart("SE02",0,1500,0,1000,null,false);

	Wait(300);

	MusicStart("SE03",0,1500,0,1000,null,false);

	Wait(300);

	St("MR",700, @0,@0,"buジャブル_通常_pinch");
	Shake("@StNameMR/MR*", 200, 10, 40, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200760jbr">
「ひゃっ！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200770jbr">
「ててててて、てっぽが！　切れたデスネ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
//◆ＳＥ：キリキリ……カッターナイフの音
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200780nko">
「ちょうだい」

{	St("MR",700, @0,@0,"buジャブル_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200790jbr">
「は……はい！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE01", 500, 0, null);

	DeleteAllSt(200,true);

	SetVolumeEX("SE10", 2000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@xbgm*", 2000, 0, null);


//◆場所：秋葉原_ガード下
	OnBG(10,"bg0102100秋葉原_ガード下_通常");
	FadeBG(0,true);

	Wait(300);

	CreateSE("SE12","seガヤ_交通少_l");
	MusicStart("SE12",2000,700,0,1000,null,true);


	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
//◆音声指示：遠くから
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/500200800jbr">
「あ……ありがとござました……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeFF($C_次,0,0,500,0,-50,Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200810nko">
「う……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200820nko">
「お……おもい……」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200830nko">
「しっぱい」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200840nko">
「もう、からだが、ある」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200850nko">
「だから、おもみも、ある」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200860nko">
「すこし、たいへん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2052);}

//	SetVolumeEX("SE*", 2000, 0, null);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",1000,100,0,1000,null,false);
	SetVolume("SE01", 3000, 700, null);
	Wait(3000);

//	SoundPlay("@xbgm05",0,450,true);


	St("ML",700, @-200,@0,"bu平次_御用だ_shout");
	Move("@StNameML/ML*", 200, @0200, @0, Dxl3, false);
	SetVolume("SE01", 100, 0, null);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500200870fjh">
「邪魔だ邪魔だァ！」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200880nko">
「ん？」

{	St("ML",700, @0,@0,"bu平次_御用だ_angry");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 20, 0, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500200890fjh">
「退け退けェ！！」

{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200900nko">
「む！」

{	St("ML",700, @0,@0,"bu平次_御用だ_shout");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 20, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/500200910fjh">
「御用だ御用だァ！」

{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200920nko">
「…………」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200930nko">
「バックギャモンのほうに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200940nko">
「……けいさつ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("@SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);

{	ClockPass(2053);}

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @50,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 400, @-50, @0, Dxl1, false);
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200950nko">
「でも……ふしぎなかんじ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200960nko">
「あのひとは、わたしをよけた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200970nko">
「みんなわたしをみる」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200980nko">
「わたしはにんしきされている」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500200990nko">
「たいせつなものをなくしたきもする」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201000nko">
「でもだいじょうぶ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201010nko">
「さわれるの、だいじ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201020nko">
「にとりいがいとはなせる」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201030nko">
「だからざいりょうかえる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201040nko">
「にとりいがいにさわれる」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201050nko">
「だからりょうりできる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2056);}
	Wait(2000);
	SetVolumeEX("SE*", 2000, 0, null);

//◆場所：ドンガ・バチョ_家電売り場
	OnBG(10,"bg1801111ドンガ・バチョ_家電売り場_通常");
	FadeBG(0,true);
	#bg1801100ドンガ・バチョ_家電売り場_通常 = true;

	CreateSE("SE11","seガヤ_ガバチョのテーマ_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
<voice name="バイトＡ" class="その他男声" src="voice/20/500201060e13">
//【バイトＡ】
「いらっしゃいませー！」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201070nko">
「カレーつくる」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201080nko">
「ざいりょう」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201090e13">
「え……？　カレーですか？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201100e13">
「いや、でもここ、家電売り場で――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201110nko">
「なべ、いる」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201120e13">
「ああ、カレーを作るための道具が一式欲しい、と」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201130nko">
「そう。わたしにもりょうりできる」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201140e13">
「手料理、いいですよね！」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201150nko">
「にとりはてりょうりすき」

{	DeleteAllSt(200,true);}
<voice name="バイトＡ" class="その他男声" src="voice/20/500201160e13">
//【バイトＡ】
「いやあ、似鳥さんはこんな可愛い彼女さんにカレーを作ってもらえるなんて、幸せ――」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201170nko">
「エロゲーたくさんみた」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201180e13">
「え……エロゲー？」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201190nko">
「エロゲー。しってる？」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201200e13">
「あ……は、はい。
　一応あにあなと掛け持ちしてるんで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201210nko">
「てりょうりイベントある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201220nko">
「カレーつくる」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201230nko">
「そのときにとりしあわせ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201240nko">
「だからわたしもつくる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201250nko">
「フラグたつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	Move("@StNameC/C*", 200, @0, @40, Dxl1, true);
	Move("@StNameC/C*", 200, @0, @-60, Dxl3, true);
	Move("@StNameC/C*", 200, @0, @20, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201260nko">
「ロケットばくはつ」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201270nko">
「じゅせい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201280nko">
「ハッピーエンド」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201290nko">
「ちがう？」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201300e13">
「いや、あの、よくわからないんですが、はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("C",700, @0,@0,"buノーコa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201310nko">
「……ちがうの？」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201320e13">
「あー、いや、違うと限ったわけでも……はい」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201330nko">
「どっち？」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201340e13">
「あ、はい、そういうのが好きなひとなら、きっと」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201350nko">
「そろえて」

{	DeleteAllSt(200,true);}
<voice name="バイトＡ" class="その他男声" src="voice/20/500201360e13">
//【バイトＡ】
「そろえる……のですか？」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201370nko">
「みんなそろうべんりなドンガ」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201380e13">
「ええと、でもですね、お客様に楽しく選んで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ギリリリ！　カッターナイフの刃が伸びる

	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
//◆ＳＥ：キリキリ……カッターナイフの音
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201390nko">
「じかんない」

{	DeleteAllSt(200,true);}
<voice name="バイトＡ" class="その他男声" src="voice/20/500201400e13">
//【バイトＡ】
「ひっ！」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201410nko">
「はやくして」

{	DeleteAllSt(200,true);}
//◆音声指示：小声
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201420e13">
「今日は……こんなのばっかり……」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_カッター_刃出す04単発a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201430nko">
「はやく」

{	DeleteAllSt(200,true);}
//◆音声指示：小声
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/20/500201440e13">
「はい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(2059);}
	Wait(2000);

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @50,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 400, @-50, @0, null, false);
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201450nko">
「ざいりょうそろった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201460nko">
「はやくうちにかえる」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201470nko">
「…………ふふ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201480nko">
「ふしぎ」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201490nko">
「さいしょはあんなにたいへん」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201500nko">
「でもいまはかるがる」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201510nko">
「いえはもうすぐ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/500201520nko">
「もうすぐてりょうり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

	Move("@StNameC/C*", 500, @-100, @0, Axl1, false);
	DeleteAllSt(200,false);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	Wait(300);

	DrawDelete("絵黒幕", 600, 100, null, "blind_01_00_1", true);

	Wait(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 600, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	EndScene();
}
