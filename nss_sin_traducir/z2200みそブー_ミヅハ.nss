
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2200みそブー_ミヅハ.nss_MAIN
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

scene z2200みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z2200みそブー_ミヅハ.nss"
//title "アザナエルの弾丸"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2205);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm15",0,450,true);

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/000200010mzh">
「これじゃ……」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/000200020mso">
「これは……鉄砲の弾？」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/000200030mzh">
「先のカゴメアソビで、平次が持ち帰ったもの」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/000200040mzh">
「これとアザナエルさえあれば、フウリの命が助かる！」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z22/000200050buu">
「フウリ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @60,@0,"bu歌門_通常_hard");
	Move("@StNameC/C*", 200, @-60, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z22/000200060kms">
「残念ながら、そう簡単にはいかないようです」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	Shake("@StNameL/L*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @0, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104130mso">
「やべぇっ！」

{	St("R",700, @0,@0,"buブーa_通常_pinch");
	Shake("@StNameR/R*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @0, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/500104140buu">
「見つかった！」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z22/000200080kms">
「平次様から連絡がありました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);
//【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/z22/000200090kms">
//「今、アザナエルを奪いに――」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z22/000200100kms">
「ノーコが、こちらに向かっていると」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/000200070mzh">
「――なんじゃと！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




	TextBoxDelete(150);

	EndScene();
}
