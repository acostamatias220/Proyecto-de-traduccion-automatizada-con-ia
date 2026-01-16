
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1830千秋.nss_MAIN
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
	$GameName = "1850千秋_フウリ.nss";
	//$GameCircle=false;

}

scene 1830千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="420">
////////////header////////////
//file name "1830千秋.nss"
//title "もじゃもじゃＤｅｓｔｉｎｙ"
//previous "1820千秋.nss"

////////////footer////////////
//next "千秋" "1850千秋_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆時間：ジャンプ
{	ClockPass(1833);}

//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);


	CreateSE("SE10","se環境_風と葉っぱ_l");
	MusicStart("SE10",3000,500,0,1000,null,true);


	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @50,@0,"bu千秋_通常_sigh");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400010kit">
「はぁ……はぁ……ふぅ……」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400020kit">
（なんとか、まいた……か？
　信号に助けられたな……）

{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400030kit">
（けど、立て続けにあの親子に会うなんて、どんだけついてないんだよ……）

//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400040kit">
（ってか、バレてないよな……大丈夫だよな……）

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400050kit">
（もしバレたら、ブルマー好きのヘンタイ女装野郎……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：猫鳴く
	CreateSE("SE01","se動物_ネコ_鳴き声01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(200);


	St("C",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400060kit">
「ぎゃあああああッ！！」

{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400070kit">
「な……なんだネコか。驚かすなよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：猫鳴く
	CreateSE("SE02","se動物_ネコ_鳴き声02");
	MusicStart("SE02",0,700,0,1000,null,false);

	WaitKey(200);

	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400080kit">
（しかし……相変わらずここ、ネコだらけだな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1834);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400090kit">
（ホントはタヌキの神社のはずなのに）

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400100kit">
（前にここに来たのっていつだっけ……？
　ずいぶん昔、恵那と一緒に……）



//◆ＳＥ：猫鳴く
{
	CreateSE("SE01","se動物_ネコ_鳴き声02");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(200);
}

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400110kit">
「って、ボーッとしてる場合じゃないし！」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400120kit">
「家、帰ろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@SE*", 2000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(500);


//◆時間：ジャンプ
{	ClockPass(1837);}

	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);

//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(1000,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400130kit">
（ご近所さんに見られないように……そっと……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：小碓家_自室
	OnBG(10,"bg1601100小碓家_自室_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


{	ClockPass(1838);}

{	St("C",700, @-50,@0,"bu千秋_朗らか_normal");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400140kit">
「バッグバッグ――あった！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵背景100", 0, @0, @+100, null, true);

	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);

	WaitKey(1000);

	Move("絵背景100", 300, @0, @+100, Dxl1, false);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");


{	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400150kit">
「中身も……うん。ちゃんと入ってる」

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400160kit">
「っつーかさ、なんだよこのロボット」

//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400170kit">
「カッコ悪いっつーか、パクリっぽいっつーか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(1840);}


	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",1000,400,0,1000,null,true);


//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400180kit">
「こういうテキトーなデザインだから、間違えて――」

{	SetVolume("SE*", 1000, 0, null);
	DeleteAllSt(200,true);
	St("MR",700, @200,@0,"bu平次_通常_shout");
	Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);
	SoundPlay("@xbgm11",0,450,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400190fjh">
「あああああああああああああ！！」

{	DeleteAllSt(200,true);
	St("ML",700, @200,@0,"bu千秋_驚天_shock");
	Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400200kit">
「のわあああああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//	St("ML",700, @0,@0,"bu千秋_通常_shout");
//	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400210kit">
「な、なんでここにッ！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400220fjh">
「え？　オレか？」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400230fjh">
「オレは、ほら、おめえさんがドッカーンとぶつかったもんで、饅頭の入れ物ダメになっちまっただろ？」

{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400240fjh">
「だからホレ！　ウチに余ってるエコバッグ、格安で譲ってやろうかなって」

{	DeleteAllSt(200,false);}
//◆音声指示：小声
{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400250kit">
「ああ、なんで家が向かいなんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1841);}

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400260fjh">
「ところでお嬢ちゃん、いくらわざとじゃなくても、ああいうことをしたらちゃんと謝らないと――」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400270fjh">
「ってぇか、あれ？　お嬢ちゃん、今その家から――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400280kit">
「あ、ゴメン！　オレ急ぐから！」


//◆ＳＥ：ぴゅー！　逃げ出す
{
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
Move("@StNameML/ML*", 200, @-600, @0, Dxl3, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);
}

{	St("C",700, @50,@0,"bu平次_通常_shock");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/300400290fjh">
「え？　ちょっと待った！
　お嬢ちゃんに渡すものが――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400300kit">
「じゃあね！　バイバーイ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1500, 0, null);

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	WaitKey(1000);



//◆時間：ジャンプ
{	ClockPass(1848);}


//◆場所：スーパーノヴァ_正面
	OnBG(10,"bg0501111スーパーノヴァ_正面_通常");
	FadeBG(0,true);

	CreateSE("SE04","seガヤ_ざわざわ_l");
	MusicStart("SE04",1500,700,0,1000,null,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0501111スーパーノヴァ_正面_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Fade("絵背景", 0, 1000, null, false);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{	St("C",700, @50,@0,"fu千秋_通常_sigh");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400310kit">
「はぁ……はぁ……ふぅ……」

{	St("C",700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400320kit">
（なんとか逃げ出したけど……
　バレてないよな……大丈夫だよな……）

{	St("C",700, @0,@0,"fu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400330kit">
（ってか、なんでまた出くわすんだよ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"fu千秋_通常_pinch");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400340kit">
（まさか……運命？）


{	St("C",700, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400350kit">
「勘弁して下さい……」


{	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400360kit">
（ま、いいや。
　ちゃんとバッグは回収できたし、時間まで間に合った）

//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400370kit">
（あとはこっそりこの格好でバイトをするだけ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SetVolume("SE*", 500, 0, null);


{	ClockPass(1849);}


//◆ＳＥ：ぎゅいーん！！
//	CreateSE("SE01","se擬音_ギター01");
//	MusicStart("SE01",300,400,0,1000,null,false);
	CreateSE("SE10","se環境_ハウリング");
	MusicStart("SE10",0,1000,0,1000,null,false);


	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);
WaitKey(1000);

//◆音声指示：遠くから

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300400380fjr">
「アタシと一緒にやる気あるの！？」



{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400390kit">
「え……？」

{	DeleteAllSt(200,true);}
//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300400400fjr">
「解散よ！」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/300400410fjr">
「『第一宇宙速度』は、今をもって解散！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/300400420kit">
（か――解散！？）

{
//駆け出す音
//	CreateSE("SE01","");
//	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
　千秋は慌てて、スーパーノヴァへと飛び込んだ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	EndScene();
}
