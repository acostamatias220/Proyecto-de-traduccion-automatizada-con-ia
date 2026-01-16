
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1810ＡＤ.nss_MAIN
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

scene z1810ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "z1810ＡＤ.nss"
//title "何クリ必要？"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：アキバスポット
	OnBG(10,"bg0401100アキバスポット_正面_通常");
	FadeBG(0,true);

{	ClockPass(1812);}

	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",0,true);

//	CreateSE("SE01","seガヤ_ざわざわ_l");
//	MusicStart("SE01",500,700,0,1000,null,true);

	SoundPlay("@xbgm02",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/100100010adi">
「あ……あの、すいません！」

{	St("ML",700, @-80,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100020msi">
「はい、いらっしゃぁい！　さあ、いかがですか！？
　クリマンクリマン！　おいしいクリマーン！」

{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/100100030adi">
「…………クリマン？」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100040msi">
「はい、リピード・アフター・ミー！
　く・り・ま・ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/100100050adi">
「あ……そうか、クリスマス饅頭のこと――」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100060msi">
「おやおや？　知っていらっしゃる？」

{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/100100070adi">
「あの、そこで女の子に聞いて――」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/100100080adi">
「で、そのクリスマス饅頭、いただけますか？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100090msi">
「はいはい、毎度あり！
　で、何クリ必要ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/100100100adi">
「ええと……スタッフにひとり２個ずつとして」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100110msi">
「――スタッフ！？」

{	St("ML",700, @0,@40,"bu村崎_通常_happy");
	FadeT("@StNameML/ML*",0,0,200,0,-40,Dxl1,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100120msi">
「も……もしや、あなたは――」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z18/100100130msi">
「『全国ゆるキャラバン』のスタッフですかァ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
