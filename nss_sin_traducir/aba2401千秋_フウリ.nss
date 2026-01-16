
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aba2401千秋_フウリ.nss_MAIN
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
	$GameName = "aba2402フウリ.nss";//★エンディング中（aba）
}

scene aba2401千秋_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="400">
////////////header////////////
//file name "aba2401千秋_フウリ.nss"
//title "未来は今"
//previous "aba2400恵那.nss"

////////////footer////////////
//next "aba2402フウリ.nss"

//※↑条件分岐の書き方がよく分からないため飛び先設定未設置（mngw 10/14）


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	PrintFadeNut("上背景弐", 0, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

{	ClockPass(1858);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm20",0,450,true);

	FadeDelete("上背景", 0, null, true);
	FadeDelete("上背景弐", 2000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100010fjh">
「逃げなくていいって！　ただ、届け物に来ただけだから」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100020kit">
「届け物？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100030fjh">
「村崎の店にぶつかったときに落としただろ？
　こいつを……」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100040fjh">
「ん……あれ？　ない……？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1859);}


//◆ＳＥ：ポケットパンパン入れる？
//※↑該当ＳＥなし（mngw）
	CreateSE("SE01","se動作_軽く叩く");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100050fjh">
「あんれー？　どこにやったかな……」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100060fjh">
「あ、バッグの中に入れっぱなしか……？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100070fjh">
「ええと……クリマンバッグはどこに――」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100080fjh">
「お！　あった、コレだ！」

{	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100090fjh">
「ええと……」


{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100100kit">
「あ！　あああああああ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100110kit">
「いや待った！　ちょっと待った！
　そのバッグ、オレの――！」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100120fjh">
「あ？　なに言って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/img/imgエコバッグ_千秋1820.jpg");
	Zoom("絵背景100", 0, 3000, 3000, AxlAuto, true);
	Zoom("絵背景100", 500, 1000, 1000, Axl1, false);
	Fade("絵背景100", 500, 1000, null, true);
	Zoom("絵背景100", 300, 2000, 2000, Dxl1, true);
	Zoom("絵背景100", 300, 1000, 1000, Axl1, true);
	Zoom("絵背景100", 150, 1500, 1500, Dxl1, true);
	Zoom("絵背景100", 150, 1000, 1000, Axl1, true);
	Zoom("絵背景100", 100, 1200, 1200, Dxl1, true);
	Zoom("絵背景100", 100, 1000, 1000, Axl1, true);
	Zoom("絵背景100", 50, 1100, 1100, Dxl1, true);
	Zoom("絵背景100", 50, 1000, 1000, Axl1, true);
	Zoom("絵背景100", 30, 1050, 1050, Dxl1, true);
	Zoom("絵背景100", 30, 1000, 1000, Axl1, true);

	Delete("@OnBG*");

//	St("ML",700, @0,@0,"bu平次_通常_shock");
//	Shake("@StNameML/ML*", 200, 5, 5, 0, 0, 500, null, false);
//	FadeSt("ML",200,true);

	SoundPlay("@xbgm05",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	Shake("絵背景100", 300, 10, 10, 0, 0, 500, null, false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100130fjh">
「のわああああああっ！！
　な、なんじゃこりゃああああああッ！！」

{	Shake("絵背景100", 300, 10, 10, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100140kit">
「ひえええええええッ！！」

{	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);
	FadeDelete("絵背景100", 200, null, true);
	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100150fjh">
「ブルマーじゃねぇかっ！
　オレのバッグに、ブルマーが！？」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100160kit">
「いやいや、それオヤジさんのじゃなくて……
　外は同じだけどオレのなんだッ！」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100170fjh">
「なあんだ、そうだったのか……」


{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100180kit">
「そうなんですよ、あは、あははははは……」

{	St("ML",700, @0,@0,"bu平次_通常_happy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 3500, 2, 2, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100190fjh">
「あはははははははは！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 2500, 2, 2, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100200kit">
「あはははははははは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu平次_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateMaskAXLSP("マスク", 500, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");
	CreateTextureSP("マスク/絵体育着", 400, 369, -100, "cg/img/imgエコバッグ_千秋1820.jpg");
	DrawDelete("絵板写", 300, 10, Dxl2, "slide_01_03_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059a]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100210fjh">
「っておいコレここに富士見恵那って名前書いてあるっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Delete("マスク*");
	FadeDelete("絵板写", 300, null, true);

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100220kit">
「やべっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu平次_御用だ_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100230fjh">
「おい！　泥棒はてめぇだなッ！」

{	St("MR",700, @-60,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @60, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100240kit">
「いや、ちがいま――」

{	St("ML",700, @0,@0,"bu平次_御用だ_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100250fjh">
「て・め・ぇ・だ・な？」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100260kit">
「え……ええと……」

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100270kit">
「あは、あは、あはははははは……」


{	CreateSE("SE01","se擬音_ギャグ_逃げる");
	St("MR",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100280kit">
「ごめんなさ――――い！」

{	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100290fjh">
「逃がすかッ！！」

{	Move("@StNameML/ML*", 200, @120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("MR",700, @-120,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100300kit">
「ぎゃー！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(200,true);

//◆ＳＥ：ビターン！

	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);



	Shake("@OnBG*", 300, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 300, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",500,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100310fjh">
「捕まえ――ん？　あれ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1900);}


//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：ぽにょぽにょ
	CreateSE("SE03","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE03",0,700,0,1000,null,false);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100320fjh">
「こ、この感触……」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100330fjh">
「おまえ……男？」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100340kit">
「や……やめろ……バカ」

{	St("ML",700, @0,@0,"bu平次_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100350fjh">
「っていうか――」


{	DeleteAllSt(200,true);}
　平次は自分のバッグを漁り、ネームプレートを出した。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/obj/obj千秋ネームプレートa.png");
	Move("絵背景200", 0, @0, @200, null, true);
	Move("絵背景200", 200, @0, @-200, DxlAuto, false);
	Fade("絵背景200", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


　「アッキー」と殴り書きされた紙。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE04","se擬音_ギャグ_きゃるーん");
	MusicStart("SE04",0,700,0,1000,null,false);

	Zoom("絵背景200", 200, 0, 1500, AxlAtuo, true);

	FadeDelete("絵背景200", 0, null, true);
	CreateTextureEX("絵背景201", 2000, Center, Middle, "cg/obj/obj千秋ネームプレートb.png");
	Zoom("絵背景201", 0, 0, 1500, AxlAtuto, true);
	Fade("絵背景201", 0, 1000, null, false);
	Zoom("絵背景201", 200, 1000, 1000, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

　その裏には、「千秋」の文字。


{	Move("絵背景201", 200, @0, @200, AxlAuto, false);
	FadeDelete("絵背景201", 200, null, true);
	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100360fjh">
「や、や、や、やっぱり――！」

{	St("ML",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100370fjh">
「てめぇッ！　千秋の小僧だなッ！！」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100380kit">
「ごごごごごごごッ！　ゴメンナサイ――――ッ！！」

{	St("ML",700, @0,@0,"bu平次_御用だ_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/010100390fjh">
「ゴメンで済めば――警察いるかあああああッ！！」


{	St("MR",700, @0,@0,"bu千秋_驚天_shy");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aba24/010100400kit">
「ぎゃ――――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);
	Move("@StNameMR/MR*", 300, @250, @0, DxlAuto, false);
	DeleteAllSt(300,true);

	WaitKey(2000);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	WaitKey(3000);



	EndScene();
}
