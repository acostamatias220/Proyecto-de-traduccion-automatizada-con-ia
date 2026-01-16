
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2250双六.nss_MAIN
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

scene z2250双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "z2250双六.nss"
//title "羨ましいヤツ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2250);}

//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	CreateSE("SEL01","se環境_風と葉っぱ_l");
	MusicStart("SEL01",500,700,0,1000,null,true);

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400010ksr">
「おまえ……太四郎だな？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/z22/500400020okt">
「ああ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400030ksr">
「アザナエル、返して貰うぞ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/z22/500400040okt">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400050ksr">
「ん？　そういや、フウリは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400060ksr">
「まさか、失敗したんじゃ――！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/z22/500400070okt">
「成功したよ。
　それで、向こう側に行ったんだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400080ksr">
「……それでいいのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/z22/500400090okt">
「彼女がそれを、望むなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400100ksr">
「…………ちぇっ」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/500400110ksr">
「羨ましいヤツだぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
