
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2007千秋_恵那_ノーコ.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	if($CharaName=="千秋"){
		$GameName = "2008千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2008千秋_恵那.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "2008ノーコ.nss";
	}else{
		$GameName = "2008千秋_恵那.nss";
	}

}

scene 2007千秋_恵那_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="200">
////////////header////////////
//file name "2007千秋_恵那_ノーコ.nss"
//title "アザナエルはどこへ？"
//previous "2000千秋_恵那.nss"
//previous "2000ノーコ.nss"

////////////footer////////////
//next "千秋" "2008千秋_恵那.nss"
//next "恵那" "2008千秋_恵那.nss"
//next "ノーコ" "2008ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2007);}

//	SetVolume("@SE*", 1000, 0, null);
//	SoundPlay("@xbgm03",0,450,true);

	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100010fje">
「バッグ貸しなさい！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/070100020mzh">
「ぬお！　盗む気か！？」

{	St("ML",700, @-50,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/070100030kit">
「ちょ、ちょっと待てよ、恵那！
　あんまり乱暴に――」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100040fje">
「アッキーちゃんは黙ってて！」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100050fje">
「そもそもコレ、あのアフロが盗んだヤツでしょ！
　この中には私の大事な――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);
	DeleteAllSt(200,true);

	CreateSE("SEP01","se動作_バッグ渡す");
	CreateTextureEX("絵演背景", 100, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演背景", 0, @0, @90, null, true);

	MusicStart("SEP01",0,700,0,1000,null,false);
	Move("絵演背景", 300, @0, @-90, Dxl1, false);
	Fade("絵演背景", 300, 1000, null, true);

//◆ＳＥ：ジッパー開ける
	CreateSE("SE01","se動作_ジッパー開ける01");

WaitKey(1000);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objエコバッグ_千秋_フウリ1850.png");
	Zoom("絵オブ", 0, 0, 1000, null, true);
	#objエコバッグ_千秋_フウリ18 = true;

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵演背景", 300, 0, 1000, null, false);
	Zoom("絵オブ", 300, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);

	Delete("絵演背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100060fje">
「…………ま」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100070fje">
「まんじゅう！！？」

//DeleteSt("C", 200,true);}
　恵那は飛び上がらんばかりに驚いて、周囲がかなり引いているのにもかかわらず、がばっとカバンへ飛びついた。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Zoom("絵オブ", 300, 0, 1000, Dxl3, false);
	FadeDelete("絵オブ", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@50,"bu恵那_通常_sigh");
Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100080fje">
「ない！　ない！　ないわ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100090fje">
「嘘！　なんで！？　なんで入ってないわけ！？」

//◆音声指示：小声
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100100fje">
「けんじゅうが……まんじゅうに……？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/070100110kit">
「さっきから、何探してるんだ？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100120fje">
「ここに入ってるはずなのよ……アザナエルが！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/070100130kit">
「アザナエル――！？」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100140fje">
「落ち着いて！　落ち着いて推理するのよ富士見恵那！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100150fje">
「ここにないってことは、つまり……
　中味に気付かれて、すり替えられた？」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100160fje">
「ミヅハちゃん！　アフロはどこ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/070100170mzh">
「はぐれてしもうた」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100180fje">
「どこに行くか心当たりは！？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/070100190mzh">
「ない」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/070100200fje">
「そ……そんな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
