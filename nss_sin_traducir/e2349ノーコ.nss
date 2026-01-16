
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2349ノーコ.nss_MAIN
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
	$GameName = "2340似鳥.nss";//★エンディング中（e）
}

scene e2349ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="200">
////////////header////////////
//file name "e2349ノーコ.nss"
//title "別れ"
//previous "2348ノーコ_フウリ.nss"

////////////footer////////////
//next "ノーコ" "2340似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

//◆場所：半田明神_社務所_雪
	OnBG(10,"bg0604211半田明神_社務所_雪");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	DeleteAllSt(0,false);
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2349);}

	SetVolume("@xbgm*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100010fjr">
「ってまあ、お笑い集団はおいといて――」

{	SoundPlay("@xbgm20_noeff",0,450,true);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100020fjr">
「フウリちゃん！　ニコちゃん！」

{	DeleteSt("MR",200,false);
	St("ML",700, @-60,@0,"buそに子_通常_sad");
	Move("@StNameML/ML*", 300, @60, @0, null, false);
	FadeSt("ML",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/e23/490100030snk">
「お、お疲れ様です～！」

{	DeleteSt("ML",200,false);
	St("L",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("L",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e23/490100040wft">
「なんとか、帰ってきましたー！」

{	St("L",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("L",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e23/490100050wft">
「ギリギリ、間に合いましたかー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100060fjr">
「うん、なんとか……」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	Shake("@StNameC/C*", 200, 0, 6, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100070fjr">
「って、安心してる場合じゃない！
　ほら、早くライブの準備！」


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buそに子_通常_shout");
	FadeSt("ML",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/e23/490100080snk">
「そ、そうでした」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100090fjr">
「第一宇宙速度年越しライブ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100100fjr">
「一丁、やってやるわよ！」


{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/490100110fjr">
「えい、えい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：ここでは画面に２キャラ出すべき」
//★ inc遠藤 対応しました。…そに子とフウリは同時音声指示がないので、フウリは一歩遅れる風。
	St("L",700, @0,@0,"buそに子_通常_happy");
	St("R",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【そに子】
<voice name="そに子" class="そに子" src="voice/e23/490100120snk">
「おーッ！！」
{WaitAddText();}<BR>

//【太四郎（綿抜フウリ）】
//<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/e23/490100130wft">
//「おーッ！！」

</PRE>
	SetText();
	AddText(1,"「おーッ！！」","そに子","e23/490100120snk",false,false,1000);
	AddText(2,"「おーッ！！」","綿抜フウリ","e23/490100130wft",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/490100140nko">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/490100150mzh">
「ん？　ノーコ、どうした？」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/490100160mzh">
「なにか、元気がないようじゃが……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/490100170nko">
「そんなこと、ない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/490100180nko">
「にとりは？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/490100190mzh">
「うむ。先程から拝殿に籠もって、ますこっときゃらくたーとやらを描いておる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/e23/490100200nko">
「……ありがとう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	ClearWaitAll(1000, 1000);


	EndScene();
}
