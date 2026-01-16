
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2200みそブー_ミヅハ.nss_MAIN
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

scene zb2200みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "zb2200みそブー_ミヅハ.nss"
//title "アザナエルがない"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2206);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

//	MusicStart("@xbgm01",0,450,0,1000,null,true);

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",0,true);}

	SoundPlay("@xbgm15",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb22/000100010mzh">
「これじゃ……」

{	DeleteSt("C", 200,true);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zb22/000100020mso">
「これは……鉄砲の弾？」

{	DeleteSt("L", 200,true);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb22/000100030mzh">
「うむ。
　先のカゴメアソビで、平次が持ち帰ったもの」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb22/000100040mzh">
「これとアザナエルさえあれば、フウリの命が助かる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C", 200,true);
	St("R",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb22/000100050kms">
「しかし！　アザナエルは今どこにあるか――」

{	DeleteSt("R", 200,true);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/zb22/000100060okt">
「待ってくれ！」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb22/000100070mzh">
「ん？　おぬしは……？」

{	DeleteSt("C", 200,true);
	St("ML",700, @-100,@0,"bu貫太_横向き_hard");
	Move("@StNameML/ML*", 200, @100, @1, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/zb22/000100080okt">
「今――フウリの命が、どうとか言わなかったかい？」

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/zb22/000100090okt">
「フウリに、何か危険が――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	EndScene();
}
