//★ inc遠藤 立ち絵切り替えを調整した

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2354千秋_恵那.nss_MAIN
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
	$GameName = "baa2357似鳥_ノーコ.nss";//★エンディング中（bab）
}

scene bab2354千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="290">
////////////header////////////
//file name "bab2354千秋_恵那.nss"
//title "神様の意味"
//previous "baa2353千秋_恵那.nss"

////////////footer////////////
//next "baa2357似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2402);}


//◆場所：半田明神_鳥居
//★inc櫻井　背景変更の連絡がありました。
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	FadeBG(0,true);
	#bg0603400半田明神_境内_ノーマル新年 = true;

	if($PreGameName=="baa2353千秋_恵那.nss"){
		St("ML",700, @0,@0,"bu恵那_通常_sigh");
		FadeSt("ML",0,true);
		FadeDelete("上背景", 0, null, true);
		DeleteAllSt(200,false);

	}else{

		FadeDelete("上背景", 0, null, true);

	}


	CreateSE("SE10","seガヤ_半田明神02_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100010kit">
「あ、あれ？　あそこに――」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100020fje">
「ちょっと！　なに話逸らそうとしてるのよ」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100030kit">
「いやいや、違う！　違うから！　ホラあそこ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteSt("MR", 200,false);


	OnBG(10,"bg0604112半田明神_社務所_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);
	Wait(500);

	St("MR",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/540100040mzh">
「おう！　恵那とアッキーではないか！」

{	DeleteSt("MR", 200,false);
	St("ML",700, @-20,@0,"bu千秋_朗らか_smile");
	Move("@StNameML/ML*", 200, @20, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100050kit">
「おめでとうございます！」

{	DeleteSt("ML", 200,false);
	St("L",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("L",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100060fje">
「今年もよろしくね、ミヅハちゃん」

{	DeleteSt("L", 200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/540100070mzh">
「うむ！　こちらこそ、よしなにな」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/540100080mzh">
「皆、無事に新年を迎えられてよかったよかった」


{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100090kit">
「ホントだな。今年も平和な年でありますように……」

{	DeleteSt("ML", 200,false);
	St("L",700, @0,@0,"bu恵那_一休_think");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100100fje">
「ん？　平和な……年？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("L", 200,false);

	CreateSE("SE06","se動作_走る02_l");
	MusicStart("SE06",200,500,0,0,null,false);
	Wait(1500);
	MusicStart("SE06",200,0,0,0,null,false);
	St("C",200, @200,@0,"bu歌門_威圧_pride");
	CreateSE("SE05","se動作_足踏み");
	MusicStart("SE05",0,700,0,0,null,false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/540100110kms">
「ミヅハ様！　お客様がお待ちですよ！」

{	DeleteSt("C", 200, true);
	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/540100120mzh">
「やれやれ……新年早々忙しいのう」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/540100130mzh">
「ではふたりとも、わらわはこの辺りでお暇するぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE03","se動作_歩く04_l");
	MusicStart("SE03",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 600, @60, @0, DxlAuto, false);
	DeleteSt("MR",200,true);

	Wait(1500);
	MusicStart("SE03",500,0,0,0,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("L",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100140fje">
「うん。じゃあ、さよなら」

{	DeleteSt("L", 200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100150kit">
「またな」

{	SetVolumeEX("@xbgm*", 3000, 0, null);
	DeleteAllSt(200,true);
	Wait(200);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR", 200, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100160kit">
「ふぅ……ちっちゃいのに、頑張るなあ」

{	DeleteSt("MR", 200, false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100170fje">
「でも……あれ？　ん？
　なんか、おかしくない？」

{	DeleteSt("ML", 200, false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR", 200, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100180kit">
「なんだ？　またいつもの迷推理か？」

{	DeleteSt("MR", 200, false);
	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML", 200, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100190fje">
「いや、そうじゃなくて！
　あれ……？　おかしいな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

	SetVolume("SE10", 1000, 0, null);

//	Wait(500);

	SoundPlay("@xbgm08_noint", 0, 450, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML", 200, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100200fje">
「なんか、すごく大事なことを忘れてるような……」

{	DeleteSt("ML", 200, true);
	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("MR", 200, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100210kit">
「何を？」

{	DeleteSt("MR", 200, false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML", 200, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100220fje">
「何をってそりゃ……」

{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML", 200, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100230fje">
「……………………」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML", 200, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100240fje">
「……駄目だ。思い出せない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100250kit">
「思い出せないってことは、大したことじゃないんだよ」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100260fje">
「そんなことは……ないと思うんだけど」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/540100270kit">
「ほら、早く初詣終わらせてスーパーノヴァに行こ！
　年越しライブ、やってるはずだろ？」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100280fje">
「う、うん。そうだね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//★ inc遠藤 その思考系BGMをFO

	SetVolume("@xbgm08_noint", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/540100290fje">
「そうしよっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolume("SE01", 1000, 0, null);


	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	EndScene();
}
