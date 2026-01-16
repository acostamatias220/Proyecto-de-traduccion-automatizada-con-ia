
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2330沙紅羅_千秋_恵那.nss_MAIN
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
	//$GameName = "";
	//$GameCircle=false;

	if($CharaName=="沙紅羅"){
		$GameName = "2331沙紅羅.nss";
	}else if($CharaName=="千秋"){
		CreateColorSP("絵色黒", 20000, "#000000");
		DrawTransition("絵色黒", 400, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
		$GameName = "2331千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		CreateColorSP("絵色黒", 20000, "#000000");
		DrawTransition("絵色黒", 400, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
		$GameName = "2331千秋_恵那.nss";
	}else{
		$GameName = "2331沙紅羅.nss";
	}

}

scene 2330沙紅羅_千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="230">
////////////header////////////
//file name "2330沙紅羅_千秋_恵那.nss"
//title ""
//previous "2320沙紅羅_千秋.nss"
//previous "2320恵那.nss"

////////////footer////////////
//next "沙紅羅" "2331沙紅羅.nss"
//next "千秋" "2331千秋_恵那.nss"
//next "恵那" "2331千秋_恵那.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
//	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);


//◆場所：籠_内部
//	OnBG(10,"bg0802100籠_内部_通常");
//	FadeBG(0,true);

//◆ＥＶ："ev/ev2330沙紅羅雪夜乃特攻隊.txt"

{	ClockPass(2330);}


	PrintGO("上背景", 1000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/ev2330沙紅羅雪夜乃特攻隊.jpg");

	CreateSE("SE01","se動作_ドア開ける04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "#FFFFFF");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	CreateColorEXadd("絵色", 5000, "#FFFFFF");
	Fade("絵色", 0, 1000, null, true);
	FadeDelete("上背景", 0, null, true);
	Delete("絵黒幕");

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/ev/ev2330沙紅羅雪夜乃特攻隊.jpg");
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/l/ev2330沙紅羅雪夜乃特攻隊_l.jpg");
	Request("絵背景", Smoothing);

	CreateTextureEX("絵背景1000", 1000, 0, -479, "cg/ev/l/ev2330沙紅羅雪夜乃特攻隊_l.jpg");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵色");


	Fade("絵背景1000", 0, 1000, null, true);
	CreateSE("SE02","se擬音_ギャグ_ドーン");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵背景1000", 300, 0, 0, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Wait(300);
	Fade("フラッシュ白",100,1000,null,true);
	Move("絵背景1000", 0, -933, -496, Dxl1, true);
	SetVolumeEX("SE02", 500, 200, null);
	CreateSE("SE03","se擬音_ギャグ_ドーン");
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("絵背景1000", 300, -1022, -59, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Wait(300);
	Fade("フラッシュ白",100,1000,null,true);
	Move("絵背景1000", 0, -516, 0, null, true);
	SetVolumeEX("SE03", 500, 200, null);
	CreateSE("SE04","se擬音_ギャグ_ドーン");
	MusicStart("SE04",0,700,0,1000,null,false);
	Move("絵背景1000", 300, -516, -59, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Wait(300);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("絵背景", 0, 1000, null, true);
	SetBlur("絵背景", true, 2, 500, 50, false);
	Delete("絵背景1000");
	SetVolumeEX("SE04", 500, 200, null);
	CreateSE("SE05","se擬音_ギャグ_ドカーン");
	MusicStart("SE05",0,700,0,1000,null,false);
	Zoom("絵背景", 500, 500, 500, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");
/*
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 3, 500, 50, false);

	Zoom("絵背景", 500, 1000, 1000, null, false);
	Fade("絵背景", 500, 1000, null, false);
*/

//	FadeDelete("絵色", 500, null, true);

//３人音声同時[text0010]【優先度４】//β版（千代子
//「ev2330沙紅羅雪夜乃特攻隊」表示演出[text0010]～【優先度４】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/300300010skr">
「どらああああああああああッ！！」「うおおおおおおおおおおおおッ！！」「がううううううううううううッ！！」

//◆音声指示：同時
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
//<voice name="沙紅羅" class="沙紅羅" src="voice/23/300300010skr">
//「どらあああああああああああああああッ！！」
//◆音声指示：同時
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
//<voice name="小碓千秋" class="小碓千秋" src="voice/23/300300020kit">
//「うおおおおおおおおおおおおおおおおッ！！」
//◆音声指示：同時
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
//<voice name="ユージロー" class="ユージロー" src="voice/23/300300030ujr">
//「がううううううううううううううううッ！！」

</PRE>
	SetText();
	AddText(1,"「どらあああああああああああああああッ！！」","沙紅羅","23/300300010skr",false,false,1000);
	AddText(2,"「うおおおおおおおおおおおおおおおおッ！！」","小碓千秋","23/300300020kit",false,true,1000);
	AddText(3,"「がううううううううううううううううッ！！」","ユージロー","23/300300030ujr",false,true,2000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//※下倉注：このタイミングで直前の恵那と双六のＥＶを入れて欲しいです。沙紅羅のルートから来ると、恵那立ちの情報がないままストーリーが進むので…… 2010/11/23
	CreateTextureEX("絵背景10000", 1000, Center, Middle, "cg/ev/ev2320恵那双六にレイプ未遂b.jpg");
	Fade("絵背景10000", 300, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/300300040fje">
「え――！？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/300300050ksr">
「な、ナンダァ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);

	SetBlur("絵背景", false, 3, 500, 50, false);
	Zoom("絵背景", 0, 1000, 1000, Dxl1, false);
	Move("絵背景", 0, 0, 0, Dxl1, true);

	FadeDelete("絵背景10000", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/300300060skr">
「それはこっちの台詞だッ！！　破廉恥だぞッ！」

{	Move("絵背景", 300, -102, -441, Dxl1, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/300300070ksr">
「金閣寺ッ！？」

{	Move("絵背景", 300, -516, -59, Dxl1, true);}
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/300300080kit">
「この野郎ッ！！　恵那を返せッ！！」

{	Move("絵背景", 300, -516, 0, Dxl1, true);}
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/300300090ksr">
「十手ッ！？」

{	Move("絵背景", 300, -1022, -59, Dxl1, true);}
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/300300100ujr">
「わうわうわう！　わうわうわうッ！！」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/300300110ksr">
「ブルマー犬！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);
	Delete("絵背景10");
{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",0,true);}

	Move("絵背景", 300, @0, -500, null, false);
	FadeDelete("絵背景", 300, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/300300120ksr">
「な、何が何だか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("C",2001, @-200,@0,"fu沙紅羅_木刀_rage");
	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	FadeSt("C",200,true);

//窓
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]

//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/300300130skr">
「隙アリッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ev/ev0000沙紅羅木刀アタック.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 3, 500, 50, false);
	CreateTextureEX("絵背景200", 3000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	SetBlur("絵背景200", true, 3, 500, 50, false);

	CreateSE("SE10","se戦闘_風切り音10");
	MusicStart("SE10",0,700,0,1000,null,false);
	Zoom("絵背景100", 500, 2000, 2000, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);
	Zoom("絵背景200", 500, 2000, 2000, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	DeleteAllSt(0,true);

	Delete("絵背景100");
	Delete("絵背景200");

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg0802100籠_内部_通常.jpg");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/img/img沙紅羅双六の腕をへし折る.jpg");
	CreateTextureSP("絵背景101", 1000, Center, Middle, "cg/img/img沙紅羅双六の腕をへし折る.jpg");
	Shake("絵背景101", 1500, 2, 3, 0, 0, 1000, null, false);

	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);
Wait(200);
	CreateSE("SE02","se人体_骨砕ける01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	Shake("絵背景10", 1000, 5, 10, 0, 0, 1000, null, false);
	FadeDelete("絵背景100", 500, null, false);
	FadeDelete("絵背景101", 500, null, true);



//あきゅん「素材：img沙紅羅双六の腕をへし折る」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/300300140ksr">
「がぁっ！！」

　一際高い音がして、双六の腕がおかしな方に折れ曲がる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/300300150skr">
「弟子よ今だッ！」

{	DeleteAllSt(200,true);}

{	St("MR",700, @50,@0,"bu千秋_通常_shout");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/300300160kit">
「おうっ！　恵那――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/300300170fje">
「千秋――ホントに、生き返って――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/300300180kit">
「話は後だ！　逃げるぞ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/300300190fje">
「う……うん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローb_通常_angry");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/300300200ujr">
「わうわうわうっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/300300210skr">
「アザナエルはアタシに任せろッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/300300220kit">
「はいっ！」

{	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 300, @60, @0, Axl1, false);
	St("ML",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/300300230fje">
「よ、よろしくお願いしますッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameML/ML*", 300, @60, @0, Axl1, false);
	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 4000, 0, null);


	EndScene();
}
