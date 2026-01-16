
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2051似鳥.nss_MAIN
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
	$GameName = "ab2100沙紅羅_似鳥_フウリ.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）


}

scene ab2051似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="710">
////////////header////////////
//file name "ab2051似鳥.nss"
//title "生まれ変わって"
//previous "ab2050似鳥_ノーコ.nss"

////////////footer////////////
//next "似鳥" "ab2100沙紅羅_似鳥_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	SoundPlay("@xbgm01_noint",0,450,true);
	FadeDelete("上背景", 0, null, true);

{	ClockPass(2051);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("C",700, @-120,@0,"bu似鳥_通常_pinch");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200010nki">
（拳銃を拾う余裕は――ない！）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200020nki">
（逃げるッ！！）



//◆音声指示：遠くから


/*
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510200030msi">
「あ、ま、まままま、待てええええ――――ッ！！」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200040nki">
（待つもんかッ！！）
*/

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	Move("@StNameC/C*", 200, @200, @0, DxlAuto, false);
	DeleteAllSt(200,true);


//	TextBoxDelete(150);



{	St("C",19010, @-200,@0,"fu似鳥_通常_angry");
	Move("@StNameC/C*", 200, @200, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200050nki">
（一度は諦めた命だ！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200060nki">
（これも、オレに与えられた運命ッ！！）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200070nki">
（逃げて――逃げて――）

{	St("C",19010, @0,@0,"fu似鳥_通常_shout");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200080nki">
（逃げ切ってやる――――ッ！！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @200, @0, AxlAuto, false);
	DeleteSt("C", 200,true);

	SetVolumeEX("SE01", 4000, 0, null);
	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	SceneOut(20000, 1000, "slide_01_03_0");

	WaitKey(2000);


{	ClockPass(2053);}


//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);

	SceneIn(500, "slide_01_03_1");


{	St("C",700, @-100,@0,"bu似鳥_通常_pain");
	Move("@StNameC/C*", 300, @100, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200090nki">
「はぁッ……はぁッ……はぁ……」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200100nki">
「ん……んくぅ……」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200110nki">
（ここは、線路――）

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200120nki">
（ここまで来れば……安心か？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：遠くから
	DeleteAllSt(200,true);
	CreateTextureSP("絵背景100", 20, -500, -300, "cg/bg/l/bg0703100地下_地下鉄_通常_l.jpg");

	Shake("絵背景*", 1000, 5, 5, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/510200130msi">
「ぎゃああああああああああああッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	FadeDelete("絵背景*", 500, null, true);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【似鳥戴斗】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200140nki">
「ぁ――――」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200150nki">
（まさか、逃がしたからって双六に……？）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200160nki">
（…………）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200170nki">
（だとしてもオレのせいじゃない。
　深く考えないことにしよう）


{ DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200180nki">
（このまま線路沿いに――）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200190nki">
（……いや）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200200nki">
（双六は、オレが灯りないの知ってるし……普通に考えれば、線路沿いに追いかけるよな）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200210nki">
「…………」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200220nki">
（一か八か、脇道に――！）


{	Move("@StNameC/C*", 1000, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);}



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆演出指定：以下、画面切り替えたっぷりで、時間経過を表現。（…………）の度にたっぷりwaitを置いて時間経過させるイメージ
//あきゅん「修正指示：上記内容を以下のシーン内で組み込んでください」

	SceneOut(20000, 1000, "blind_01_00_1");


//◆時間：ジャンプ
{	ClockPass(2058);}

//◆場所：地下_通路_あにのあな
	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	CreateSE("SEL01","se動作_歩く02_l");
	MusicStart("SEL01",500,700,0,600,null,true);

	WaitKey(1000);

	SceneIn(1000, "blind_01_00_0");

	WaitKey(1000);

	St("C",700, @-60,@0,"bu似鳥_通常_hard");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200230nki">
（や……ヤバイ）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200240nki">
（暗すぎる……）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200250nki">
（っていうか、迷った）


{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200260nki">
（普通に線路沿いを行った方が良かったか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//あきゅん「修正指示：立ち絵を消して時間の経過を演出」
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	DeleteAllSt(1000,true);

	SceneOut(20000, 1000, "blind_01_00_0");
	WaitKey(1000);

//	St("C",700, @0,@0,"bu似鳥_通常_sigh");
//	FadeSt("C",200,true);

	CreateTextureEX("絵背景200", 50, Center, Middle, "cg/bg/l/bg0701400地下_通路_あにのあな_l.jpg");
	Move("絵背景200", 0, @-400, @100, null, true);
	Fade("絵背景200", 0, 1000, null, true);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200270nki">
（…………）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	St("C",19010, @-160,@0,"fu似鳥_通常_hard");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200280nki">
（でも……）

{	St("C",19010, @-100,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200290nki">
（オレ、生きてるんだよな）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200300nki">
（うん。生きてる）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200310nki">
（っていうか、確率６分の５だもんな……）

{	St("C",19010, @-100,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200320nki">
（当たったら、かなり運が悪いよな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：時間の経過を演出」

	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	DeleteAllSt(1000,true);

	SceneOut(20000, 1000, "blind_01_00_0");
	WaitKey(1000);

	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	Fade("絵背景200", 0, 0, null, true);

	SceneIn(1000, "blind_01_00_1");

{	St("C",700, @-60,@0,"bu似鳥_通常_sad");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200330nki">
（…………）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200340nki">
（でも……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	
	TextBoxDelete(150);
	PrintFadeNut("上背景", 300, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	CreateTextureSP("絵背景100", 1000, -150, -100, "cg/img/imgアザナエルマズル弾なし.png");
	Zoom("絵背景100", 0, 800, 800, Dxl1, false);


	FadeDelete("上背景", 500, null, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200350nki">
（６分の１……か）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200360nki">
（あり得ない可能性じゃ、ないよな）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200370nki">
（もし、本物の弾丸が出てたら――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintFadeNut("上背景", 500, true);

	Delete("絵背景*");


	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200380nki">
（…………）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200390nki">
（……ん？）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200400nki">
（あれ？　そういえば――）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200410nki">
（カゴメアソビに成功すると、望みが叶うんじゃ……）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200420nki">
（……あれ？　違ったっけ？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200430nki">
（でも、ええと……チャンスは一度だけとか言ってた？
　なんか他にも言ってたような気がするけど……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	DeleteAllSt(1000,true);

	SceneOut(20000, 1000, "blind_01_00_0");
	WaitKey(1000);

	CreateTextureEX("絵背景200", 50, Center, Middle, "cg/bg/l/bg0701400地下_通路_あにのあな_l.jpg");
	Move("絵背景200", 0, @300, @100, null, true);
	Fade("絵背景200", 0, 1000, null, true);

	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200440nki">
（…………）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",19010, @-160,@0,"fu似鳥_通常_hard");
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, false);
	FadeSt("C",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200450nki">
（でも、もしホントにオレの願いが叶うとしたら――）

{	St("C",19010, @-100,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200460nki">
（オレ、何を望むんだろう？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",19010, @-100,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200470nki">
（やっぱり……ノーコの幸せ、かな）

{	St("C",19010, @-100,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200480nki">
（でも、ノーコの幸せって、なんだ？）


{	St("C",19010, @-100,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200490nki">
（やっぱり……その……アレか？）

{	St("C",19010, @-100,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200500nki">
（彼女を愛してやること……？）

{	St("C",19010, @-100,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200510nki">
（愛……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 19500, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	ClockDelete(0,true);

	DeleteAllSt(0,false);

	CreateTextureEX("絵背景300", 50, Center, Middle, "cg/bg/l/bg0701400地下_通路_あにのあな_l.jpg");
	Move("絵背景300", 0, @300, @100, null, false);
	Fade("絵背景300", 0, 1000, null, true);

	CreateTextureSP("絵背景200", 1000, -150, -100, "cg/ev/l/ev1840ノーコ同人誌再現正常位d_l.jpg");
	Move("絵背景200", 0, -200, -400, Dxl1, true);

	Move("絵背景200", 700, -200, -500, Dxl1, false);

	Fade("絵色白", 200, 0, null, true);

	WaitKey(500);

	Fade("絵色白", 0, 1000, null, true);

	Move("絵背景200", 0, -800, -100, Dxl1, true);
	Move("絵背景200", 700, -800, 0, Dxl1, false);

	Fade("絵色白", 200, 0, null, true);

	WaitKey(500);

	Fade("絵色白", 0, 1000, null, true);

{	ClockPass(2058);}

	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	FadeDelete("絵背景200", 0, null, true);

	St("C",19010, @-100,@0,"fu似鳥_眼鏡上げ_angry");
	FadeSt("C",0,true);

	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200520nki">
（いやいやいやいや、さすがにアイツは脳内彼女で）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200530nki">
（それがマズいってことくらい、オレにもわかるし！）


{	St("C",19010, @-100,@0,"fu似鳥_眼鏡上げ_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200540nki">
（そりゃまあ、かわいいけど）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200550nki">
（気持ちいいけど）


{	St("C",19010, @-100,@0,"fu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200560nki">
（でも……うん）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",19010, @-100,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200570nki">
（こんどこそ、ノーコの、同人誌、ちゃんと描こう）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200580nki">
（脳内彼女だからって、恥ずかしがらないで）

{	St("C",19010, @-100,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200590nki">
（彼女の、絵を――）


{	St("C",19010, @-100,@0,"fu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200600nki">
「――――あ」

{	SetVolumeEX("SE*", 200, 0, null);
	St("C",19010, @-100,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200610nki">
（あった――！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	FadeDelete("絵背景300", 200, null, true);

	TextBoxDelete(150);

	Zoom("@OnBG*", 1500, 1500, 1500, DxlAuto, true);


{	ClockPass(2059);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
　壁の一角に、金属の手すりが据え付けられており、はるか頭上にはマンホールの蓋があるのが、うっすら見える。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	Zoom("@OnBG*", 0, 1000, 1000, DxlAuto, true);
	FadeDelete("絵板写", 200, null, true);

	St("C",700, @-60,@0,"bu似鳥_通常_happy");
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200620nki">
（やっと……やっと、出られる……）

{	St("C",700, @0,@0,"bu似鳥_通常_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200630nki">
「ん――」


{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200640nki">
（なんか、身体が軽い！）

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200650nki">
（もう少しだ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu似鳥_通常_pride");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200660nki">
（もう少しでオレ、逃げ切れる――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：マンホールの向こう側から聞こえてくるイメージで、かなり薄く。台詞は加工してほとんど聞こえなくする。文字は出さない。

//※↑文字を出さずに声だけ出すやり方が不明。ＳＥ扱いにして鳴らすのか？（mngw 10/15）

/*
//◆音声指示：遠くから
//◆音声指示：スピーカー越し
{	St("ML",700, @0,@0,"buミリＰa_通常_normal");}
//	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab20/510200670mrp">
『沙紅羅選手、二人組と共にステージ上から撤収！？』
*/
	CreateSE("SE02","seガヤ_歓声_l");
	CreateVOICE("ミリＰ","ab20/510200670mrp");
	Wait(16);
	MusicStart("SE02",0,700,0,1000,null,true);
	MusicStart("ミリＰ",0,200,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150b]
{	SetVolumeEX("SE02", 2000, 0, null);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200680nki">
（ん……なんだこの音？）

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200690nki">
（っていうか、遠くから歓声が――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200700nki">
（……いや。怖じ気づいてる場合じゃない！）


{	DeleteSt("C", 200,true);
	SetVolumeEX("ミリＰ", 1000, 0, null);
	SetVolumeEX("SE02", 1000, 0, null);}


　似鳥は蓋に手を当てて――

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	Move("@StNameC/C*", 2000, @0, @-60, DxlAuto, false);
	FadeSt("C",200,true);
	WaitKey(1000);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/510200710nki">
「ふんぬっ！！」


{	Move("@StNameC/C*", 500, @0, @-60, DxlAuto, false);
	DeleteSt("C", 500,true);}


{	SceneOut(20000, 1000, "blind_02_00_0");}


　マンホールを押し上げると、上に広がっていたのは――


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	EndScene();
}
