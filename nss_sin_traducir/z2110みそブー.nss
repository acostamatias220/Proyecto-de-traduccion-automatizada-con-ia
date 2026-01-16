
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2110みそブー.nss_MAIN
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
	EndScript();

}

scene z2110みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "z2110みそブー.nss"
//title "プロフェッショナル・夜逃げ荷造りテクニック"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2113);}

//◆場所：似鳥マンション_玄関_カレー
	OnBG(10,"bg1303200似鳥マンション_玄関_カレー");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/100300010buu">
「げェッ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/100300020mso">
「マジかよ……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/100300030msi">
「これは……なかなか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/100300040buu">
「っていうかクセぇ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/100300050mso">
「カレークセぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/100300060mso">
「たったの３０分で――
　ホントにこんな部屋、片付くのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/100300070buu">
「双六さんめ……
　急に蘇ったかと思ったら、無理難題を！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/100300080msi">
「ふ――ふふふふふ――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/100300090buu">
「村崎さん……気を確かに！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/100300100mso">
「確かに、双六さんの手から逃げられなかったのがショックなのはわかりますけど――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/100300110msi">
「いえ、私は正気です。
　この程度の逆境で、挫けるはずなどない！」

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/100300120msi">
「さあ、二人とも、準備はいいですか？」

{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/100300130msi">
「私のプロフェッショナル・夜逃げ荷造りテクニックを、今お見せいたしましょうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
