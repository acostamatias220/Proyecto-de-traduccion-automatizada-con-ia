
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2403似鳥_ノーコ.nss_MAIN
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
	$GameName="c2404沙紅羅.nss";//★エンディング中（d）
}

scene d2403似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="170">
////////////header////////////
//file name "d2403似鳥_ノーコ.nss"
//title "新年"
//previous "d2402沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next （"flkagome4" = false）"c2404沙紅羅.nss"
//next "e2404沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@SE*", UnLock);

//	FadeDelete("上背景", 0, null, true);


//◆場所：半田明神_境内_ノーマル新年
//	OnBG(10,"bg0603511半田明神_境内_雪ノーマル新年");
//	FadeBG(0,true);


//◆演出指示：会場にソトカンダーが描かれた「謹賀新年」という垂れ幕が落ちる。花火も開く。


//◆場所：半田明神_屋根_雪
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_00_1", true);

	SoundPlay("@xbgm18",0,450,true);

//あきゅん「修正指示：新年開けてるので勢い大事、音響からも新年感の演出入れて」
//あきゅん「修正指示：やっぱり枠いらない、通常立ち絵で」
//inc久保田　修整しました。

	CreateSE("SEkansei", "seガヤ_歓声_l");
	MusicStart("SEkansei", 800, 300, 0, 1000, null,true);

	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);

	SetVolumeEX("@SE30", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100010nko">
「これ、すごい……！」

{	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100020nko">
「ぜんぶ、かきなおしたの？」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100030nki">
「ノーコ。聞いてくれ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100040nki">
「オレ、これから本気でプロの漫画家になる。
　プロになって、自分の力で夢を叶えてやる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100050nki">
「どんなに苦しくても、どんなに辛くても、絶対に負けない！　へこたれない！　最後まで、戦い抜いてやる！」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100060nki">
「でも、もし、万が一……」

{	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100070nki">
「途中で苦しくなって、逃げ出したくなったら……」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100080nki">
「側で、励ましてくれないか？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100090nko">
「じょうけんが、あるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("MR",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100100nko">
「わたしがつらいときは……」

{	St("MR",700, @0,@0,"buノーコb_幽霊_shy");
	FadeSt("MR",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100110nko">
「ずっと、そばにいて」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100120nki">
「ああ。もちろん」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shy");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100130nko">
「あのね、にとり」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100140nki">
「なんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100150nko">
「わたし、いま、むねが、くるしい。つらい」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d24/030100160nko">
「だから――なぐさめて、くれる？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d24/030100170nki">
「ああ――」

{	DeleteSt("ML",200,true);}

　涙に濡れたノーコの瞳に――

　似鳥はゆっくりと顔を近づけて、口付けを交わした。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 1000, 1000, null, true);


//	ClearWaitAll(2000, 2000);


	EndScene();
}
