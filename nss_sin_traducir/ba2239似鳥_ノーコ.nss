
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2239似鳥_ノーコ.nss_MAIN
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
	$GameName = "ba2240似鳥_ノーコ.nss";
}

scene ba2239似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "ba2239似鳥_ノーコ.nss"
//title "復讐"
//previous "ba2230似鳥.nss"
//previous "ba2230ノーコ.nss"

////////////footer////////////
//next "ノーコ" "ba2240似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2239);}



//◆演出指示：黒い剣線が走る。

//★ wam井野 素材がないので鎖にて。似鳥堕皇降臨も含めて ba2236千秋_恵那.nss からのほぼコピーです
//あきゅん「修正指示：コピー元の修正をこちらにも反映してください」
//★ wam井野 スクリプトを反映しました。10/11/19


	SetVolumeEX("@x*", 2000, 0, NULL);

//	CloudZoomSmokeSubSet01EX("スモークプロセスA",2500,"cg/ef/天使の羽big.png");
//	CloudZoomSmokeSubSet02EX("スモークプロセスB",2500,"cg/ef/天使の羽big.png");

//	CloudZoomSmokeSubDelete01EX(3000);
//	CloudZoomSmokeSubDelete02EX(3000);

	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2001, Center, Middle, "cg/ef/ef鎖飛来a.jpg");
	CreateTextureEX("絵背景100b", 2000, Center, Middle, "cg/ef/ef鎖飛来b.jpg");
	Rotate("絵背景100b", 0, @180, @0, @0, null,true);

	CreateSE("SE13","se戦闘_鎖02");
	CreateSE("SE14","se戦闘_金属弾く04");
	CreateSE("SE15","se戦闘_切断02");


	DeleteAllSt(0,true);
	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	CreateTextureEX("空２", 100, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("空２", 0, 2000, 2000, null, true);
	Fade("空２", 0, 1000, null, false);

	MusicStart("SE13",0,700,0,1000,null,false);

	Fade("絵背景100b", 0, 1000, null, true);
	Shake("絵背景100b", 300, 5, 8, 0, 0, 1000, Axl1, false);
	FadeDelete("上背景", 200, null, false);
	Zoom("絵背景100b", 500, 1200, 1200, Dxl2, true);

	MusicStart("SE14",0,700,0,1000,null,false);
	MusicStart("SE15",0,700,0,1000,null,false);

	Fade("絵背景100", 0, 1000, null, true);
	Delete("絵背景100b");
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1500, 1500, Dxl2, false);

//	CloudZoomSmokeSubStart01EX(700,150,500,1000,2500,1900,-300,376,1000,200,Dxl1);
//	CloudZoomSmokeSubStart02EX(700,150,500,1000,2500,1900,844,-100,-800,250,Dxl1);

	Zoom("空２", 1000, 1000, 1000, Dxl2, false);
	Shake("空２", 1000, 5, 2, 0, 0, 500, AxlDxl, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 1000, 0, null, true);

//	CloudZoomSmokeSubDelete01EX(1000);
//	CloudZoomSmokeSubDelete02EX(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/390100010tsr">
「ぐおおおおおおおおお！！」

{	MusicStart("@xbgm09",0,450,0,1000,null,true);}
　黒い天使の虚空の刃が、瓦礫を跳ね、腹を裂いた。

　夜空を浮遊する似鳥の背には、虚空を刳り抜く翼。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＥＶ："ev/ev2230似鳥堕皇降臨.txt"

//	CloudZoomSmokeSubDelete01EX(500);
//	CloudZoomSmokeSubDelete02EX(500);
	Wait(500);
	CreatePlainSP("絵板写", 5000);
	Wait(16);

/*

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 100, 300, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 2520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	SetShade("絵窓/絵演背景", MEDIUM);
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2530, center, middle, "cg/fu/fu似鳥堕皇_通常_rage.png");
	Move("絵窓/絵演立*", 0, @0, @-300, null, true);

*/

	CreateColorEX("黒幕１", 15000, "BLACK");
//	CreateColorEXadd("白フラ", 15000, "WHITE");
	CreateColorEXadd("赤フラ", 5000, "#FF0000");



	CreateTextureEX("絵背景１", 2000, center, -570, "cg/ev/l/ev2230似鳥堕皇降臨a_l.jpg");
	CreateTextureEXadd("絵背景２", 2010, 0, 0, "cg/ev/ev2230似鳥堕皇降臨a.jpg");

	Request("絵背景*", Smoothing);

	CloudZoomSmokeSubSet01EX("スモークプロセスA",2500,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSubSet02EX("スモークプロセスB",2500,"cg/ef/天使の羽big.png");

	Fade("黒幕１", 200, 1000, null, true);

	CloudZoomSmokeSubStart01EX(3800,1000,500,1000,2500,900,-300,576,-100,-100,Dxl1);
	CloudZoomSmokeSubStart02EX(3500,1000,500,1000,2500,900,1044,576,824,-100,Dxl1);


	Wait(16);
	Delete("絵板写");

	Fade("絵背景１", 200, 1000, null, true);
	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

	Fade("空２", 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/390100020nki">
「ずっと、ずっと、恥ずかしくて逃げてた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("黒幕１", 200, 1000, null, true);
	Zoom("絵背景１", 0, 2000, 2000, null, true);
	Move("絵背景１", 0, 110, -180, Dxl2, true);
	Move("絵背景１", 2000, 110, -150, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/390100030nki">
「忘れたことにしようとしてた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("黒幕１", 200, 1000, null, true);
	Move("絵背景１", 0, -800, -280, Dxl2, true);
	Move("絵背景１", 2000, @0, @50, Dxl2, false);
	Fade("黒幕１", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/390100040nki">
「けど、あの時確かに彼女はノーコだった。
　忘れちゃいけないことだったんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("黒幕１", 200, 1000, null, true);
	Fade("絵背景１", 0, 0, null, true);


	CreateTextureEX("絵背景追加", 2000, center, -570, "cg/st/l/st似鳥戴斗_堕皇_pride_ex01ogm.png");
	Fade("絵背景追加", 0, 1000, null, true);
	Move("絵背景追加", 2000, @0, @150, Dxl2, false);

	Fade("黒幕１", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010d]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/390100050nki">
「だから今、オレはここに宣言するッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE10","se擬音_堕皇変身");
	MusicStart("SE10",0,700,0,1000,null,false);

	Fade("黒幕１", 200, 1000, null, true);

	Delete("絵背景追加");

	St("C",700, @0,@0,"fu似鳥堕皇_通常_rage");
	Zoom("@StNameC/C*", 0, 900, 900, null, true);
	FadeSt("C",0,true);
	Request("@StNameC/C*", Smoothing);

	Zoom("@StNameC/C*", 10000, 1000, 1000, Dxl2, false);

//	Zoom("絵背景１", 0, 1000, 1000, null, true);
//	Move("絵背景１", 0, -482, 356, Dxl2, false);
//	Zoom("絵背景１", 3000, 500, 500, Dxl2, false);

//	Wait(1000);

//	Fade("フラ赤", 20, 1000, null, false);

	Fade("黒幕１", 1000, 0, null, false);
//	Wait(200);
//	Fade("フラ赤", 600, 0, null, false);
//	Wait(3000);
//	Fade("絵背景２", 20, 1000, null, true);
//	Move("絵背景２", 1000, @0, @-70, Dxl2, false);
//	Zoom("絵背景２", 1000, 1500, 1500, Dxl2, false);
//	Fade("絵背景２", 1000, 0, null, false);

//	Fade("フラ白", 20, 1000, null, true);
//	Fade("フラ白", 700, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010e]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/390100060nki">
「黒炎纏いて黒翼広げ、大地を統べたかつての<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェル――その転生体が、オレだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 2500, 0, NULL);

	SetVolumeEX("@xbgm*", 100, 0, null);

	CreateSE("SE11","se擬音_百野殺駆登場");
	MusicStart("SE11",0,700,0,1400,null,false);

	CreatePlainSP("絵板写", 2000);
	Request("絵板写", AddRender);
	Zoom("絵板写", 300, 1200, 1200, Dxl2, false);
	Shake("絵板写", 500, 5, 15, 0, 0, 500, null, false);
	FadeDelete("絵板写", 300, null, true);

	Wait(1000);
	CloudZoomSmokeSubDelete01EX(2000);
	CloudZoomSmokeSubDelete02EX(2000);
	Wait(2000);

//	TextBoxDelete(150);


	EndScene();
}
