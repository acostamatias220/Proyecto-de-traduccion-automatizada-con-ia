
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2110ユージロー_ミヅハ.nss_MAIN
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
	EndScript();

}

scene zab2110ユージロー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "zab2110ユージロー_ミヅハ.nss"
//title "ミヅハの逆襲"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2111);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm16_noint",0,450,true);

{	St("MR",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

	Move("@StNameMR/MR*", 1000, @-50, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/100200010ujr">
（クンカクンカ――クンカクンカ――）

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 500, 10, 0, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/100200020mzh">
「やめんかっ！　やめろと言うておるに！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buユージローa_通常_ero");
	Move("@StNameMR/MR*", 1000, @-50, @0, Dxl3, false);
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/100200030ujr">
（うひょー！
　ミヅハちゃんのからだからはおひさまのにおいが――）

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/100200040mzh">
「うう、こうなったら仕方ない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/100200050mzh">
「沙悟浄ッ！！　九千坊ッ！！」

{	St("ML",700, @-80,@0,"st沙悟浄_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/zab21/100200060e01">
「ヒョーヒョー！」

{	St("MR",700, @80,@0,"st九千坊_通常_normal");
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/zab21/100200070e02">
「ガワッガワッ！」

{	St("R",700, @-200,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @200, @0, Dxl3, false);
	Shake("@StNameR/R*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/100200080ujr">
（な、なんですとー！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
