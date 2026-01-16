
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2030沙紅羅_フウリ.nss_MAIN
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

//あきゅん「演出：SE引継ぎのためロック」
	Request("@SE*", Lock);

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName="2040沙紅羅_フウリ.nss";
	}else{
		$GameName="a2040沙紅羅_フウリ.nss";
	}
}

scene 2030沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1150">
////////////header////////////
//file name "2030沙紅羅_フウリ.nss"
//title "全国ゆるキャラバン！"
//previous "2020沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome1" = false） "a2040沙紅羅_フウリ.nss"
//next "フウリ"（"flkagome1" = false） "a2040沙紅羅_フウリ.nss"

//next "沙紅羅" "2040沙紅羅_フウリ.nss"
//next "フウリ" "2040沙紅羅_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(2030);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_ざわざわ_l");
	MusicStart("SE01",1000,400,0,1000,null,true);


	FadeDelete("上背景", 200, null, true);


//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200010mrp">
「それではみんな、準備はオーケー？」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200020mrp">
「ゆるキャラの誇りを！　夢を！　名誉をかけて！」

//◆音声指示：スピーカー越し
{	SetVolumeEX("SE01", 600, 0, null);
	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200030mrp">
「レディ――――」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_angry");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200040mrp">
「イイイイイイイイイイイイ――――――トッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("揺用", 2005);
	SetBlur("揺用", true, 5, 500, 50, false);

//	Move("@StNameC/C*", 200, @+300, @0, Dxl1, false);
	DeleteSt("C",0,true);



	SetVolumeEX("SE01", 1000, 0, null);
	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,1000,0,1000,null,true);





	CreateTextureEX("絵背景100", 100, Center, -120, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se擬音_ゴング01");
	MusicStart("SE01",0,1200,0,1000,null,false);


	Move("揺用", 300, @0, @256, Axl2, false);
	Zoom("揺用", 300, 3000, 3000, Axl1, false);
	Wait(200);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

	SoundPlay("@xbgm03",0,450,true);


{	St("C",700, @0,@50,"fu沙紅羅_通常_shout");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200050skr">
「<RUBY text="いただきます">威汰蛇鬼魔栖</RUBY>ッ！！」

{
	Move("@StNameC/C*", 200, @0, @50, Dxl1, false);
	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200060skr">
「うおおおあむがむんむひむほむむむむむむ……ッ！」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200070skr">
「んぐっ、んぐっ、んぐっ――――ぷはぁっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2031);}


	SetVolumeEX("SE10", 2000, 400, null);


	TextBoxDelete(150);


//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200080mrp">
「各選手、一斉に食いついたッ！」

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200090mrp">
「石川カレーの大本命！
　<RUBY text="ごーわん">５１</RUBY>カレーの『豪腕スペシャル』」

{	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200100mrp">
「サムライジャパンのワールドチャンピオンを記念して創られたこのカレー！　なんと器がチャンピオンベルト！」

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200110mrp">
「現在アメリカで活躍している老年大リーガーイチロウ・キンザイの大好物と言われているけれど、果たして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);

	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク/絵演立絵2", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵3", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	St("C",700, @0,@100,"fu沙紅羅_通常_shout");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200120skr">
「<RUBY text="ごちそうさま">護恥走裟魔</RUBY>ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200130mrp">
『おおっと、すごい！』

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200140mrp">
『秋葉原チーム、一気に５１カレーを完食』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 400, 1200, null);

	TextBoxDelete(150);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵2", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 0, null, true);


	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク/絵演立絵2", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景裏方", 100, -800, -320, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, true);


	St("ML",700, @0,@0,"fuフウリ_通常_shock");
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200150wfu">
「沙紅羅ちゃん、すごいです！」

{	St("MR",700, @0,@0,"fu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200160ktt">
「ホントに腹減ってたんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("MR",200,true);
	Move("絵背景裏方", 200, -800, @0, Axl1, false);
	Fade("絵背景裏方", 200, 0, null, false);
	St("C",700, @0,@0,"fu沙紅羅_通常_happy");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200170skr">
「よっしゃあ！　どんなもん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2032);}

	SetVolumeEX("SE10", 2000, 400, null);

	TextBoxDelete(150);

	Move("絵マスク/絵演立絵3", 0, 512, 200, null, true);

	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, null, false);
	Move("絵マスク/絵演立絵3", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200180mrp">
『続きまして――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);
	St("C",700, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200190skr">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"fuフウリ_通常_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200200wfu">
「なんと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//	Delete("絵マスク/絵*");
//	Delete("絵マスク");
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);


//◆音声指示：スピーカー越し

	SetVolumeEX("SE10", 500, 1200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200210mrp">
『伝説のタミドン！　肉飯マシマシマシマシの登場ッ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, true);
	Delete("絵マスク/絵*");
	Delete("絵マスク");
	SetVolumeEX("SE10", 2000, 400, null);
	St("MR",700, @0,@0,"fu千秋_通常_sigh");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200220ktt">
「ですよねー」

{	St("MR",700, @0,@0,"fu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200230ktt">
「あんな呆気なく番組終わるはずないし……」

{	St("ML",700, @0,@0,"fuフウリ_頬手_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200240wfu">
「それにしてもでかい！　です……」

{	St("ML",700, @0,@0,"fuフウリ_前のめり_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200250wfu">
「沙紅羅ちゃん、がんばってー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2033);}


	TextBoxDelete(150);

	DeleteSt("ML",200,true);
	Move("絵背景裏方", 200, -800, @0, Axl1, false);
	Fade("絵背景裏方", 200, 0, null, false);

	St("C",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200260skr">
「おーよ！」

{	St("C",700, @0,@0,"fu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200270skr">
「はぐっ、んむっ、んぐっ、んぐぐ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200280wfu">
「ふぁいとおー！！」

{	St("ML",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200290wfu">
「ほらアッキーちゃんも、一緒に応援しないと！」

{	St("MR",700, @0,@0,"fu千秋_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200300ktt">
「いえ、あの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 2000, 0, null);

	SetVolumeEX("SE10", 2000, 300, null);

//	TextBoxDelete(150);

//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");
//	Fade("絵背景100", 0, 1000, null, true);

	St("ML",700, @0,@0,"fuフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200310wfu">
「ん？　どうしました？　お腹でも痛く――」

{
	St("MR",700, @0,@0,"fu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200320ktt">
「どうしてこの番組に出ようと思ったんですか？」

{	St("ML",700, @0,@0,"fuフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200330wfu">
「え――？　な、なんで急に？」

{	St("MR",700, @0,@0,"fu千秋_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200340ktt">
「だって、あんな忙しいアルバイトを抜け出して、何をするのかと思ったら大食い大会で……」

{	St("MR",700, @0,@0,"fu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200350ktt">
「ただたくさん食べたかった、ってわけじゃないですよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2034);}


//	TextBoxDelete(150);

	St("ML",700, @0,@0,"fuフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200360wfu">
「むー。アッキーちゃんは、人を見る目がありますね」

{	St("ML",700, @0,@0,"fuフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200370wfu">
「実は私……ミリＰさんを助けたかったのです」

{	St("MR",700, @0,@0,"fu千秋_朗らか_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200380ktt">
「あの、司会者の？」

{	St("ML",700, @0,@0,"fuフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200390wfu">
「バンドのプロデューサーとして、私たちをデビューさせてくれるといってくれました」

{	St("ML",700, @0,@0,"fuフウリ_胸手_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200400wfu">
「その恩人が困っているのなら、私も一肌脱がずにはいられません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"fu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200410ktt">
「それだけ？」

{	St("ML",700, @0,@0,"fuフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200420wfu">
「きゅ？」

{	St("MR",700, @0,@0,"fu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200430ktt">
「それだけのために、あんなに必死に？」

{	St("ML",700, @0,@0,"fuフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200440wfu">
「…………」

{	St("ML",700, @0,@0,"fuフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200450wfu">
「アッキーちゃんは、なんか不思議ですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"fuフウリ_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200460wfu">
「なんていうか、こう、昔から知ってるみたいな、私の心を開かせてしまう力があるみたいな」

{	St("MR",700, @0,@0,"fu千秋_朗らか_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200470ktt">
「やっぱり、そうなんですね？」

{	St("ML",700, @0,@0,"fuフウリ_胸手_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200480wfu">
「……わかりました。白状します」

{	St("ML",700, @0,@0,"fuフウリ_胸手_shy");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200490wfu">
「私、好きなひとがいるんです」

{	St("MR",700, @0,@0,"fu千秋_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200500ktt">
「好きな、ひと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2035);}


//	TextBoxDelete(150);
	SetVolumeEX("SE10", 2500, 1, null);

	SoundPlay("@xbgm25",0,450,true);

{	St("ML",700, @0,@0,"fuフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200510wfu">
「幼馴染みで、小さいころから一緒で。
　とてもとても、仲が良かったのです」

{	St("ML",700, @0,@0,"fuフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200520wfu">
「でも……私には、許嫁の人がいました」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200530wfu">
「好きな人は、許嫁の人に遠慮して、私の元を離れて、東京に出て行ってしまったのです」

{	St("ML",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200540wfu">
「そのまま、長い時間が経ちました。
　私は村で、普通通りに生活を続けていましたが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"fu千秋_朗らか_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200550ktt">
「……フウリさんの気持ちは、変わらなかった？」

{	St("ML",700, @0,@0,"fuフウリ_胸手_shy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200560wfu">
「変わらないどころか、どんどん、好きになっていって。
　それで私も、たまらず上京したのです」

{	St("ML",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200570wfu">
「でも……東京は、思ったよりずっと、広かった……
　捜しても見つからなくて、連絡もとれなくて……」

{	St("MR",700, @0,@0,"fu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200580ktt">
「だからテレビに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"fuフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200590wfu">
「そうです。バンドで成功したり、テレビ番組に出れば、きっと気付いてくれると、そう思って」

{	St("MR",700, @0,@0,"fu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200600ktt">
「その……好きな人、ですか？
　酷いヤツですね」

{	St("ML",700, @0,@0,"fuフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200610wfu">
「え……？」

{	St("MR",700, @0,@0,"fu千秋_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200620ktt">
「フウリさんを捨てて、どっか行ったってことでしょ？
　全然、連絡もしてないんでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"fuフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200630wfu">
「それは……きっと、何か理由があります！」

{	St("ML",700, @0,@0,"fuフウリ_胸手_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200640wfu">
「離れてしまうときに、いつか絶対に会えるって、そう約束してくれたんです！」

{	St("MR",700, @0,@0,"fu千秋_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200650ktt">
「その約束も、忘れちゃった可能性はありませんか？」

{	St("MR",700, @0,@0,"fu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200660ktt">
「もしくは、他に好きな人ができたとか――
　最悪、もうこの世に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2036);}


	TextBoxDelete(150);

{	St("ML",700, @0,@0,"fuフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200670wfu">
「だめー！」

{	St("ML",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200680wfu">
「そういうことを、口に出すなんて……
　アッキーちゃんは、意地悪さんです」

{	St("MR",700, @0,@0,"fu千秋_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200690ktt">
「あ……うん、ごめん。
　そのことは、もう言いません」

{	St("MR",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200700ktt">
「でも……オレ、かわいそうだと思うんですよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"fu千秋_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/300200710ktt">
「その……許嫁の方は、どうなっちゃったんですか？」

{
	SetVolumeEX("@xbgm*", 1000, 0, null);
	Wait(200);
	St("ML",700, @0,@0,"fuフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200720wfu">
「え……」

{	St("ML",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200730wfu">
「太四郎さんが、どうなったか……？」

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200740mrp">
『完・食ぅぅッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 2000, 1000, null);

	TextBoxDelete(150);

	Fade("絵背景裏方", 300, 0, null, true);


//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_happy.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_angry.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Move("絵マスク/絵演立絵*", 0, 512, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 450, InBottom, Dxl1, true);




//◆音声指示：スピーカー越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200750mrp">
『な、なんということかしら！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200760mrp">
『秋葉原チーム、沙紅羅選手！
　圧倒的な強さで、タミドンもクリアッ！』

{	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200770mrp">
『他チームはまだタミドンに手をつけたばかり！
　これは強いわッ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2037);}


//	TextBoxDelete(150);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵2", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 0, null, true);
	Delete("絵マスク/絵*");
	Delete("絵マスク*");

	SetVolumeEX("SE10", 2000, 400, null);

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200780skr">
「う……うげっぷ」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200790skr">
「はは……さすがに、ちょっと、きつかったぜ」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200800wfu">
「沙紅羅ちゃん、カッコイイです……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200810skr">
「おうよ……当然だ！」

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200820mrp">
『続きましては――』

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200830skr">
「まあ、まだ出てくるよな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200840mrp">
『喫茶店「プリーズ」のマダム謹製！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200850mrp">
『夜はご飯がなくなるからパスタでね！
　特製カレーパスタ特盛りッ！！』

{
	SetVolumeEX("SE10", 300, 1000, null);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク枠", 200, 0, null, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	St("C",700, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200860skr">
「い、いよぉし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 2000, 400, null);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

{	St("C",700, @0,@0,"fu沙紅羅_通常_pain");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200870skr">
「やったろうじゃ……ねぇか……」

{
	SoundPlay("@xbgm16_noint",0,450,true);

	St("C",700, @0,@0,"fu沙紅羅_通常_pinch");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200880skr">
「はむ……んむ……んむ……」

{
	Move("@StNameC/C*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200890skr">
「ん……ん……ん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200900skr">
「んぐぐぐぐぐぐ……！」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"fuフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200910wfu">
「だ……大丈夫ですか、沙紅羅ちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2038);}


//	TextBoxDelete(150);

{	St("C",700, @0,@0,"fu沙紅羅_通常_think");
	DeleteSt("ML",200,false);
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200920skr">
「らひ……んぐっ。だいじょうぶ……じゃ、ない……」

{	St("ML",700, @0,@0,"fuフウリ_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200930wfu">
「だったらあの、無理しないでも、次の私が――」

{	St("C",700, @0,@0,"fu沙紅羅_通常_pinch");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200940skr">
「けど――ここで諦めたら、女が廃る」

{	St("C",700, @0,@0,"fu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200950skr">
「こんな場所で諦めたら、弟に顔向けできねえだろ！」

{	St("ML",700, @0,@0,"fuフウリ_胸手_sad");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300200960wfu">
「沙紅羅ちゃん……」

{	St("C",700, @0,@50,"fu沙紅羅_通常_rage");
	DeleteSt("ML",200,false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/300200970skr">
「うおおおおおおお――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 300, 1000, null);

	Move("@StNameC/C*", 200, @0, @50, Axl1, false);
	DeleteAllSt(200,true);


	TextBoxDelete(150);
/*
//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);
*/


//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200980mrp">
『おおっと、すごい！』

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300200990mrp">
『一度は死んだかと思った秋葉原チーム沙紅羅、不死鳥のようにペースが復活よ！』

{	Fade("絵マスク/絵演立絵3", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201000mrp">
『なんていうド根性ッ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);

	DeleteSt("C",200,true);
	Delete("絵マスク/絵*");
	Delete("絵マスク*");

//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("", 0, 1000, null, true);


	Wait(800);

//◆音声指示：スピーカー越し
{	St("C",700, @20,@50,"buミリＰb_ショータイム_shout");
	Move("@StNameC/C*", 200, @-20, @-50, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201010mrp">
『全国ゆるキャラバン――
　熱ゆるい戦いは、まだ始まったばかりよ！』

{	St("MR",700, @+50,@0,"buＡＤ_通常_angry");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/300201020adi">
「はい、ＣＭ入りました！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2039);}


//	TextBoxDelete(150);
	SetVolumeEX("SE10", 2000, 300, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);

	OnBG(100,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);

	Wait(300);

	St("ML",700, @-200,@0,"buミリＰa_ショータイム_happy");
	Move("@StNameML/ML*", 200, @+200, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201030mrp">
「フウリちゃん！」

{	St("ML",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201040mrp">
「まさかこんな強烈なキャラ連れてくるなんてね。
　テレビってのがわかってるじゃない」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300201050wfu">
「いえ、それは、たまたまというか……」

{	St("ML",700, @0,@0,"buミリＰa_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201060mrp">
「たまたまだろうと、その人の持って生まれたツキよ。
　この調子で、頑張って頂戴」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/300201070wfu">
「は、はい」

{	DeleteSt("MR",200,true);
	St("MR",700, @+100,@0,"buＡＤ_通常_sad");
	Move("@StNameMR/MR*", 300, @-100, @0, Dxl2, false);
	FadeSt("MR",300,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/300201080adi">
「ミリＰさん！　ホントに大丈夫でしょうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/300201090adi">
「フウリさんって、すごい大食いなんですよね？
　このままのペースだと、すぐになくなっちゃう……」

{	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201100mrp">
「だったら追加で用意しなさい！」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/300201110adi">
「え、でももう大食いメニューは……」

{	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201120mrp">
「アンタ、秋葉原出身でしょ？
　秋葉原っぽい食べ物ならなんでもいいから、早く！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201130mrp">
「あと、ソトカンダーのデザイナーは捕まったの？」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/300201140adi">
「それが、色々探してるんですけど……」

{	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/300201150mrp">
「ウダウダ言ってないで、さっさと見つけなさい！
　そのデザイナーが、番組の後半の鍵なんだからね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);
	Delete("絵背景裏方");
	Delete("絵背景100");


	EndScene();
}
