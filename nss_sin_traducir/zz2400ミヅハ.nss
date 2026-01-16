
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zz2400ミヅハ.nss_MAIN
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

	if($GameClose){
		//今年のおみくじはもうおしまい。またらいねん
		VariableValue(#,"Fortune_Year"+$Year,true);
	}

	EndScript();
}

scene zz2400ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="560">
////////////header////////////
//file name "zz2400ミヅハ.nss"
//title "運勢占い"

////////////body////////////

//■再定義定型文

//=====================================================================
.//▼ミヅハ：エキストラから遷移した場合は表示しない
if(!$エキストラタイトル){

//◆場所：半田明神_境内_雪ノーマル新年
	PrintGO("上背景", 30000);
	OnBG(10,"bg0603511半田明神_境内_雪ノーマル新年");
	FadeBG(0,true);

{	St("C",10700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}

	//★徒歩：ＳＥ
	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zz24/000500010mzh">
「新年、あけましておめでとうございます！」

{	St("C",10700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",0,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zz24/000500020mzh">
「はてさて、あなたの今年の運勢は……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

}else{
//エキストラからの遷移
	CreateTexture("絵背景",10000,0,0,"cg/sys/extra/main/背景.png");
	SetAlias("絵背景", "絵背景");
	Fade("絵背景", 0, 0, null, true);

	CreateTexture("絵占い",10000,16,16,"cg/sys/adv/運勢占い見出し.png");
	SetAlias("絵占い", "絵占い");
	Request("絵占い", Smoothing);
	Fade("絵占い", 0, 0, null, true);
	Zoom("絵占い", 0, 1500, 1500, Dxl2, true);

	Zoom("絵占い", 200, 1000, 1000, Dxl1, false);
	Fade("絵背景", 200, 1000, null, false);
	Fade("絵占い", 200, 1000, null, false);
}
//=====================================================================


.//★らんだむらんだむ・・・
	$FortuneNum=Random(18);
//	$FortuneNum=1;
//	#SYSTEM_sync_voice_and_text=false;//音声同期








//=====================================================================
//◆演出指示：以下キャラ毎ランダム


.//▼沙紅羅////////////////////////////////
if($FortuneNum==0){

{	St("C",10700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/zz24/000500030skr">
「キチ吉マシン・猛レースだ！」

{	St("C",10700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/zz24/000500040skr">
「暴蛇羅号に負けないスーパーマシンをつくって、明日に向かって走れ！」

{	St("C",10700, @0,@0,"bu沙紅羅_通常_happy");
	St("C",10700, @-200,@0,"fu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1800);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/zz24/000500050skr">
「ラッキーアイテムは……大漁旗だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @-200,@0,"fu沙紅羅_前のめり_happy");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼千秋////////////////////////////////
if($FortuneNum==1){

{	St("C",10700, @0,@0,"fu千秋_頭突き_angry2");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/zz24/000500060kit">
「藤吉だ！」

{	St("C",10700, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/zz24/000500070kit">
「サルと呼ばれても泣くな！
　きっといつか、天下を獲る日がやって来る！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",10700, @0,@0,"fu千秋_朗らか_happy");
	St("C",10700, @0,@0,"fu千秋_朗らか_shock");
	St("C",10600, @0,@0,"bu千秋_驚天_shy");
	FadeSt("C",200,true);
	Request($C_先, Smoothing);
	Zoom($C_先, 0, 1100, 1100, Dxl1, true);

	//★徒歩：シェイクプロセス開始
	ShakePro1($C_次, 300, 0, 3, 0, 0, 500, Dxl1, 1800);
	ShakePro2($C_先, 300, 0, 3, 0, 0, 500, Dxl1, 3000);
	//★ズームプロセス：開始
	ZoomPro($C_先, 200, 1000, 1000, Dxl2, 2900);
	//★立ち絵プロセス：開始
	FadeFadeStPro("C", 200, 1700, 200, 700);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/zz24/000500080kit">
「ラッキーアイテムは……え？　女装ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10600, @0,@0,"bu千秋_驚天_shy");
	//★徒歩：ズームプロセス停止
	DustZoom();
	//★徒歩：シェイクプロセス停止
	DustShake1();
	DustShake2();

	TextBoxDelete(150);

}
/////////////////////////////////////////////////





.//▼恵那////////////////////////////////
if($FortuneNum==2){

{	St("C",10700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/zz24/000500090fje">
「火災報吉よ！」

{	St("C",10700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/zz24/000500100fje">
「火のないところに煙は立たない！
　今年は火消しとして大活躍ね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",10700, @0,@0,"bu恵那_一休_pride");
	St("C",10700, @0,@100,"fu恵那_一休_smile");
	FadeSt("C",200,true);

	//★徒歩：ムーブプロセス開始
	MovePro1($C_今, 400, @0, @50, Axl1, 2000);
	MovePro2($C_次, 400, @0, @-100, Dxl1, 2300);
	//★立ち絵プロセス：開始
	DeleteFadeStPro("C", 200, 1800, 200, 100);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/zz24/000500110fje">
「ラッキーアイテムは……消火器です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"fu恵那_一休_smile");

	//★徒歩：ムーブプロセス停止
	DustMovePro1();
	DustMovePro2();

	TextBoxDelete(150);

}
/////////////////////////////////////////////////



.//▼似鳥////////////////////////////////
if($FortuneNum==3){

	St("C2",10800, @800, @1000,"fu似鳥_ラッパー_rage");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	Move($C2_次, 500, @-900, @-1000, Dxl3, false);
//	Shake($C2_次, 500, 0, 50, 0, 0, 500, Dxl1, false);
	FadeSt("C2",0,false);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/zz24/000500120nki">
「だん吉だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Zoom($C_今, 150, 900, 900, Axl2, false);

	St("C",10700, @0,@100,"bu似鳥_眼鏡上げ_angry");
	St("C",10700, @0,@0,"bu似鳥_通常_pinch");
	St("C",10700, @0,@0,"bu似鳥_通常_rage");

	Move($C2_今, 200, @0, @100, Axl1, false);
	DeleteSt("C2",200,false);

	Move($C_次, 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);
	//PlainFadeSt("C",200,true,11000);
	//★立ち絵プロセス：開始
	FadeFadeStPro("C", 200, 1500, 200, 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/zz24/000500130nki">
「今年こそ……きっと、マンガでデビューができる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu似鳥_通常_rage");

if(#ClearTrue){
	St("C",10700, @0,@0,"bu似鳥_背張る_normal");
	St("C",10700, @-50,@-20,"fu似鳥_背張る_shout");
}else{
	St("C",10700, @0,@0,"bu似鳥_通常_happy");
	St("C",10700, @-50,@-20,"fu似鳥_通常_pride");
}
	Zoom($C_先, 0, 900, 900, null, true);
	FadeSt("C",200,true);

	//★徒歩：シェイクプロセス開始
	ShakePro($C_次, 500, 0, 10, 0, 0, 500, Dxl1, 1500);
	//★徒歩：ズームプロセス開始
	ZoomPro($C_次, 200, 1000, 1000, Axl1, 1500);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/zz24/000500140nki">
「ラッキーアイテムは、土管！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★徒歩：シェイクプロセス停止
	DustShake();
	//★徒歩：ズームプロセス停止
	DustZoom();

if(#ClearTrue){
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @-50,@-20,"fu似鳥_背張る_shout");
}else{
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @-50,@-20,"fu似鳥_通常_pride");
}

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼ノーコ////////////////////////////////
if($FortuneNum==4){

if(#ClearTrue){
	St("C",10700, @0,@0,"buノーコb_通常_rage");
}else{
	St("C",10700, @0,@0,"buノーコa_通常_sad");
}

	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/zz24/000500150nko">
「ほうきょうよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

if(#ClearTrue){
	St("C",10700, @0,@0,"fuノーコb_通常_smile");
	St("C",10700, @-100,@50,"fuノーコa_カッター_smile");
}else{
	St2("C",10700, @0,@0,"fuノーコa_通常_mad","cg2/",".png");
	St("C",10700, @-100,@50,"fuノーコa_カッター_smile");
}
	Request($C_次, Smoothing);
	Zoom($C_次, 0, 800, 800, null, true);

	DeleteSt("C",500,true);

	//★徒歩：ムーブプロセス開始
	MovePro($C_先, 500, @0, @-50, Dxl1, 7500);

	Zoom($C_次, 10000, 1000, 1000, null, false);
	FadeSt("C",500,false);

	//★立ち絵プロセス：開始
	//DeleteFadeDeleteFadeStPro("C", 500, 4700, 300, 0, 300, 1200, 300, 0);
	//FadeDeleteFadeStPro("C", 200, 6800, 100, 0, 200, 0);
	DeleteFadeStPro("C", 500, 6000, 200, 800);
	//FadeStPro("C", 200, 7500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/zz24/000500160nko">
「おおきければいいというのはまちがい。
　わたしが、きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

if(#ClearTrue){
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @-100,@0,"fuノーコa_カッター_smile");
}else{
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @-100,@0,"fuノーコa_カッター_smile");
}

	//★徒歩：ムーブプロセス停止
	DustMove();


if(#ClearTrue){
	St("C",10600, @0,@0,"buノーコb_幽霊_think");
	St("C",10700, @0,@0,"buノーコb_幽霊_normal");
}else{
	St("C",10600, @0,@0,"buノーコa_幽霊_think");
	St("C",10700, @0,@0,"buノーコa_幽霊_smile");
}

	Move($C_今, 200, @0, @40, Axl1, false);
	DeleteSt("C",200,true);

	MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/zz24/000500170nko">
「ラッキーアイテムは、カッター」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

if(#ClearTrue){
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buノーコb_幽霊_normal");
}else{
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buノーコa_幽霊_smile");
}

	TextBoxDelete(150);
}
/////////////////////////////////////////////////





.//▼フウリ////////////////////////////////
if($FortuneNum==5){

{	St("C",10700, @0,@0,"buフウリ_前のめり_other");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/zz24/000500180wfu">
「吉ンジローです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",10700, @0,@0,"buフウリ_前のめり_smile");
	St("C",10700, @0,@0,"fuフウリ_前のめり_smile");
	St("C",10700, @0,@0,"fuフウリ_前のめり_shout");
	St("C",10600, @0,@50,"buフウリ_頬手_shy");

	FadeSt("C",200,true);

	//★徒歩：シェイクプロセス開始
	ShakePro1($C_次, 500, 0, 5, 0, 0, 500, Dxl1, 2000);
	ShakePro2($C_来, 500, 10, 0, 0, 0, 500, Dxl1, 7500);
	//★徒歩：ムーブプロセス開始
	MovePro1($C_先, 500, @0, @50, Dxl1, 7500);
	MovePro2($C_来, 500, @0, @-50, Dxl1, 7500);
	//★立ち絵プロセス：開始
	FadeFadeFadeStPro("C", 200, 1800, 200, 1000, 300, 3700);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1051]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/zz24/000500190wfu">
「秋葉原に来たらここ！
　不思議な匂いはするけれど、お腹は大満足！」

{
	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buフウリ_頬手_shy");
	//★徒歩：ムーブプロセス停止
	DustMove1();
	DustMove2();
	//★徒歩：シェイクプロセス停止
	DustShake1();
	DustShake2();

	St("C",10700, @0,@0,"buフウリ_胸手_smile");
	St("C",10700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/zz24/000500200wfu">
「ラッキーアイテムは、メンチカツです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buフウリ_通常_smile");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼みそ・ブー////////////////////////////////
if($FortuneNum==6){

{	St("ML",10600, @-30,@-50,"buみそa_オラオラ_pride");
	St("MR",10700, @40,@160,"buブーa_オラオラ_normal");

	MoveEX($ML_次, 200, 500, 0, Dxl1, false);
	MoveEX($MR_次, 200, -500, 0, Dxl1, false);

	FadeSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ブー】
<voice name="ブー" class="ブー" src="voice/zz24/000500210buu">
「秘密吉だ！」

{	St("ML",10600, @-30,@-50,"buみそa_オラオラ_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zz24/000500220mso">
「湿気の中にエロ本を置いておくと、なんか臭い匂いがするから気をつけろ！」

{	St("MR",10700, @40,@160,"buブーa_オラオラ_happy");
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zz24/000500230buu">
「ラッキーアイテムは、鉄橋だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼ミリＰ////////////////////////////////
if($FortuneNum==7){

{	St("C",10700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zz24/000500240mrp">
「ヘルズ・吉ンよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	St("C",10700, @0,@0,"buミリＰa_ショータイム_pride");
	St("C",10700, @0,@0,"buミリＰa_ショータイム_shout");

	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3800);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zz24/000500250mrp">
「アルちゃんやスタちゃんが這い出た、希望の街！
　さあ！　あなたもスター街道まっしぐら！」


{	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buミリＰa_ショータイム_shout");
	St("C",10700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zz24/000500260mrp">
「ラッキーアイテムは、恋愛ＱＰ（ハート）ミリＰの恋愛占いよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼鈴////////////////////////////////
if($FortuneNum==8){

	St("C",10700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zz24/000500270fjr">
「吉ンウイングフェイスロック！！」

{	St("C",10700, @0,@0,"bu鈴_シリアス_normal");
	St("C",10700, @0,@0,"bu鈴_シリアス_sad");
	St("C",10700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeFadeStPro("C", 200, 2200, 200, 700);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zz24/000500280fjr">
「これで相手を極めちゃえば――
　彼氏のハートもイチコロよ！」

{	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu鈴_通常_sad");
	St("C",10700, @0,@0,"bu鈴_通常_normal");
	St("C",10700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zz24/000500290fjr">
「ラッキーアイテムは、ゴング！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu鈴_通常_smile");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼双六////////////////////////////////
if($FortuneNum==9){

{	St("C",10700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zz24/000500300ksr">
「生吉だ」

{	St("C",10700, @0,@0,"bu双六a_通常_normal");
	St("C",10700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 400, 5500);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zz24/000500310ksr">
「一応、ちゃんと献血は行くように
　秋葉原だと美少女ステッカーがもらえたりすっからな」

{	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu双六a_通常_pride");
	St("C",10700, @0,@0,"bu双六a_通常_normal");
	St("C",10700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1800);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zz24/000500320ksr">
「ラッキーアイテムは、注射器だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu双六a_横向き_pride");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼歌門////////////////////////////////
if($FortuneNum==10){

{	St("C",10700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zz24/000500330kms">
「説凶です」

{	St("C",10700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zz24/000500340kms">
「そのお尻を折檻されたくなかったら、規則正しい生活を心がけることですね」

{	St("C",10700, @0,@0,"bu歌門_通常_normal");
	St("C",10700, @0,@0,"bu歌門_通常_smile");
	FadeSt("C",200,true);

	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1700);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zz24/000500350kms">
「ラッキーアイテムは、破魔矢です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu歌門_通常_smile");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼平次////////////////////////////////
if($FortuneNum==11){

{	St("C",10700, @0,@0,"bu平次_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zz24/000500360fjh">
「大馬鹿野郎のこんこん吉！　だ！」

{	St("C",10700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zz24/000500370fjh">
「ボーッとしてると、痛い目見るからな！
　御用になりたくなかったら、シャキッとしな！」

{	St("C",10700, @0,@0,"bu平次_通常_normal");
	St("C",10700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1850);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zz24/000500380fjh">
「ラッキーアイテムは、十手だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu平次_御用だ_happy");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼村崎////////////////////////////////
if($FortuneNum==12){

{	St("C",10700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zz24/000500390msi">
「<RUBY text="あきち">空吉</RUBY>です」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zz24/000500400msi">
「開いていると思って勝手に商売を始めると、犬をけしかけられたりするので注意して下さいね」

{	St("C",10700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zz24/000500410msi">
「ラッキーアイテムは、段ボールです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼貫太////////////////////////////////
if($FortuneNum==13){

{	St("C",10700, @0,@0,"bu貫太_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/zz24/000500420odk">
「大吉だよ」

{	St("C",10700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/zz24/000500430odk">
「夢はきっと、叶うだろう。
　探していた人とも出会えるはず」

{
	St("C",10700, @0,@0,"bu貫太_横向き_normal");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1800);
}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/zz24/000500440odk">
「ラッキーアイテムは、茶釜だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"bu貫太_横向き_normal");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼ユージロー////////////////////////////////
if($FortuneNum==14){

{	St("C",10700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zz24/000500450ujr">
「わんわんわんわんわん！」

{	St("C",10700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zz24/000500460ujr">
「わんわんわんわん、わんわんわんわんわんわん」

{	St("C",10700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zz24/000500470ujr">
「わんわんわんわんわ、わんわんわわんわん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


}
/////////////////////////////////////////////////




.//▼ＡＤ////////////////////////////////
if($FortuneNum==15){

{	St("C",10700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zz24/000500480adi">
「前線吉です！」

{	St("C",10700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zz24/000500490adi">
「マスター前には必須！
　今年もお世話になります……」

{	St("C",10700, @0,@0,"buＡＤ_通常_normal");
	St("C",10700, @0,@0,"buＡＤ_通常_angry");
	St("C",10700, @0,@0,"buＡＤ_通常_cry");

	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeFadeStPro("C", 200, 3800, 200, 1900);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zz24/000500500adi">
「ラッキーアイテムは、前線吉を利用している時点でラッキーでも何でもないので諦めて下さい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buＡＤ_通常_cry");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼ジャブル////////////////////////////////
if($FortuneNum==16){

{	St("C",10700, @0,@0,"buジャブル_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/zz24/000500510jbr">
「福沢諭吉デスネ」

{	St("C",10700, @0,@0,"buジャブル_通常_hard");
	St("C",10700, @0,@0,"buジャブル_通常_normal");
	FadeSt("C",200,true);

	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 5000);
}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/zz24/000500520jbr">
「天は人の上に人をツクラズ。
　とても心がアラワレる言葉デス」

{	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buジャブル_通常_normal");

	St("C",10700, @0,@0,"buジャブル_通常_smile");
	St("C",10700, @0,@0,"buジャブル_通常_happy");
	FadeSt("C",200,true);

	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2500);
}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/zz24/000500530jbr">
「ラッキーアイテムは、万札ネ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buジャブル_通常_happy");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




.//▼ロクロー////////////////////////////////
if($FortuneNum==17){

{	St("C",10700, @0,@0,"buロクローb_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/zz24/000500540rkr">
「吉ィ・ホークだ」

{	St("C",10700, @0,@0,"buロクローb_通常_smile");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/zz24/000500550rkr">
「さあ、可愛いキティちゃん。
　僕のホークにご挨拶をしてごらん……」

{	St("C",10700, @0,@0,"buロクローb_通常_pride");
	St("C",10700, @0,@0,"buロクローb_通常_shout");
	FadeSt("C",200,true);

	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);
}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/zz24/000500560rkr">
「ラッキーアイテムは、『タイエキ』だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★立ち絵プロセス：再定義
	AgainSt("C",10700, @0,@0,"buロクローb_通常_shout");

	TextBoxDelete(150);

}
/////////////////////////////////////////////////




	EndScene();
}
