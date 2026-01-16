
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2008ノーコ.nss_MAIN
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
	$GameName = "2010ノーコ.nss";
//	$GameCircle=false;

}

scene 2008ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="270">
////////////header////////////
//file name "2008ノーコ.nss"
//title "アザナエルはどこへ？"
//previous "2007千秋_恵那_ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2010ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockPass(2008);

	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

	FadeDelete("上背景", 200, null, true);

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100010nko">
「そうか……きっとあにのあなで――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);
	TextBoxDelete(150);
//	SetVolume("SE*", 800, 0, null);

//◆演出指定：以下、1930沙紅羅.nssと同じ
//◆場所：あにのあな_正面_停電

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreateColorEXadd("絵色黒", 20000, "#FFFFFF");
	Fade("絵色黒", 200, 1000, null, true);

	CreateColorEXadd("絵色回想", 2000, "#FFFFFF");
	Fade("絵色回想", 0, 200, null, true);

	ClockDelete(0,true);
	ClockTime(2008);

	DeleteSt("C",0,true);
	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",0,true);

	Fade("絵色黒", 400, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/080100020skr">
「お！　いたいた！」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100030mzh">
「さ――沙紅羅！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/080100040skr">
「バッグ！　返して貰うぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演物袋", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物袋", 0, @0, @120, null, true);

	Fade("絵演物袋", 300, 1000, null, false);
	Move("絵演物袋", 300, @0, @-120, Dxl2, true);

	Wait(100);

	Zoom("絵演物袋", 300, 800, 800, null, false);
	FadeDelete("絵演物袋", 300, null, true);

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);
	//★徒歩：ＳＥプロセス１
	CreateSE("SE09","se動作_バッグ渡す");
	MusicStartPro("@SE09",0,700,0,1000,null,false,1000);
	//★立ち絵プロセス：開始
	FadeDeleteStPro("MR", 200, 500, 200, 500);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100050mzh">
「え？　ちょ――うぎゃっ」

{	//★立ち絵プロセス：再定義
	DustSt("MR");
	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE09", 500, 0, NULL);
	//★徒歩：ＳＥプロセス２
	CreateSE("SE09","se動作_走る02_l");
	MusicStartPro2("@SE09",0,700,0,1000,null,true,0,3000,2000);}
//◆音声指示：遠くへ
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/080100060skr">
「サンキュー、ガキンチョ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：以上、1930沙紅羅.nssと同じ

	SetVolume("SE*", 300, 0, null);

	Fade("絵色黒", 200, 1000, null, true);
	Delete("絵色回想");

	ClockPass(2008);

	CreateSE("SE03","seガヤ_街中_l");
	MusicStart("SE03",2000,700,0,1000,null,true);


	Delete("絵背景１");
	DeleteSt("C",0,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",0,true);

	CreateSE("SE03","seガヤ_交通少_l");
	MusicStart("SE03",200,700,0,1000,null,true);

	FadeDelete("絵色黒", 400, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100070nko">
「いれかわった」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100080mzh">
「そういうことか！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080100090kit">
「おい恵那？　大丈夫か？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080100100fje">
「う……うん、たぶんダイジョブ……」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080100110kit">
「いや、全然大丈夫に見えないし」

{	DeleteAllSt(150,true);
	St("C",700, @80,@0,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 1500, @-80, @0, Dxl3, false);
	FadeSt("C",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100120nko">
「ふたりがきをとられているうちに」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100130mzh">
「うむ、ふたりともさらばじゃ……！」

{	Move("@StNameC/C*", 300, @-120, @0, Axl2, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 3000, 0, null);}
　難しい表情で話し込む千秋と恵那を背後に、ノーコとミヅハは駆け足でその場を離れた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);
	TextBoxDelete(150);

{	ClockPass(2009);}

//◆場所：秋葉原_中央通り
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",2000,1000,0,1000,null,true);
	Wait(1000);

	CreateSE("SE03","seガヤ_街中_l");
	MusicStart("SE03",1500,700,0,1000,null,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	St("C",700, @80,@0,"buミヅハ_通常_sigh");
	SetVolume("SE01", 200, 0, null);
	Move("@StNameC/C*", 500, @-80, @0, Dxl3, false);
	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100140mzh">
「うう……早く、信号よ変われ！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100150mzh">
「沙紅羅から、アザナエルを取り戻さねばならぬのじゃ！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100160nko">
「ほんとうにまだ、あにのあなに？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100170mzh">
「わからん！　じゃがわらわは勝負事の神。
　地下通路へと導かれたのも、必然じゃ」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100180mzh">
「となれば、沙紅羅の所へは運命が導いてくれよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);



	DeleteAllSt(150,true);

	DeleteAllSt(200,true);


//◆ＳＥ：かさかさいう音。同人誌の切れ端が風に吹かれてやってくる
	CreateSE("SE01","se環境_紙飛ぶ02");
	CreateSE("SE02","se環境_風と葉っぱ_l");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,800,0,1000,null,true);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/img引き裂かれた同人誌が地面に散らばる.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100190nko">
「…………？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100200nko">
「あ、あれは――わたし？」

{	SetVolume("SE01", 3000, 0, null);
	SetVolume("SE02", 3000, 0, null);

	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100210nko">
「わたしのどうじんしが……きられてる」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100220mzh">
「面妖な……」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100230nko">
「わたしと……にとりの、おもいでを……」


{	SoundPlay("@xbgm09",0,450,true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 1500, @100, @0, Axl3, false);
	DeleteAllSt(1000,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100240nko">
「ころす」

{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100250mzh">
「え？　おい、ノーコ！　待て――」

{	DeleteAllSt(150,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/080100260nko">
「ころす。ぜったいにころす。ぜったいに。
　わたしとにとりのおもいで、おもいでおもいで……」

{	St("ML",700, @80,@0,"buミヅハ_通常_surprise");
	Move("@StNameML/ML*", 200, @80, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/080100270mzh">
「おいノーコ！　アザナエルじゃぞ！
　それどころでは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 200, @80, @0, Axl2, false);
	DeleteAllSt(200,false);
	TextBoxDelete(150);

//	ClearFadeAll(800, true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	EndScene();
}
