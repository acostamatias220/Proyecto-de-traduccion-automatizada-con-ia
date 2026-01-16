
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1730沙紅羅.nss_MAIN
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
	$GameName = "1800沙紅羅.nss";

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1730沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="590">
////////////header////////////
//file name "y1730沙紅羅.nss"
//title "月夜乃沙紅羅、上京"

////////////footer////////////
//next "沙紅羅" "1800沙紅羅.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//CreateColorSP("絵色黒", 5000, "#000000");

{	ClockPass(1740);}

//晴海通り
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,700,0,1100,null,true);

	WaitKey(2000);

	SetFrequency("SEL01", 300, 1000, null);
	//FadeDelete("上背景", 0, null, true);
	DrawDelete("上背景", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);

	SetVolumeEX("SE*", 1000, 350, null);
	SoundPlay("@xbgm03",0,450,true);

/*
	CreateMask("マスク", 0, 0, 0, "cg/ef/efバイク走行表現背景.jpg", false);
	SetAlias("マスク","マスク");

	CreateTextureEXover("マスク/道線", 110, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	SetVertex("マスク/道線", center, 160);
	Fade("マスク/道線", 0, 850, null, true);
	RoadMove("@マスク/道線");
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200010skr">
「どこだ？」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200020skr">
「どこだ、どこだ、どこだ！？」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200030skr">
「とーじんぼーは、どこだ――――っ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演夜景", 2000, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");

	$YSetMove = 576 - ImageVertical("絵演夜景");
	Move("絵演夜景", 0, @0, $YSetMove, null, true);

	Move("絵演夜景", 20000, @0, 0, DxlAuto, false);
	Fade("絵演夜景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200040skr">
（郡山を出て、もう約１０時間――
　雪道をひた走り、ひたすら南へ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200050skr">
（途中、お供のみそブーとはぐれても、挫けない。
　勘だけを頼りに目指すは東京ビッグ斎藤）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200060skr">
（飲まず食わず……じゃねーな。
　途中、間違えて着いた水戸で納豆アイスを食った）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200070skr">
（が、それ以外にはほとんど休憩を取らないまま、東京へ）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200080skr">
（着いたはいいけど、もう辺りは真っ暗だ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	FadeDelete("絵演夜景", 2000, null, false);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200090skr">
（ああっ、クソ！　マーくんにとーじんぼーを持っていくって、約束したのに！）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200100skr">
（今度こそ、やり直せる！
　そう……信じてたのに……）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200110skr">
（アタシ、また……）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200120skr">
（また、駄目なのか……タカ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	DrawTransition("絵色白", 200, 0, 1000, 50, null, "cg/data/zzex_circle_01_00_0.png", true);

	MoveFFP1stop();
	Request("ProTurboBlur", Stop);
	Delete("Pro*");
	Delete("絵演*");
	Delete("道線");

	WaitKey(2000);
	ClockDelete(0,true);

	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("@xbgm*", 3000, 0, null);

//たぶん優先度間違ってるので修正
//	CreateColorEX("絵色黒", 5010, "#000000");
	CreateColorEX("絵色黒", 25010, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	WaitKey(2000);

	Delete("絵色白");
	Delete("絵色黒");

{	ClockTime(1747);}

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200130skr">
（アタシがタカと出会ったのは、京都での修学旅行）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200140skr">
（金閣寺の手前で、余所の学校の不良共とはち合わせになった時だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1748);}

	TextBoxDelete(150);

//あきゅん「素材：img金閣寺イメージ絵」
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/img/img金閣寺イメージ絵.jpg");
	Fade("絵背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
{
	//St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/y17/300200150mso">
「おうおうてめぇら！」

{
	//St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/y17/300200160buu">
「オレたちを誰だと思ってる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1749);}

	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスクミソ", 0, 0, 0, "cg/mask/ciスラッシュ_06_00.png", false);
	//SetAlias("マスクミソ","マスクミソ");
	CreateMaskAXLSP("マスクミソ", 800, 0, 0, "ciスラッシュ_06_00", false, "ciスラッシュ_06_00z");

	CreateTextureSP("マスクミソ/絵背景", 100, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_01_01_0", true);

	//CreateStencil("マスクミソ/ステ",0,130,150,128,"cg/bu/buみそa_オラオラ_normal.png",false);
	//CreateColorEX("マスクミソ/ステ/絵色黒", 700, "#000000");
	CreateTextureEX("マスクミソ/ステ絵色黒", 700, 130, 150, "cg/bu/l/buみそa_オラオラ_shadow_s.png");
	CreateTextureEX("マスクミソ/絵演立絵", 710, 130, 150, "cg/bu/buみそa_オラオラ_hard.png");

	Wait(32);
	Move("マスクミソ/絵演立絵", 10000, -210, -220, null, false);
	Move("マスクミソ/ステ絵色黒", 10000, -210, -220, null, false);
	Fade("マスクミソ/ステ絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
{
	//St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/y17/300200170mso">
「特攻隊長・頑丈のみそ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1750);}

	Move("マスクミソ/絵演立絵", 300, -210, -220, Dxl1, false);
	Move("マスクミソ/ステ", 300, -210, -220, Dxl1, true);

	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(32);

	Fade("マスクミソ/絵演立絵", 0, 1000, null, true);
	Delete("マスクミソ/ステ*");
	FadeDelete("絵色白", 300, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);



	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスクブー", 0, 0, 0, "cg/mask/ciスラッシュ_06_01.png", false);
	//SetAlias("マスクブー","マスクブー");
	CreateMaskAXLSP("マスクブー", 900, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");

	CreateTextureSP("マスクブー/絵背景", 800, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_01_01_1", true);

	//CreateStencil("マスクブー/ステ",0,150,290,128,"cg/bu/buブーa_オラオラ_hard.png",false);
	//CreateColorEX("マスクブー/ステ/絵色黒", 800, "#000000");
	CreateTextureEX("マスクブー/ステ絵色黒", 800, 150, 290, "cg/bu/l/buブーa_オラオラ_shadow_s.png");
	CreateTextureEX("マスクブー/絵演立絵", 810, 150, 290, "cg/bu/buブーa_オラオラ_hard.png");

	Wait(32);
	Move("マスクブー/絵演立絵", 10000, 430, -50, null, false);
	Move("マスクブー/ステ絵色黒", 10000, 430, -50, null, false);
	Fade("マスクブー/ステ絵色黒", 300, 1000, null, true);

{
	//St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);
}
//【ブー】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
<voice name="ブー" class="ブー" src="voice/y17/300200180buu">
「参謀役・クラッシャー・ブー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1751);}

	Move("マスクブー/絵演立絵", 300, 430, -50, Dxl1, false);
	Move("マスクブー/ステ", 300, 430, -50, Dxl1, true);

	CreateSE("SE01","se擬音_ギャグ_アフロ");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(32);

	Fade("マスクブー/絵演立絵", 0, 1000, null, true);
	Delete("マスクブー/ステ*");
	FadeDelete("絵色白", 300, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//あきゅん「β演出：沙紅羅の立ち絵出さざるを得ない……、沙紅羅視点にするか！？」

	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスクサク", 0, 0, 0, "cg/mask/ciスラッシュ_07_00.png", false);
	//SetAlias("マスクサク","マスクサク");
	CreateMaskAXLSP("マスクサク", 1200, 0, 0, "ciスラッシュ_07_00", false, "ciスラッシュ_07_00z");

	CreateTextureSP("マスクサク/絵背景", 1000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_02_01_0", true);

	//CreateStencil("マスクサク/ステ",0,20,150,128,"cg/bu/bu沙紅羅_後ろ向き_shout.png",false);
	//CreateColorEX("マスクサク/ステ/絵色黒", 1100, "#000000");
	CreateTextureEX("マスクサク/ステ絵色黒", 1100, 20,150, "cg/bu/l/bu沙紅羅_後ろ向き_shadow_s.png");
	CreateTextureEX("マスクサク/絵演立絵", 1110, 20,150, "cg/bu/bu沙紅羅_後ろ向き_shout.png");

	Wait(32);
	Move("マスクサク/絵演立絵", 10000, 20, -110, null, false);
	Move("マスクサク/ステ絵色黒", 10000, 20, -110, null, false);
	Fade("マスクサク/ステ絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200190skr">
「そして<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1752);}

	Move("マスクサク/絵演立絵", 300, 20, -110, Dxl1, false);
	Move("マスクサク/ステ", 300, 20, -110, Dxl1, true);

	CreateSE("SE01","se動物_トラ_鳴き声");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(32);

	Fade("マスクサク/絵演立絵", 0, 1000, null, true);
	Delete("マスクサク/ステ*");
	FadeDelete("絵色白", 300, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//あきゅん「β演出：百野殺駆チームロゴあったら使う」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050c]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200200skr">
「我ら郡山に狂い咲く暴走集団<RUBY text="もものせっく">百野殺駆</RUBY>」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1753);}

	CreateSE("SE01","se擬音_百野殺駆登場");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");

	CreatePlainEXadd("絵板写", 5000);
	Fade("絵板写", 0, 300, null, true);
	Zoom("絵板写", $SETime, 1200, 1200, Dxl2, false);
	Shake("絵板写", 300, 5, 15, 0, 0, 1000, DxlAuto, false);
	FadeDelete("絵板写", $SETime, null, false);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050d]
//※下倉注：同時に変更 2010/10/31
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200210">
「「「夜露死苦ぅ！」」」

</PRE>
	SetText();
	AddText(1,"「夜露死苦ぅ！」","沙紅羅","y17/300200210skr",false,false,1000);
	AddText(2,"「夜露死苦ぅ！」","みそ","y17/300200220mso",false,false,1000);
	AddText(3,"「夜露死苦ぅ！」","ブー","y17/300200230buu",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
/*
//◆音声指示：同時
{
	//St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/y17/300200220mso">
「夜露死苦ぅ！」

//◆音声指示：同時
{
	//St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/y17/300200230buu">
「夜露死苦ぅ！」
*/

	//TextBoxDelete(150);

	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/img/img金閣寺イメージ絵.jpg");
	Delete("マスク*");
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【不良Ａ】
<voice name="不良Ａ" class="その他男声" src="voice/y17/300200240e22">
「あぁん？」

//【不良Ａ】
<voice name="不良Ａ" class="その他男声" src="voice/y17/300200250e22">
「福島って、どこだァ？」

{	St("C",700, @60,@0,"bu沙紅羅_木刀_rage");
	Move("@StNameC/C*", 200, @-60, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200260skr">
「舐めんじゃねえええええええええええッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1754);}

	DeleteAllSt(200,true);

//◆ＳＥ：ボカスカバキ！！
	CreateSE("SE02","se戦闘_殴打連続01");
	MusicStart("SE02",0,1100,0,1000,null,false);

	CreateColorEX("絵色白", 5000, "#FFFFFF");
	CreatePlainEX("絵板写", 2000);
	Wait(32);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 100, 0, null, false);
	FadeFR2("絵板写",0,750,200,0,0,30,Dxl2, true);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 100, 0, null, false);
	FadeFR2("絵板写",0,750,200,0,0,30,Dxl2, true);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 100, 0, null, false);
	FadeFR2("絵板写",0,750,200,0,0,30,Dxl2, true);



	CreateSE("SE01","se戦闘_殴打連続01");
	MusicStart("SE01",0,1100,0,1000,null,false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 100, 0, null, false);
	FadeFR2("絵板写",0,750,200,0,0,30,Dxl2, true);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 100, 0, null, false);
	FadeFR2("絵板写",0,750,200,0,0,30,Dxl2, true);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色白", 100, 0, null, false);
	FadeFR2("絵板写",0,750,200,0,0,30,Dxl2, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);
	Delete("絵板写");
	Delete("絵色白");

	//TextBoxDelete(150);


{	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200270skr">
「へっへー！　どうだ！」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200280skr">
「名刀喝雄不死の威力、思い知ったか！？」

//【不良Ａ】
<voice name="不良Ａ" class="その他男声" src="voice/y17/300200290e22">
「な――なにが喝雄不死だっ！」

//【不良Ａ】
<voice name="不良Ａ" class="その他男声" src="voice/y17/300200300e22">
「ただの――土産モンじゃねぇかあッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1755);}

	//TextBoxDelete(150);

//◆ＳＥ：ばきっ！
	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);
{	St("C",700, @0,@0,"bu沙紅羅_木刀_pinch");
	FadeSt("C",0,true);}
	Shake("@StNameC/C*", 200, 6, 4, 0, 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200310skr">
「ぬわっ！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	Move("@StNameC/C*", 1000, @-340, @0, DxlAuto, false);
	FadeSt("C",200,false);
	Shake("@StNameC/C*", 200, 6, 4, 0, 0, 1000, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200320skr">
「わ……とと……と……え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1754);}

	WaitAction("@StNameC/C*", null);

	CreatePlainSP("絵板写", 5000);

	//CreateMask("マスク", 0, 0, 0, "cg/mask/ciスラッシュ_06_01.png", false);
	//SetAlias("マスク","マスク");
	CreateMaskAXLSP("マスク", 600, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");

	CreateTextureSP("マスク/絵背", 100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("マスク/絵背", 0, @0, @180, @0, null,true);
	Zoom("マスク/絵背", 0, 1050, 1050, null, true);

	CreateMask("マスクキャラ", 0, 0, 0, "cg/mask/ciスラッシュ_06_01ex.png", false);
	SetAlias("マスクキャラ","マスクキャラ");

	CreateTextureSP("特殊マスクカバー", 690, Center, Middle, "cg/mask/ciスラッシュ_06_01exz.png");
	CreateTextureSP("マスクキャラ/ミソ", 610, 170, -200, "cg/bu/buみそa_オラオラ_pinch.png");
	CreateTextureSP("マスクキャラ/ブー", 600, 520, -90, "cg/bu/buブーa_通常_pinch.png");

	Wait(32);
	DrawDelete("絵板写", 200, 100, null, "slide_01_03_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/y17/300200330mso">
「姐さんッ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/y17/300200340buu">
//「姐さんッ！」

</PRE>
	SetText();
	AddText(1,"「姐さんッ！」","みそ","y17/300200330mso",false,false,1000);
	AddText(2,"「姐さんッ！」","ブー","y17/300200340buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	Shake("@StNameC/C*", 300, 8, 0, 0, 0, 1000, DxlAuto, true);
	WaitKey(300);
	Move("@StNameC/C*", 300, @0, 576, Axl3, false);

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 600, 1000, Axl2, true);

	Delete("特殊*");
	Delete("マスク*");
	DeleteAllSt(0,true);

//◆ＳＥ：バシャーン！！
	CreateSE("SE01","se環境_水に落ちる");

	CreateTextureSP("絵背景", 100, Center, 288, "cg/ef/ef水中絵b.jpg");
	SetVertex("絵背景", center, 30);
	Zoom("絵背景", 0, 20000, 20000, null, true);

	CreateTextureSPover("絵効果背景", 110, Center, Middle, "cg/ef/ef水中絵b.jpg");
	Fade("絵効果背景", 0, 750, null, true);
	Zoom("絵効果背景", 0, 1100, 1100, null, true);
	DrawEffect("絵効果背景", 0, "MiddleWave", 100, 100, null);

	Wait(32);

	CreateSE("SEL01","se環境_水中_l");

	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	MusicStart("SEL01",$SETime,700,0,1000,null,true);
	$EFFTime = $SETime*3;
	Move("絵背景", $EFFTime, 0, 0, DxlAuto, false);
	Zoom("絵背景", $EFFTime, 1000, 1000, DxlAuto, false);
	FadeDelete("絵色白", $SETime, null, true);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200350skr">
「ぶくぶく……ぶくぶくぶく……」


{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200360skr">
（パンチを受け止めたまではよかった）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200370skr">
（けど、アタシはバランスを崩して――水の中に）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200380skr">
（笑える話だけどアタシは金槌で、ただ沈んでいくだけだった）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200390skr">
（お供のみそブーも、金槌だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1755);}

	//TextBoxDelete(150);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200400skr">
（アタシ、死ぬんだ……そう、思った）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1756);}

	CreateTextureEXadd("絵演金閣寺", 109, Center, -150, "cg/img/img金閣寺_煽り.png");
	DrawEffect("絵演金閣寺", 0, "LowWave", 50, 50, null);
	DrawTransition("絵演金閣寺", 0, 0, 600, 50, null, "cg/data/circle_15_00_0.png", true);
	Wait(32);
	Fade("絵演金閣寺", 300, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200410skr">
（水の向こうの金閣寺がヤケに綺麗で――）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200420skr">
（そこに――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1757);}

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorEX("絵色黒", 4900, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	PrintGO("上背景", 5000);
	CreateColorSP("絵色黒", 4900, "#000000");
	FadeDelete("上背景", 0, null, true);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200430skr">
（あんたが助けに来てくれたんだよな、タカ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,350,0,1000,null,true);

	WaitKey(2000);
	FadeDelete("絵色黒", 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(1758);}

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200440skr">
（アタシたちは、すぐに恋に落ちた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200450skr">
（お互いのホテルが近いこともあって、抜け出して、一緒に夜の京都を練り歩いたりした）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200460skr">
（タカは三重の出身で、アタシと同じオチコボレで、卒業したらすぐに就職してバイク屋に勤めるのだという）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200470skr">
（アタシは当時、バイクなんて全然詳しくなかったけど、タカのその横顔が、すごく楽しそうに見えた）



{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200480skr">
（アタシは今もタカの言葉を忘れない）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200490skr">
（「オレはずっと、間違いばかり繰り返してきた」）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200500skr">
（「今、やっと、それに気付いた」）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200510skr">
（「だからこの瞬間から、オレはその過ちを正したい」）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200520skr">
（「自分の間違いを認めて、もう一度、やりなおしたい」）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200530skr">
（「間違いを改めるのに、遅すぎるなんてことはないのだから」）





{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200540skr">
「タカ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200550skr">
「そうだよな……遅すぎるなんてことは、ないよな」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200560skr">
「アタシはもう一回、マーくんと仲直りして、姉弟としてやっていける――」





{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200570skr">
「あ……あれ？」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200580skr">
「あそこに見えるのは――まさか！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateMaskAXLEX("マスク", 1100, 0, 0, "ciライン_00_00", false, "ciライン_00_00z");
	Zoom("@マスク", 0, 1000, 0, null, true);
	Zoom("@マスクLine", 0, 1000, 0, null, true);

	SetVertex("@マスク", center, 144);
	SetVertex("@マスクLine", center, 144);

	CreateTextureSP("マスク/絵演背景斉藤", 1010, 0, Middle, "cg/bg/l/bg2001100ビッグサイト_正面_通常_l.jpg");
	CreateSE("SE01","se擬音_ギャグ_エロセンサー");

	Wait(32);
	Move("マスク/絵演背景斉藤", 20000, -512, @0, DxlAuto, false);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("@マスク", 0, 1000, null, true);
	Fade("@マスクLine", 0, 1000, null, true);
	Zoom("@マスク", 300, 1000, 1000, Dxl1, false);
	Zoom("@マスクLine", 300, 1000, 1000, Dxl1, true);

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/y17/300200590skr">
「ビッグ・斎藤ッ！！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndFileBlackOut(20000,2000);
	Delete("@マスク*");
	EndScene();
}
