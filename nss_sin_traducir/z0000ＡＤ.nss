
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z0000ＡＤ.nss_MAIN
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

scene z0000ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z0000ＡＤ.nss"
//title "ＡＤ自己紹介"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原_中央通り
//cono：背景変更
	OnBG(10,"bg1201100ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",0,true);

	SoundPlay("@xbgm16",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z00/000100010adi">
「私の名前は権堂朝美！」

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z00/000100020adi">
「いつかドラマを撮って、日本中を感動の渦に引き込んでやる――！！」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z00/000100030adi">
「そう両親に言い残し、実家を飛び出してから数年……」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z00/000100040adi">
「私はとうとう、帰ってきました」

{	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z00/000100050adi">
「この秋葉原に――
　『全国ゆるキャラバン』のＡＤとして！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
