
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1930似鳥.nss_MAIN
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
	$GameName = "1940似鳥.nss";
//	$GameCircle=false;

}

scene 1930似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1180">
////////////header////////////
//file name "1930似鳥.nss"
//title "アザナエルを探せ"
//previous "1920似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "似鳥" "1940似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	SoundPlay("@xbgm12",0,450,true);

{	ClockPass(1930);}

	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(500);


{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",300,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500010nki">
「ふ……」

{	St("C",19010, @0,@0,"fu似鳥_通常_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500020nki">
「ふふ、ふふふふふ……」

{	St("C",19010, @0,@0,"fu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500030nki">
「あは、あははははははははは――――！！」

{	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500040nki">
「言った……言ってやったぞ！　とうとう！」

{	St("C",19010, @0,@0,"fu似鳥_ラッパー_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500050nki">
「そうだ……そうだ！
　今までのことは、みんな、みんなノーコが悪い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500060nki">
「これで、オレは変わる！
　アイツがいなけりゃ、オレは変われるんだ」

{	St("C",19010, @0,@0,"fu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500070nki">
「こんな、クソみたいな自分と、オサラバできるんだ」

{	St("C",19010, @0,@0,"fu似鳥_眼鏡上げ_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500080nki">
「そうだろう？　そうだよな！」

{	St("C",19010, @0,@0,"fu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500090nki">
「あは、あははははははははは――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 400, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(500);

//◆ＳＥ：ドアを開く音
	CreateSE("SE01a","se動作_ノック02");
	CreateSE("SE01","se動作_鍵開ける");
	CreateSE("SE02","se動作_ドア開ける01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Wait(1000);


	SetVolumeEX("SE01a", 300, 0, null);
	St("C",19010, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500100nki">
「――ッ！？　帰ってきた！？」

{	St("C",19010, @0,@0,"fu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500110nki">
「ふざけんな！！
　おまえのせいで、オレの人生はメチャクチャ――！」

{	St("C",19010, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500120nki">
（あれ……？
　でも、ノーコって扉ノックしたっけ……）

{
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(200);
	MusicStart("SE02",0,1000,0,1000,null,false);
	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500130ksr">
「誰のせいだって？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,800,0,1000,null,false);

	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);
	CreateTextureSP("絵背景300", 100, Center, Middle, "cg/bg/bg1303100似鳥マンション_玄関_通常.jpg");
	Move("絵背景300", 0, @-100, @0, null, true);
	Request("絵背景300", Smoothing);
	Zoom("絵背景300", 0, 1800, 1800, null, true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", false);

//◆演出指定：いきなり蹴り
	Zoom("絵背景300", 500, 1500, 1500, Dxl2, false);
	Shake("絵背景300", 500, 20, 15, 0, 0, 1000, Dxl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500140nki">
「ふがっ！！」

　いきなり、蹴り飛ばされる。

{	St("ML",700, @-50,@0,"bu双六a_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500150ksr">
「人のせいにすんのか？　あ？」

{	DeleteAllSt(200,false);
	St("MR",19010, @0,@0,"fu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500160nki">
「あ、いや、そうじゃ、なくて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateSE("SE01","se戦闘_絞める");
	CreateSE("SE02","se人体_倒れる04");
	CreateSE("SE03","se人体_倒れる03");
	CreateSE("SE04","se人体_倒れる01");

	SoundPlay("@xbgm31",0,450,true);


	MusicStart("SE03",0,1200,0,1000,null,false);

	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @80, @50, Axl2, false);

	DeleteAllSt(200,true);


	CreatePlainSP("揺用", 100);
	Shake("揺用", 300, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

	CreateTextureEX("絵背景100", 150, Center, Middle, "cg/ev/ev1930似鳥双六に脅される.jpg");
	CreateTextureEX("絵背景200", 150, -1000, -24, "cg/ev/l/ev1930似鳥双六に脅される_l.jpg");

	MusicStart("SE04",0,700,0,1000,null,false);

	FadeF4("絵背景200", 500, 500, 500, 0, 0, Dxl3, false);
	Shake("絵背景200", 800, 10, 15, 0, 0, 1000, Dxl2, false);
	Fade("絵背景200", 500, 1000, null, true);

	Wait(300);

	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵背景200", 1000, 0, -500, AxlDxl, true);

	MusicStart("SE01",0,1500,0,1000,null,false);
	Wait(300);

	Fade("絵背景100", 0, 1000, null, true);
	Delete("絵背景300");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500170nki">
「いででででっ！」

{	Move("絵背景200", 2000, -1024, 0, AxlDxl, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500180ksr">
「てめーの人生は、てめーのもんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500190ksr">
「学校を辞めたのも、家族に見捨てられたのも、双一親分から借金をしたのも――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500200ksr">
「全部、全部、てめーのせいだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500210ksr">
「違うか？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500220nki">
「え、いや、それは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("絵背景200", 500, -712, -288, AxlDxl, true);
	CreateColorEXover("絵色100", 1500, "#FFAA22");
	CreateSE("SE01","se戦闘_焼ける");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500230ksr">
「違うかって聞いてンだよッ！！」

{
	Fade("絵色100", 100, 700, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景200", 500, 15, 5, 0, 0, 1000, Dxl2, false);
	Fade("絵色100", 500, 0, null, true);
	Delete("絵色100");
}
//◆ＳＥ：じゅうっ！！
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500240nki">
「あああああッ！！」

{	Fade("絵背景200", 500, 0, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500250nki">
「はいそうです！　そうです！
　みんな、オレの責任です！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500260ksr">
「で、てめえは自分の責任、とれんのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateColorEXover("絵色100", 16500, "#FFAA22");
	CreateSE("SE01","se戦闘_焼ける");
	CreatePlainSP("揺用", 15000);

	Fade("絵色100", 100, 700, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("揺用", 300, 20, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, false);
	Fade("絵色100", 500, 0, null, true);

	Delete("絵色100");
	Delete("揺用");


{	ClockPass(1931);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500270nki">
「あづづづづづっ！！」

　双六のタバコが、押さえつけられた左手に落ちる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateColorEXover("絵色100", 16500, "#FFAA22");
	CreateSE("SE01","se戦闘_焼ける");
	CreatePlainSP("揺用", 15000);

	Fade("絵色100", 100, 700, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("揺用", 300, 20, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, false);
	Fade("絵色100", 500, 0, null, true);

	Delete("絵色100");
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500280nki">
「あづっ！　あづっ！　んんん――――ッ！！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500290ksr">
「何度も約束したよな？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500300ksr">
「今日中に、貯まった利息の２０万、きっちり返して貰えねぇんだったら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景100", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
　双六がぽとっと煙草を落とし――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateSE("SE01","se動作_足踏み");
	CreateSE("SE02","se戦闘_打撃音04");
	CreatePlainSP("揺用", 100);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("揺用", 500, 0, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆ＳＥ：ドン！　足を踏みならす音
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500310nki">
「ひえっ！」

{	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500320ksr">
「てめーの身体がこうなっても、文句はいえねー」

　全力で、踏みつける。

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500330ksr">
「……まあ、潰したところで床が汚れるだけだから。
　現実的にはベーリング海に御招待！　って感じか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500340nki">
「は……はい……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500350ksr">
「で――金は？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500360nki">
「ええと、それが……」

//◆ＳＥ：ジッポ
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500370ksr">
「用意できてねーのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500380nki">
「いや、できてないっていうか……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500390ksr">
「双一親分との約束を、破んのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500400nki">
「い、いえ！　そんなそんなそんな！　とんでもない！」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500410nki">
「あの、はい、早く返します！
　なるべく早く、できるだけ今日中に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1932);}


	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500420ksr">
「できるだけ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500430nki">
「今日中にッ！　今日中に返しますんでッ！」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500440nki">
「だからお願いです！
 もう少しだけ、待ってくださいッ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500450ksr">
「もう少しっていわれても、大晦日だぞ。
　もう夜だぞ。無理だろ？　な？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500460ksr">
「二度手間だから、もう諦めて、家片付けような？
　次にここに住むやつももう決まってる――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500470nki">
「返すアテはあるんですッ！
　もう２時間待ってください！」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500480nki">
「同人誌を創ったんで、それを売ればお金になります！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500490ksr">
「どーじんし？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500500nki">
「これですッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500510ksr">
「…………は？」

{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500520ksr">
「この、ペラペラの本が、なに？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500530nki">
「これを業者に卸すと、お金になるんです！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500540ksr">
「お前、プロの漫画家？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500550nki">
「え？　い、いえ、違いますけど……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500560ksr">
「なのに、売れる？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500570nki">
「はい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500580ksr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500590ksr">
「……わからん。判断つかねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500600ksr">
「親分に訊いてみっか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500610nki">
「え？　親分って――」

{	DeleteAllSt(200,true);
	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(600);}
//◆ＳＥ：電話ぴぽぱぽ
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500620ksr">
「親分つったら、双一親分に決まってんだろ？」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500630nki">
「か、かか……河原屋、双一……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1933);}


	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500640nki">
「え、でもいや、そこまですることのことでも……」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500650ksr">
「あ、もしもし！　親分ですか？」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500660nki">
「ひっ！」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500670ksr">
「いや、問題ってほどのことでもないんですが……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500680ksr">
「借金してる似鳥ってガキがいたじゃないですか。
　あいつが、もう２時間待ってくれって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500690ksr">
「それが、なんかどーじんし？
　とかいうのを売って、金を返すって――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500700ksr">
「は……はい！　すいません。
　俺、そういうのには詳しくなくて――はい――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500710ksr">
「以後、このようなことのないようにしますッ！
　すんませんしたッ！！」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500720nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500730ksr">
「あ、え……？　本人に……？
　いや、でも――――は、はい」

　不可思議に顔を歪めた双六が、携帯電話を差し出す。

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500740ksr">
「オラ」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500750nki">
「へ？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500760ksr">
「双一親分が、直々に話したいんだと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/bg/bg1303100似鳥マンション_玄関_通常.jpg");
	SetShade("絵背景300", HEAVY);
	Move("絵背景300", 0, @-100, @0, null, true);
	Request("絵背景300", Smoothing);
	Zoom("絵背景300", 0, 1500, 1500, null, true);

	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500770nki">
「あ、いや、でも僕は――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300500780ksr">
「……あぁん？
　双一親分の言うことが、聞けねぇってのか？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500790nki">
「いえいえまさか！　聞かせていただきますッ！」

{	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);
	DeleteAllSt(200,true);}
　似鳥は慌てて、携帯電話を受け取る。

{	St("C",19010, @0,@0,"fu似鳥_通常_sigh");
	Fade("絵背景300", 500, 1000, null, true);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500800nki">
「――――ふぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1934);}


	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500810nki">
「も……もしもし」

{	SoundPlay("@xbgm04",0,450,true);
	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500820ksi">
『金が用意できてねえのか』

{	St("C",19010, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500830nki">
「え。ええと。あ。あの」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500840ksi">
『硬くなるな。約束まではまだ４時間半ある』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500850ksi">
『用意、できるんだろうな？』

{	St("C",19010, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500860nki">
「は――はいっ！　も、もちろんです！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500870ksi">
『期待してるぞ』

{	St("C",19010, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500880nki">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//◆音声指示：電話越し
//【河原屋双一】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
<voice name="河原屋双一" class="その他男声" src="voice/19/300500890ksi">
『ところでおめえ……』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500900ksi">
『夢は、あるか？』

{	St("C",19010, @0,@0,"fu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500910nki">
「え……？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500920ksi">
『叶えたい夢はあるかって、聞いてんだ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("C",19010, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500930nki">
「叶えたい夢……」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500940ksi">
『もし、てめぇが今日中に金を用意できなくて、それでも、本気で叶えたい夢があんなら――』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500950ksi">
『「アザナエル」を探せ』

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300500960nki">
「アザナエル――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1935);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500970ksi">
『ミリタリー＆ポリス、２インチモデル』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500980ksi">
『半世紀以上昔の年季モノ。
　銃身に『<RUBY text="アザナエル">ＡＸＡＮＡＥＬ</RUBY>』って文様が入ってる』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300500990ksi">
『秋葉原のどこかにあるその銃が、もしもてめぇの手に入ったなら、その夢、叶えるチャンスをやろうじゃねぇか』

{	St("C",19010, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501000nki">
「じゃあ、借金もチャラに！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300501010ksi">
『おまえがそのチャンスをものにすれば、な』

{	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501020nki">
「で、でも……」

{	St("C",19010, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501030nki">
「どうして自分に、そんな話を……？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300501040ksi">
『巡り合わせだ。運命と言ってもいい』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/19/300501050ksi">
『てめぇは、アザナエルに呼ばれてんだよ』

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501060nki">
「呼ばれてる……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景400", 100, Center, Middle, "cg/bg/bg1303100似鳥マンション_玄関_通常.jpg");
	Move("絵背景400", 0, @-100, @0, null, true);
	Request("絵背景400", Smoothing);
	Zoom("絵背景400", 0, 1500, 1500, null, true);


//◆ＳＥ：電話が切れる
	CreateSE("SE01","seメカ_携帯_切れる");
	CreateSE("SE02","seメカ_携帯_電話切れる02_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(2000);

	SetVolumeEX("SE*", 1000, 0, null);
	Fade("絵背景400", 300, 1000, null, true);
	Delete("絵背景300");


{	ClockPass(1936);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300501070ksr">
「よこせ」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501080nki">
「はいっ、すいません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300501090ksr">
「話は聞いたな？
　１時間で、バックギャモンに金を――」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501100nki">
「ちょ！　待ってください！
　時間は今日中でよかったんじゃ――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300501110ksr">
「アホか！　なんでてめぇのために、年越しまで待ってやんなきゃなんねぇんだよ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/300501120ksr">
「いいか、８時半だ！
　それまでに金、用意してくんだぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);
//◆ＳＥ：バタン！　扉が閉まる

	CreateSE("SE01","se動作_ドア閉める02");
	CreatePlainSP("揺用", 2005);

	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("揺用", 400, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 400, 0, null, true);
	Delete("揺用");

	Fade("絵背景400", 200, 0, null, true);
	Delete("絵背景*");

	Wait(1000);

//※下倉注：ここ、音が違和感あるのでコメントアウトさせて下さい
//	CreateSE("SE10","se擬音_ノイズ_l");
//	MusicStart("SE10",2000,1000,0,1000,null,true);

{	ClockPass(1937);}

//◆演出指定：テレビの音が帰ってくるイメージ

	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501130nki">
（１時間……？　なんで、こんなことに――）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501140nki">
（……いや。悩んでる暇はない）

{	DeleteAllSt(200,true);}
　似鳥は首を振り、汚い部屋の隅に崩れ落ちた、新刊の売れ残り段ボールを見据える。

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501150nki">
（コレを買い切り２０万で捌けば、命が繋がる）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501160nki">
（望みが薄いのはわかってるけど――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501170nki">
（動き出さなきゃ）

{	DeleteAllSt(200,true);}
　似鳥はサンプルをカバンに詰め込んだ。

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/300501180nki">
（もう、ノーコがいたときのオレとは、違うんだッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1500, 0, null);
	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1500);

	EndScene();
}
