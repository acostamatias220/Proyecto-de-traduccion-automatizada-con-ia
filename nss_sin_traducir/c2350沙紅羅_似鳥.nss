
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2350沙紅羅_似鳥.nss_MAIN
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
	$GameName = "c2351フウリ.nss";//★エンディング中（c）
}

scene c2350沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="400">
////////////header////////////
//file name "c2350沙紅羅_似鳥.nss"
//title "厭覇薔薇"
//previous "c2341沙紅羅_フウリ.nss"

////////////footer////////////
//next "c2351フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(2345);}

//あきゅん「修正指示：大きめの素材等で白い布地をなるべく隠す」
//★inc櫻井　修正
//◆場所：半田明神_拝殿_布地

	CreateTextureSP("背景", 10, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");

//	OnBG(10,"bg0607300半田明神_拝殿_布地");
//	FadeBG(0,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @150,@0,"bu沙紅羅_通常_smile");
	Move("@StNameMR/MR*", 300, @-150, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100010skr">
「おい似鳥！　調子は――」


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100020nki">
「待ってくれ！　今……最後の仕上げだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色白", 2500, "WHITE");

	CreateTextureEX("似鳥", 2000, @-500, @0, "cg/ev/l/ev2330似鳥お絵かきタイム_l.jpg");
	Fade("似鳥", 500, 1000, null, true);
	Request("@似鳥", Smoothing);
	DeleteSt("ML",0,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100030nki">
「はぁっ、はぁっ、はぁっ……」

{
	SetBlur("似鳥", true, 3, 500, 50,false);
	Move("似鳥", 200, @-200, @0, null, false);
	Zoom("似鳥", 200, 1200, 1200, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100040nki">
「――――ッ！！」


{	Move("似鳥", 200, @200, @-400, null, false);
	Zoom("似鳥", 200, 800, 800, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100050nki">
「だりゃああああああああああああッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「修正指示：調整は済んでいますか？　本編の同様のルートからフィニッシュを流用して下さい」
//★inc櫻井　修正　流用させていただきました。

	TextBoxDelete(150);

	CreateSE("SE01x","se環境_水に落ちる");
	CreateSE("SE02x","se戦闘_ペイント弾直撃");
	CreateSE("SE01a","se環境_水に落ちる");
	CreateSE("SE02a","se戦闘_ペイント弾直撃");
	CreateSE("SE01b","se環境_水に落ちる");
	CreateSE("SE02b","se戦闘_ペイント弾直撃");
	CreateSE("SE01c","se環境_水に落ちる");
	CreateSE("SE02c","se戦闘_ペイント弾直撃");
	CreateTextureEX("絵背景筆雫01", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫02", 5100, Center, Middle, "cg/ef/ef筆字02.png");
	Rotate("絵背景筆雫02", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵背景筆雫03", 5100, Center, Middle, "cg/ef/ef筆字04.png");

	SetVolumeEX("@xbgm*", 10000, 0, null);


	CreateSE("SE01","se環境_水に落ちる");
	MusicStart("SE01",0,700,0,3000,null,false);


	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫02.png", false);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);


	Move("絵背景筆01", 1100, @-200, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);


	SetBlur("絵背景筆03", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆03", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);



	SetBlur("絵背景筆02", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆02", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆02", 0, 800, 800, null, true);
	Move("絵背景筆02", 0, @100, @0, null, true);
	SetBlur("絵背景筆02", true, 2, 500, 100, false);


	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫04.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆02", 1100, @-100, @-50, Dxl2, false);
	Zoom("絵背景筆02", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆02", 0, 1000, null, true);
	DrawTransition("絵背景筆02", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆02", 1000, 0, null, false);
	Wait(100);
	Fade("絵色白", 400, 0, null, true);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫06.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);

	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(100);
	Fade("絵色白", 400, 0, null, true);

	SetBlur("絵背景筆03", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆03", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	Move("絵背景筆03", 0, @-200, @0, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(100);
	Fade("絵色白", 300, 0, null, true);






	Zoom("絵背景筆雫*", 0, 900, 900, null, false);


	Zoom("絵背景200", 200, 3000, 3000, Axl1, false);
	Wait(200);
	Fade("絵色白", 0, 1000, null, true);

	Zoom("絵背景筆雫01", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01x",0,700,0,2500,null,false);
	MusicStart("SE02x",0,1200,0,800,null,false);
	Fade("絵背景筆雫01", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫02", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01a",0,700,0,4500,null,false);
	MusicStart("SE02a",0,1200,0,1200,null,false);
	Fade("絵背景筆雫02", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫03", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01b",0,700,0,3500,null,false);
	MusicStart("SE02b",0,1200,0,1300,null,false);
	Fade("絵背景筆雫02", 0, 0, null, true);
	Fade("絵背景筆雫03", 0, 1000, null, true);
	Wait(200);

	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 300, Axl1, "cg/data/zzex_circle_01_00_0.png", true);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, Axl2);

	Wait(2000);

	Delete("絵背景筆雫*");
	Delete("絵色白");
	Delete("絵背景*");
	Delete("似鳥");
	FadeDelete("黒幕１",1500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100060nki">
「はぁっ……はぁっ……はぁっ……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100070skr">
「に、似鳥？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100080nki">
「で……できた……」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100090nki">
「完成だ」


{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100100skr">
「か……かかかか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm23", 0, 450, true);


//あきゅん「修正指示：ここで表示してしまうのは野暮、年明けまで秘密に」
//★inc櫻井　修正

//inc櫻井 喜びジャンプ
{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,false);
	Shake("@StNameC/C*", 500, 0, 12, 0, 0, 300, Axl1, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100110skr">
「カッケ――――――ッ！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/500100120mzh">
「これは……幻か！？」

{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"bu歌門_口覆い_shock");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/500100130kms">
「確かに……素晴らしい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100140skr">
「似鳥」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100150nki">
「ん？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100160skr">
「グッジャブ！！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100170nki">
「ちょっと違うけど――おう！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100180nki">
「今日はホント、世話になったな」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100190skr">
「なに。こっちこそ」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100200nki">
「ちゃんと、おまえも納得できるデキになってるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100210skr">
「ん……？　ううーん、そうだなあ……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100220skr">
「９０点？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100230nki">
「あと１０点は？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100240skr">
「こんなところで満足されちゃ、困るんだよ。
　いきなり１００点やっちまったら、つまんねぇだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100250nki">
「……だな」


{
//※下倉注：ここはエンディングっぽく継続で
//	SetVolume("@xbgm*", 1000, 0, null);
	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/500100260mzh">
「これで全て、準備は整ったかのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteSt("MR",200,false);
//	St("R",700, @0,@0,"bu歌門_通常_smile");
//	FadeSt("R",200,true);
//【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/c23/500100270kms">
//「年越しまで、あと５分。
//　何とか間に合いましたね……」


	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100280nki">
「これからどうすんだ？　弟さんのところに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2346);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100290nki">
「だったら、オレも一緒に――」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100300skr">
「いや、いいよ。今日は遅いし、それに――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100310skr">
「結局、年内中の約束守れなかったからな」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100320nki">
「ああ、そうか……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100330skr">
「結局アタシは、駄目な姉ちゃんだったってことだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100340nki">
「でも――」


{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100350skr">
「よっしゃ！　それじゃ、外に行くかッ！
　一緒にライブ、見てこうぜ！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100360nki">
「沙紅羅、悪いけど先に行っててくれっか？」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100370nki">
「コイツを飾るまでが、オレの仕事だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100380skr">
「ん……そっか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/500100390skr">
「頼んだぜ」

//嶋：最後くらい背筋伸ばしたい
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/500100400nki">
「おう！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	ClearWaitAll(1000, 1000);




	CreateColorEX("絵色100", 20000, "Black");
	Fade("絵色100", 1000, 1000, null, true);


	EndScene();
}
