
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2030似鳥.nss_MAIN
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
	$GameName = "2040似鳥.nss";
//	$GameCircle=false;

}

scene 2030似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="710">
////////////header////////////
//file name "2030似鳥.nss"
//title "溺れる者は幼女にもすがる"
//previous "2020似鳥.nss"

////////////footer////////////
//next "似鳥" "2040似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2030);}

//◆場所：半田明神_拝殿_ソトカンダー
	OnBG(10,"bg0607200半田明神_拝殿_ソトカンダー");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, InBottom, "cg/bg/l/bg0607200半田明神_拝殿_ソトカンダー_l.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, @0, -1124, null, true);
	Request("絵背景100", Smoothing);

	if($PreGameName=="2020似鳥.nss"){
	DrawDelete("上背景", 300, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

	Wait(1000);
	Move("絵背景100", 3000, @0, -288, Dxl1, false);
	Zoom("絵背景100", 3000, 500, 500, Dxl1, 4000);
	Fade("絵背景100", 1000, 0, null, true);

//	Wait(1000);

	St("C",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300010nki">
「ああ、クソッ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300020nki">
（ソトカンダーじゃねぇか！
　なんで、こんな失敗作に会うんだよ！）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300030nki">
（ああ……畜生……）

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300040nki">
（なんでオレばっかり、こんな目に遭うんだ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300050nki">
（何かそんな悪いことしたか？）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300060nki">
（こんなのって、おかしいだろ？）

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300070nki">
「神様……助けてくれよ……」



{	DeleteAllSt(200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300080mzh">
「よかろ」

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300090nki">
「え……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2031);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(300);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@100,"buミヅハ_通常_normal");
	Move("@StNameC/C*", 200, @0, @-100, Dxl2, false);
	FadeSt("C",200,true);

	SoundPlay("@xbgm13",0,450,true);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300100mzh">
「おぬしの願い、叶えてしんぜよう！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300110nki">
「ええと……」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300120nki">
「誰？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300130mzh">
「神様じゃ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300140nki">
「神様……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300150mzh">
「うむ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300160nki">
「そりゃあすごい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300170mzh">
「うむ！　すごい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300180nki">
「しかも偉い！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300190mzh">
「偉い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300200nki">
「それじゃ失礼――」

{	Move("@StNameML/ML*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300210mzh">
「ちょ――待たんか！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300220nki">
「待たないっての」

{	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300230nki">
「…………はぁ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300240mzh">
「溜息をつくな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2032);}


	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300250mzh">
「ノーコとは会えたのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300260nki">
「そんなもん、おまえの知ったこと――」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300270nki">
「……待て。今なんて言った？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300280mzh">
「ノーコとは会えたのか、と訊いておる」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300290nki">
「どうして、ノーコを知ってる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300300mzh">
「言ったじゃろう？」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300310mzh">
「わらわは、神様じゃ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300320mzh">
「名前をミヅハという！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300330nki">
「ミヅハ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300340mzh">
「して、ノーコはどうなった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300350nki">
「ん……アイツは……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300360mzh">
「さっき、おぬしに会いに行ったのではないか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300370nki">
「なんて、説明すればいいのか……」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300380nki">
「ってか、人に話せることなんてないよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2033);}


	DeleteAllSt(200,false);

	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300390mzh">
「まあ良い。ともかく、わらわを連れて行け！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300400nki">
「……え？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300410mzh">
「わらわの格好で一人歩きは目立つ。
　もじゃもじゃ警官も邪魔する」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300420mzh">
「おぬしのような、お供がいるのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300430nki">
「はぁ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300440mzh">
「ほれ、行くぞ！　早く！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
	Move("@StNameMR/MR*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);


	CreateSE("SE11","se環境_林_l");
	MusicStart("SE11",2000,700,0,1000,null,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2034);}


//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);



	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	St("ML",700, @50,@0,"buミヅハ_通常_normal");
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300450mzh">
「こっちじゃ！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu似鳥_通常_shock");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300460nki">
「神社の裏に、こんな森が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	Shake("@StNameML/ML*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300470mzh">
「怖くて、抜けられなかったのではないからな！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300480nki">
「そうですか」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300490nki">
「それにしても、これ――」

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300500nki">
「さっきの地震で、崩れたのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300510mzh">
「おそらくはな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：小声
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300520mzh">
「そしてそのせいで、アザナエルが――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300530nki">
「ん？　今、アザナエルって――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300540mzh">
「ほら、早く先に行くぞ！」

{	Move("@StNameML/ML*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300550nki">
「お……おい待てよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE*", 2000, 0, null);



	Move("@StNameMR/MR*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2036);}
	Wait(2000);

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


	St("C",700, @50,@0,"bu似鳥_通常_sad");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300560nki">
（なんか……おかしなことになってきたな）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300570nki">
（こんな子供の言いなりになってる場合か？）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300580nki">
（オレは今、すごくヤバイ状況に――）

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300590mzh">
「おぬしの望みはなんじゃ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300600nki">
「望み……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300610mzh">
「困り事があるのじゃろう？
　あれだけ真剣な神頼みなど、久方ぶりに見たぞ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300620nki">
「……おまえホントに神様なのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300630mzh">
「信じておらんのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300640nki">
「普通は無理だろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300650mzh">
「ならばなぜ、ついてきた？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300660mzh">
「ノーコの名が出たからか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/300300670nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300680mzh">
「わらわもノーコには恩がある」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300690mzh">
「あやつに、親友のことを任せろと言ったからな。
　約束を違えることはできん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300700mzh">
「まあ、万事わらわに任せておけ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/300300710mzh">
「皆の望み、わらわがまとめて叶えてしんぜよう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 1700, 0, null);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

	EndScene();
}
