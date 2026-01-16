
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2210恵那.nss_MAIN
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
	$GameName = "2220恵那_フウリ.nss";
	//$GameCircle=false;

}

scene 2210恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1230">
////////////header////////////
//file name "2210恵那.nss"
//title "ユージロー捜索願"
//previous "2200恵那.nss"

////////////footer////////////
//next "恵那" "2220恵那_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2210);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1103100スパコン館_店内_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);

	if($PreGameName=="2200恵那.nss"){
	FadeDelete("上背景", 1000, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300010fje">
「……………………」

{	DeleteAllSt(200,true);
	St("C",19700, @0,@0,"fu恵那_一休_hard");
	Fade("絵背景", 300, 1000, null, false);
	FadeSt("C",300,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300020fje">
（１０年前……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300030fje">
（父さんは、カゴメアソビをさせられそうになった）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300040fje">
（けど……それを拒否した）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300050fje">
（そのせいで……母さんが、いなくなった……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",19700, @0,@0,"fu恵那_哀愁_sad");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300060fje">
「……許せるわけ、ないじゃない」

{	St("C",19700, @0,@0,"fu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300070fje">
（ううん、落ち着きなさい、富士見恵那）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300080fje">
（それでやっと、父さんが私にアザナエルのことを話したがらなかった理由もわかったわ）

{	St("C",19700, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("C",300,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300090fje">
（父さんはずっと、その時のことを後悔してた――）

{	St("C",19700, @0,@0,"fu恵那_一休_hard");
	FadeSt("C",300,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300100fje">
（あれ……待てよ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);







//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100300110wfu">
「ん……んん……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300120fje">
（フウリさんのカゴメアソビが成功したら、弾丸は余るわけで……）

//	St("C",19700, @0,@0,"fu恵那_一休_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300130fje">
（私がカゴメアソビを成功させれば、母さんが帰ってくるかもしれない……？）

{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300140fje">
（いや……でも、そんな……
　こんな形で、事件が解決したり……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2211);}

//	TextBoxDelete(150);

	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100300150wfu">
「……た……さん……」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300160fje">
「ぇ？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300170fje">
「今、なにか言った……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}

	TextBoxDelete(150);

	CreateTextureEX("絵演背景", 2000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Zoom("絵演背景", 120000, 1500, 1500, null, false);
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//◆音声指示：小声
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100300180wfu">
「……んた、さん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：小声
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100300190wfu">
「かんたさん……たすけ……て……」

//	St("C",700, @0,@0,"bu恵那_哀愁_shock");
//	FadeSt("C",200,true);
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300200fje">
「『かんた』って――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300210fje">
「いや……でもまさか、そんな……だからって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	FadeDelete("絵演背景", 500, null, true);

{	St("C",700, @-60,@0,"bu恵那_一休_hard");
	Move("@StNameC/C*", 300, @60, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300220fje">
「でも……彼女も、同じタヌキ。
　ってことはもしかして――」

//	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300230fje">
「『織田貫太』？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolumeEX("@SE*", 1000, 0, null);

//	CreateSE("SE02","se擬音_フラッシュバック");
//	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");

//嶋：クロック
	ClockDelete(1000,false);
	Fade("絵色白",1000,1000,null,true);
WaitKey(1000);
//◆演出指定：回想開始

//◆場所：銭形公園_全景_夕
	OnBG(10,"bg1701200銭形公園_全景_夕");
	FadeBG(0,true);

	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 0, 200, null, true);

	SoundPlay("@xbgm25",1000,450,true);

	FadeDelete("絵色白", 500, null, true);

{	ClockTime(2212);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：以下、涙声
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300240fec">
「ユージロー！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300250fec">
「ユージロー！　どこ？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300260fec">
「どこに……どこにいるの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300270fje">
（散歩中、ユージローが逃げ出して、迷子になった）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300280fje">
（そんなことは初めてで、私は泣きべそをかきながら、ユージローを探していたのだけれど……）


{	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300290odk">
「恵那ちゃん、どうしたんだい？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300300odk">
「もう、日が暮れちゃうよ。
　おうちに帰らないと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2213);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300310fec">
「あ……はい」

{	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300320odk">
「ん？　また、千秋君とケンカした？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300330fec">
「そうじゃないです！」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300340odk">
「本当に？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300350fec">
「本当です！　ちあきなんか、知らないもん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300360odk">
「それじゃ、なにがあったの？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300370fec">
「ユージローを探してるんです」

{	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300380odk">
「ユージロー……あの犬の？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300390fec">
「お散歩してたら、いなくなっちゃって……」

{	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300400odk">
「ん……そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300410odk">
「それじゃ、一緒に探そう」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300420fec">
「いいんですか？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300430odk">
「日が暮れるまでだよ」

{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300440odk">
「そしたら、家まで送っていくから」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300450fec">
「でも、そしたらユージローが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2214);}

//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300460odk">
「僕が探しておく。
　それでいいね？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300470fec">
「……はい！」

{	DeleteAllSt(200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300480fje">
（助けてくれたのが、織田貫太さんだった）

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300490fec">
「ユージロー！　出ておいでー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300500odk">
「ユージロー！　ユージロー！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300510fje">
（日が暮れるまでユージローを探して秋葉原を歩き――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 1000, null, true);

	WaitKey(500);
	PrintGO("上背景", 5000);



//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

//◆演出指定：夜になる


	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 0, 200, null, true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300520fje">
（結局、見つけることができなかった）

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300530fec">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2215);}

//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300540odk">
「ほらほら、そんな顔しないで。ね？」

{	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300550odk">
「ちゃんと僕が、見つけてあげるから」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300560fec">
「ホントに？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300570odk">
「ホントに」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300580fec">
「絶対？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300590odk">
「絶対」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300600fec">
「今日中に？」

{	St("C",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300610odk">
「え？　あー、それは……」

//◆音声指示：小声
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300620odk">
「参ったな……明日は大事な商談が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300630fec">
「ユージロー、寒がりなんです」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300640fec">
「このまま夜になったら、凍えて死んじゃうかも……」

{	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300650odk">
「ああ、うん。わかったわかった」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300660odk">
「今日のうちに、見つけてみせるから。ね？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300670fec">
「ぜったい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2216);}

//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300680odk">
「絶対」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300690fec">
「やくそくして」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300700odk">
「ああ、約束。指切りげんまん」

{	DeleteAllSt(200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300710fje">
（貫太さんは、私の憧れのお兄さんだった。
　一緒にいられて、舞い上がっていたのかもしれない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureSP("絵背景00", 50, Center, Middle, "cg/bg/bg1701100銭形公園_全景_通常.jpg");

	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100300720odk">
「じゃ、家まで送って――」

{	DeleteAllSt(200,true);}

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300730fec">
「あれ？　ユージロー」

//◆音声指示：遠くから
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/100300740ujr">
「わう？」

{	MoveFTP3("@絵背景00", 2000, 2, 6);
	CreateSE("SE10","se動作_走る05_l");
	MusicStart("SE10",1000,500,0,1000,null,true);}
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300750fec">
「ユージロー！　ユージロ――」

//◆音声指示：遠くから
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/100300760ujr">
「わう！　わうわう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);



//◆ＳＥ：トラック急接近
//あきゅん「素材：evユージロー事故b」


	SetVolumeEX("SE10", 2000, 1000, null);

	CreateTextureEX("絵背景100", 100, -431, -482, "cg/bg/l/bg1701100銭形公園_全景_通常_l.jpg");

	Shake("絵背景100", 2500, 0, 5, 0, 0, 200, null, false);
	Move("絵背景100", 2000, -531, -482, null, false);
	Fade("絵背景100", 500, 1000, null, true);
	Delete("@NutFTP3");

	Wait(1500);


	CreateSE("SE02","seメカ_車_急ブレーキ");///seメカ_車_事故/
	MusicStart("SE02",0,1000,0,1000,null,false);


	CreateColorEXadd("絵色事故", 1500, "#FFFFFF");

	CreateSE("SE01","seメカ_車_トラックエンジン_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolume("@SE10", 200, 0, null);
	Fade("絵色事故", 0, 1000, null, false);
	DrawTransition("絵色事故", 300, 0, 1000, 200, Dxl1, "cg/data/slide_01_02_1.png", true);

	Delete("絵背景100");
	CreateTextureEX("絵背景2", 1200, Center, Middle, "cg/ev/m/ev2210ユージロー事故b_m.jpg");
	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/m/ev2210ユージロー事故b_m.jpg");
	Zoom("絵背景", 0, 750, 750, null, true);
	SetBlur("絵背景", true, 3, 500, 50, false);
	Fade("絵背景", 0,1000, null, false);


	Zoom("絵背景", 500, 1000, 1000, Dxl1, false);
	Fade("絵色事故", 300, 0, null, true);

	Shake_Loop_shima("@絵背景","絵背景process");
	Fade("絵背景2", 0,500, null, true);
	MoveFTP3("@絵背景2", 5000, 10, 7);

	Wait(1000);
	SetVolumeEX("SE01", 200, 0, null);


//※下倉注：道路へと駆け出す恵那の足音入れて下さい。「え――？」の台詞は轢かれる前の瞬間、スローモーションの中での一言です。急ブレーキの画面のまま（ただ光に包まれて、全身を浮遊感が――）まで引っ張って、その後se人体_倒れる02を入れるようにお願いします。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/22/100300770fec">
「え――？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300780fje">
（私は死んじゃうんだ――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2217);}

//※下倉注：カット 2010/11/02
////【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300790fje">
//（父さんとさよならして、母さんのところに行けるんだ）

//	TextBoxDelete(150);
	Fade("絵色事故", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300800fje">
（不思議と恐怖はなくて）

{	Fade("絵色事故", 500, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300810fje">
（ただ光に包まれて、全身を浮遊感が――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//嶋：やりすぎだったら削除：恵那が押される
	CreateSE("SE03","se動作_抱く");
	SoundEffect("SE03","Echo",90,30,250,250);
	SetVolume("SE03", 0, 800, NULL);
	Request("SE03", Play);

	Wait(500);

	Request("SE03", Pause);

	Wait(1000);

	CreateSE("SE01","seメカ_車_急ブレーキ");///seメカ_車_事故/

	MusicStart("SE01",500,1000,0,1000,null,false);

	Wait(1500);

//嶋：やりすぎだったら削除：吹っ飛ぶ貫太と倒れる恵那などなど
	CreateSE("SE04","se人体_倒れる05");///seメカ_車_事故/
	CreateSE("SE05","se人体_倒れる01");///seメカ_車_事故/
	CreateSE("SE06","se人体_倒れる02");///seメカ_車_事故/
	CreateSE("SE07","se人体_倒れる04");///seメカ_車_事故/

	SetVolume("SE01", 500, 0, null);
	MusicStart("SE04",0,1000,0,1000,null,false);

	Wait(1000);

	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",0,700,0,1000,null,false);

	Wait(500);

	MusicStart("SE07",0,700,0,1000,null,false);

	Wait(1000);

	SetVolume("SE*", 1000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);

	Delete("絵*");
	Delete("SE03");
	Delete("@NutFTP3");

	Wait(3000);

	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",2000,300,0,1000,null,true);

	Wait(2000);

	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 0, 200, null, true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/22/100300820ujr">
「わうわう！　わうわうわうわうッ！！」

{	SetVolume("SE01", 5000, 0, null);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300830fje">
（気付くと、私は道路の端に横たわっていて）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300840fje">
（辺りに貫太さんの姿はなくて）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「素材：evユージロー転倒c」

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev2210ユージロー転倒c.jpg");
	Fade("絵背景", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300850fje">
（目の前には、車に轢かれた、一匹のタヌキがいた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolumeEX("@xbgm*", 1000, 0, null);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白",1000,1000,null,true);
	Delete("絵背景");
	Delete("絵色");
	WaitKey(1000);

//◆演出指定：回想終了

	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);


	ClockPass(2218);
	FadeDelete("絵色白", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100300860wfu">
「ん……んん……ん……」

//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100300870wfu">
「かんた……さん……」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300880fje">
（きっと、幻じゃなかった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300890fje">
（この人が、人間の格好をして生活していたように）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300900fje">
（あの日、私を庇ってくれたのは――）

//◆ＳＥ：ガチャッ
{	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300910fje">
「誰！？」

//◆ＳＥ：コツ、コツ足音で少し引っ張ってから
{	CreateSE("SE02","se動作_歩く01_l");
	MusicStart("SE02",0,700,0,1000,null,true);
	DeleteAllSt(200,true);
	WaitKey(3000);
	SetVolume("SE02", 200, 0, null);
	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100300920okt">
「や……やあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300930fje">
「ぇ…………？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300940fje">
「…………ぁ」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300950fje">
「う……うそ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100300960okt">
「ん……？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300970fje">
「これ……夢……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100300980fje">
「本当に……貫太さん……？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100300990okt">
「あ……ああ。恵那ちゃんだね」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301000fje">
「う、うそ、嘘ウソうそ――！！
　ほ、ホントに本物！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301010okt">
「え、いや……僕が、偽物に見える？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301020fje">
「あ……！　ええと……！
　あの……その……！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301030fje">
「あ、あの時は、助けてもらって、ありがとう――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301040okt">
「話は後にしよう。
　今はフウリを治療するのが先だ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301050fje">
「あ、はい――って！
　な、治せるんですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2219);}

//◆演出指定：まだら色の葉っぱが一枚
//あきゅん「素材：obj太三郎の葉っぱ」



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"bu貫太_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301060okt">
「太三郎様の助けがあるからね」

{	DeleteAllSt(200,true);
	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj太三郎の葉っぱ.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 800, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301070fje">
（あれ……その葉っぱ、どこかで見たような……）


{	Move("絵オブ", 800, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");}
//	St("C",700, @0,@0,"bu貫太_通常_hard");
//	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301080okt">
「んく……ん、んん……」

//	St("C",700, @0,@0,"bu貫太_通常_hard");
//	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301090okt">
「ふんっ！！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：癒しライトー


	CreateSE("SE01","se擬音_光迸る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵黒幕", 25000, "#FFFFFF");
	DrawTransition("絵黒幕", 3000, 0, 1000, 1000, null, "cg/data/circle_13_00_0.png", true);

WaitKey(500);
	SetVolume("SE01", 2000, 0, null);

	FadeDelete("絵黒幕", 2000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100301100wfu">
「ぁ……んん、んんんん……」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301110fje">
「すごい……光……
　みるみるうちに、傷が……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301120fje">
「でも、苦しそう――」

{	DeleteAllSt(200,false);}

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301130okt">
「肉体の回復と引き替えに、一気に精神が疲労する」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//	St("ML",700, @0,@0,"bu貫太_通常_smile");
//	FadeSt("ML",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301140okt">
「名前を呼んで、勇気づけてやってくれ」

{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301150fje">
「はい！」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301160fje">
「フウリさん！　聞こえますか！？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/100301170fje">
「大丈夫ですよ！
　すぐに傷、治りますから！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100301180wfu">
「んぁ……ん……んん……んんん……！」

{	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301190okt">
「フウリ、目を覚ましてくれ」

//	St("C",700, @0,@0,"bu貫太_通常_normal");
//	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301200okt">
「僕だ、織田貫太だ」

//	St("C",700, @0,@0,"bu貫太_通常_hard");
//	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/100301210okt">
「もう一度……もう一度、会いに来た！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100301220wfu">
「ふぁ…………ん、きゅぅぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);






//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100301230wfu">
「ぁ………かんた……さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);

	EndScene();
}
