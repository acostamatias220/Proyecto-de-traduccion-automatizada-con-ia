
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2230恵那.nss_MAIN
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

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName = "2240沙紅羅_恵那_似鳥_ノーコ.nss";
	}else{
		$GameName = "c2240沙紅羅_恵那_似鳥.nss";
	}
}

scene 2230恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="740">
////////////header////////////
//file name "2230恵那.nss"
//title "モジャ★モジャ"
//previous "2220恵那_フウリ.nss"

////////////footer////////////
//next "恵那"（"flkagome3" = false） "c2240沙紅羅_恵那_似鳥.nss"
//next "恵那" "2240沙紅羅_恵那_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	SoundPlay("@xbgm26",0,450,true);
	SoundPlay("@xbgm20",1000,1,true);

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

{	ClockPass(2230);}

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300010fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_一休_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300020fje">
（ずっと、不思議に思ってたけど。
　やっぱり、貫太さんだったんだ）

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300030fje">
「貫太さん……ありがとう」



{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300040fje">
（うん、私が今ここにいるのも貫太さんのおかげ――
　だったらその分、私が頑張らなきゃ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);








//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300050fje">
（アザナエルは河原屋双六に奪われたけど、弾丸はまだどうなったかわからない）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300060fje">
（弾丸を取ってくるには、遅すぎる――
　何かあったと考えるべきだわ）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300070fje">
（まずは、星さんに電話ね。
　携帯は持ってなかったはずだから、半田明神に……）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2231);}

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：電話発信

//◆ＳＥ：ツー、ツー


	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
	SetVolume("SE01", 10, 0, null);
WaitKey(1000);
//CreateSE("SE01","seメカ_携帯_コール01_l");
	CreateSE("SE02","seメカ_携帯_電話切れる01_l");
	MusicStart("SE02",0,700,0,1000,null,true);

WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300080fje">
（繋がらない……？）

{	SetVolume("SE02", 10, 0, null);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300090fje">
（やっぱり、ノーコさんが襲撃をしたのかな……？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 10, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2232);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300100fje">
（ここからだったら、直接行った方が早いわ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300110fje">
（貫太さんの事件の謎は解けても、アザナエルにケリをつけないと――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("@xbgm26", 500, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]


//◆演出指定：拡声器
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300120fjr">
『もじゃもじゃ――――――――――ッ！！』

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300130fje">
「え？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300140fje">
「鈴姉の声――！？」


{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300150fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300160fje">
「……ちょっと、スーパーノヴァに寄らなきゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	PrintGO("上背景", 5000);


//※下倉注：これ台詞がおかしいのでコメントアウト。その代わりにここからの回想、「bg2601100電柱_見上げ_通常」と走る足音と「seガヤ_交通_l」で移動している感じを。

	CreateSE("SE01","seガヤ_交通_l");
	MusicStart("SE01",1000,1200,0,1000,null,true);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg2501100信号機_見上げ_青");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

{	ClockPass(2233);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
//	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
//	FadeBG(0,true);

//	DrawDelete("上背景", 1000, 100, null, "slide_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300170fje">
（アレは確か、８年前……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300180fje">
（父さん譲りのくせっ毛に嫌気が差した鈴姉が、家を飛び出して無免許美容師を志したとき、彼女は叫んだわ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}

	SetFrequency("SE01", 10000, 100, Dxl3);
	SetVolumeEX("SE01", 20000, 0, null);

	OnBG(10,"bg2501200信号機_見上げ_黄");
	FadeBG(150,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300190fje">
（「もじゃもじゃー！！」）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}

	OnBG(10,"bg2501300信号機_見上げ_赤");
	FadeBG(150,true);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,500,null,true);
	SetFrequency("SE01", 1000, 1000, Axl3);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300200fje">
（それから３ヶ月――鈴姉は、見事なストレートヘアを手に入れて、秋葉原に戻ってきた）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300210fje">
（美容師になるため冬山で武者修行して、冬眠してる熊相手に縮毛矯正やってたって言うけれど……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300220fje">
「似たようなこと、やりかねない……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300230fje">
//（半田明神の前に、スーパーノヴァに寄らなきゃ！）

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("@xbgm20", 1000, 200, null);

	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	ClockPass(2234);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	SetVolumeEX("@xbgm20", 1000, 450, null);


//※下倉注：ここは22:33以降になります

//◆場所：スーパーノヴァ_正面_ガラス割れ
//	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
//	FadeBG(0,true);


//◆場所：スーパーノヴァ_ライブ会場_ガラス割れ
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
{	St("C",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300240fje">
「鈴姉ッ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@100,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300250fjr">
「もじゃもじゃ……もーいやじゃー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300260fje">
「大丈夫！　大丈夫だから、ね！
　落ち着いて……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300270fjr">
「だって、だって！
　またガラスが割れるなんて、そんなのないよぉっ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300280fje">
「ああ……やっぱり、そのことか……」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300290fje">
「私の推理が正しければ……
　ガラス屋にはもう、防音ガラスが残ってなかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2235);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300300fje">
「それでもライブを中止したくなかった鈴姉は、ガラス無しでどれだけ音が響くかを試したってわけね」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300310fjr">
「うう……そうなんだけど……
　そんなことまで推理しなくても……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300320fjr">
「一応、近所の人には『少しうるさくなるかも』って伝えておいたけど……あれじゃ、少しどころじゃない……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300330fje">
「確かに……あの音量じゃ、延期しか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);}
{	St("C",700, @-50,@0,"bu鈴_シリアス_angry");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300340fjr">
「だめっ！　だって、フウリちゃんと約束したの！」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300350fjr">
「最高の準備をして待ってるから、フウリちゃんも用事を全部済まして、ライブに帰って来てって」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300360fjr">
「なのに……まさかこんなことになるなんて……！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300370fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300380fjr">
「ねえ、恵那ちん？
　なにか……良いアイディア、ない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300390fje">
「いいアイディアって言われても……
　ライブ開始まで、残りあと１時間ないでしょ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300400fjr">
「そこをなんとか！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300410fje">
「いや、無理でしょ……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300420fjr">
「だよね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300430fjr">
「フウリちゃんもなかなか帰ってこないし……
　ニコちゃんは電車が遅れたって言うし……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300440fje">
「電車？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300450fjr">
「高架下が、地震か何かの影響で壊れて……
　ダイヤが大幅に乱れてるって」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300460fje">
「そうなんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300470fjr">
「はぁ……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300480fjr">
「はぁぁぁぁ…………」

{	St("C",700, @0,@0,"bu鈴_シリアス_fear");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300490fjr">
「はぁぁぁぁぁあああああああああ！！」

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 2800, 0, 0, 10, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300500fjr">
「ああああああああ！！
　頭がもじゃもじゃするっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2236);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300510fje">
「鈴姉！　落ち着いて！
　毛が、毛が立ってきちゃう――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @-100,@0,"buミリＰa_通常_normal");
Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300520mrp">
「あーら？　鈴ちゃんってそんな特技があったの」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300530fjr">
「ミリＰさんッ！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300540mrp">
「夜空に絶叫してたみたいじゃない。
　もしかして……なんかトラブル？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300550mrp">
「ってまあ、このガラス見ればわかるか……」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300560fjr">
「あの、ミリＰさん！
　知り合いに、ガラス屋さんとか――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300570mrp">
「残念だけど、さすがに心当たりないわ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300580fje">
「それじゃ、他のライブハウスとかは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300590mrp">
「今の時間からじゃ無理」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300600fje">
「そうですよね……」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300610mrp">
「でも、ここで折れちゃダメよ」

//	St("C",700, @0,@0,"buミリＰa_ショータイム_shout");
//	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300620mrp">
「絶体絶命の大ピンチに見えても、必ずどこかに突破口はあるわ！」

{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300630mrp">
「ゆるキャラバンだってなんとか形になったんだもの。
　諦めなければ、きっとなんとかなる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300640mrp">
「そう……あのヤンキーが教えてくれたわ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300650fjr">
「ヤンキー？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/22/300300660mrp">
「ほら、返事は！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/22/300300670fjr">
「は、はい！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆時間：ジャンプ
{	ClockPass(2239);}
	Wait(2000);

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300680fje">
（なんとか、ライブを成功させてあげたいけど。
　私の力じゃどうにもなんないわね）


{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300690fje">
（……アザナエル？）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300700fje">
（いやいや。
　いくら願いが叶うからって、それはないわ）

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300710fje">
（そもそもどこにあるかもわかんないし）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300720fje">
（とにかく、アザナエルを探さないと。
　まずは、半田明神に行って――）

{	St("C",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300730fje">
「あ――――ッ！！」

{	SetVolumeEX("SE10", 2000, 0, null);
	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/300300740fje">
「そ――そこにいるのはッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,true);


	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		PrintGO("上背景", 5000);
		DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	}else{
	}

	EndScene();
}
