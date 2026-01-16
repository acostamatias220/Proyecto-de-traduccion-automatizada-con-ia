
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2401似鳥_ノーコ.nss_MAIN
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
	$GameName = "d2402沙紅羅_似鳥_ノーコ.nss";//★エンディング中（d）
}

scene d2401似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "d2401似鳥_ノーコ.nss"
//title "新年"
//previous "d2400沙紅羅.nss"
//previous "e2355沙紅羅.nss"

////////////footer////////////
//next "d2402沙紅羅_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);


//◆場所：半田明神_屋根_雪
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);

	CreateSE("SEzawa", "seガヤ_大歓声_l");
	MusicStart("SEzawa", 800, 300, 0, 1000, null,true);

	FadeDelete("上背景", 2000, null, true);

{	ClockPass(2358);}

	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/010100010nko">
「ほんとうにこれでよかったの？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100020nki">
「良かったんだよ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100030nki">
「みんな、精一杯、やるべきことをやったんだ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100040nki">
「それにちゃんと、ミヅハを元の姿に戻せる」

{	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100050nki">
「胸を張って行こうぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/010100060nko">
「でも……むねがいたい」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100070nki">
「オレ、さ。
　本当はもっとすごいものが描けるつもりでいた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100080nki">
「ものすごい――
　おまえがもし見たら、涙流すような絵を」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100090nki">
「でも――できなかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2359);}


//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100100nki">
「今のオレは、これで精一杯だ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100110nki">
「認めるのは、辛い。
　ありのままに、受け取るのは、しんどい」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100120nki">
「でも――それだって、生きてる証だ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/010100130nki">
「おまえの胸の痛さも、生きている証」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_smile");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/010100140nko">
「いきている……あかし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

//	TextBoxDelete(150);

	Request("SEzawa", Lock);

	EndScene();
}
