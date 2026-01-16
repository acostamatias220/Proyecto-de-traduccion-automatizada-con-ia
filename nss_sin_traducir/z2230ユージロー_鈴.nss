
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2230ユージロー_鈴.nss_MAIN
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

scene z2230ユージロー_鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2230ユージロー_鈴.nss"
//title "病院へ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",0,true);}

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/300600010fjr">
「あの……村崎さん……」

//◆音声指示：ぼろぼろの身体で
{	St("C",700, @0,@0,"bu村崎_通常_other");
	DeleteAllSt(200,false);
	FadeFF("@StNameC/C*",0,0,500,0,-50,Dxl2, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z22/300600020msi">
「ま、任せてください！
　無事に平次さんを送り届けてみせます！」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z22/300600030fjh">
「頼んだぜ、村崎」

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/300600040fjr">
「よ、よろしくお願いします！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("R",700, @0,@0,"buユージローa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/300600050ujr">
（ふう……これで村崎も命拾いだな）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
