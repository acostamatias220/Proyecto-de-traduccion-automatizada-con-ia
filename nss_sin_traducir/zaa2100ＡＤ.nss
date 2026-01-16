
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2100ＡＤ.nss_MAIN
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

scene zaa2100ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zaa2100ＡＤ.nss"
//title "毒饅頭を喰らう！"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2104);}

//◆場所：ＵＰ＋_セット上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	SoundPlay("@xbgm16_noint",0,450,true);

{	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zaa21/000100010adi">
（やった！　これで、フウリちゃんは失格だから、もうあんなスピードで食べ物が減る心配は……）

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zaa21/000100020adi">
（あ……あの……ええと……）

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zaa21/000100030adi">
（次の商品……大丈夫、だよね）

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zaa21/000100040adi">
（普通にお店で売ってたものだし……ね）

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zaa21/000100050adi">
（若原Ｄの件は、偶然ってことで……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
