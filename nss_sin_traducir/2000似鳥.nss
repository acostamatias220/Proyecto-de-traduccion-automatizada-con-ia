
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2000似鳥.nss_MAIN
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
	$GameName = "2010似鳥.nss";
//	$GameCircle=false;

}

scene 2000似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1080">
////////////header////////////
//file name "2000似鳥.nss"
//title "タナボタ"
//previous "1950沙紅羅_似鳥.nss"

////////////footer////////////
//next "似鳥" "2010似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(2000);}

//◆場所：秋葉原_中央通り

	Wait(500);

	CreateSE("SE10","seガヤ_街中_l");
	CreateSE("SE11","seガヤ_交通_l");
	MusicStart("SE10",2000,600,0,1000,null,true);
	MusicStart("SE11",2000,600,0,1000,null,true);


	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


	Wait(500);

	St("C",700, @-50,@0,"bu似鳥_通常_hard");
	Move("@StNameC/C*", 400, @50, @0, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300010nki">
（あーあ。ったく……嫌んなるぜ）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300020nki">
（本は買い取ってもらえねーし、変な女に奪われるし、オマケにこんなわけわかんねーものと交換されて）

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300030nki">
（大迷惑だっつーの）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300040nki">
「…………」

{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300050nki">
（けど、ま。
　オレもちょっくら、気合い入ったかな！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);




 
{	ClockPass(2001);}



	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

//◆場所：秋葉原_裏通り
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300060nki">
（双六との約束まであと３０分）

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300070nki">
（こんなところで、諦めるわけにはいかねーぞ！）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300080nki">
（まずは同人誌ショップを巡って買取大作戦――）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300090nki">
（――の前に、バッグの中味だ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @0, @50, Dxl1, false);
	DeleteAllSt(200,true);

	Wait(500);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 800, @0, @-100, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300100nki">
（大事なものだって言ってたしな。
　ホントにスゲーのが入ってたりして……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300110nki">
「まあ、ろくなモンじゃねーだろうけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("SE*", 1000, 0, null);

//◆ＳＥ：ジッパー開ける
//◆ＳＥ：雷
	CreateSE("SE01","se動作_ジッパー開ける02");
	CreateSE("SE02","se環境_雷01");

	CreateColorEXadd("絵色100", 1500, "WHITE");


//おがみ：β調整済み
	Fade("絵背景100", 500, 0, null, true);



	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(1500);

	Fade("絵色100", 0, 700, null, true);
	Wait(30);
	Fade("絵色100", 0, 0, null, true);
	Wait(30);
	Fade("絵色100", 0, 700, null, true);
	Wait(30);
	MusicStart("SE02",0,500,0,1000,null,false);
	FadeDelete("絵色100", 2000, null, true);




	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300120nki">
「…………へ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300130nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ジッパー閉める
	CreateSE("SE01","se動作_ジッパー閉める01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(1500);


	St("C",700, @0,@50,"fu似鳥_眼鏡上げ_shock");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300140nki">
（な、なんか入ってた……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300150nki">
（いや！　いやいやいやいや！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300160nki">
（人間、追い詰められると幻覚が見えるとか言うし。
　オレもきっと、追い詰められてるんだよ）

{	St("C",700, @0,@0,"fu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300170nki">
（追い詰められて……あはははは……）

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300180nki">
「…………ゴクリ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300190nki">
（でも……万が一）

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300200nki">
（万が一、ホントに……入ってたら？）

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300210nki">
「…………」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300220nki">
（もう一回……見てみるか）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ここから雨
{	ClockPass(2002);}


	TextBoxDelete(150);
	Move("@StNameC/C*", 400, @0, @50, Axl1, false);
	DeleteAllSt(400,true);

//◆ＳＥ：ジッパーゆっくり開ける
//おがみ：β調整済み

	CreateTextureEX("絵背景100", 3000, Center, 100, "cg/obj/l/objエコバッグ_恵那1910_x01.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1200, 1200, null, true);

	CreateSE("SE01","se動作_ジッパー開ける01");
	CreateSE("SE02","se擬音_フラッシュバック");

	MusicStart("SE01",0,1200,0,500,null,false);

	Wait(1500);
	Fade("絵背景100", 1000, 1000, null, false);
	Move("絵背景100", 1500, @0, 50, null, true);



	MusicStart("SE02",0,1500,0,900,null,false);
	Move("絵背景100", 300, @0, -276, AxlDxl, true);

	Wait(1000);

	CreateSE("SE11","seメカ_車_消防車サイレン_l");
	CreateSE("SE77","se環境_雨_l");
	CreateSE("SE77a","se環境_水流_l");
	MusicStart("SE11",2000,400,0,1000,null,true);
	MusicStart("SE77",2000,1500,0,1000,null,true);

	CreateEffect("エフェクト１", 2000, 0, 0, 1024, 288, "Rain");
	SetAlias("エフェクト１","エフェクト１");
	Request("エフェクト１", AddRender);
	SetVertex("エフェクト１", 0, 0);
	MusicStart("SE77a",1000,700,0,1000,null,true);
	Zoom("エフェクト１", 0, 2000, 2000, null, true);
	Fade("エフェクト１", 2000, 300, null, true);

	Wait(1000);

	SetVolumeEX("SE77", 4000, 800, null);
	SetVolumeEX("SE77a", 4000, 300, null);

	SoundPlay("@xbgm22_onint",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300230nki">
「――――ひッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300240nki">
（やっぱり！　やっぱり入ってる！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300250nki">
（しかも――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300260nki">
（ちっちゃいリボルバーで……年季物で……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300270nki">
（銃身には、文字が……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ジッパー素早く閉める
	CreateSE("SE01","se動作_ジッパー閉める01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("絵背景100", 300, 0, null, true);

	Wait(800);

	SetVolumeEX("SE11", 3000, 0, null);
	SetVolumeEX("SE77a", 3000, 0, null);

	St("C",700, @0,@50,"fu似鳥_通常_smile");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300280nki">
（これ……やっぱり、アレだよな？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300290nki">
（双一親分が探してた……あの……）

{	St("C",700, @0,@0,"fu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300300nki">
「ああッ！　なんだかわかんないけど神様ッ！
　ありがとうッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300310nki">
「いよっしゃ！　コレで借金地獄から脱出――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@xbgm*", 1000, 0, null);
	Wait(200);

	St("C",700, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300320nki">
「はっ――！」

{	DeleteAllSt(200,true);}
　似鳥が我に返ると、周囲の人々が刺すような視線を向けていた。


{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300330nki">
（しまった、声出てた……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る03_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);


//※下倉注：ここで雨病んでます 2010/11/12

{	ClockPass(2004);}

//◆場所：スパコン館_裏面


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 800, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

	SetVolumeEX("SE77", 1000, 0, null);

	Delete("エフェクト１");

//	CreateSE("SE10","seガヤ_街中_l");
//	MusicStart("SE10",2000,700,0,1000,null,true);

	DrawDelete("絵黒幕", 800, 100, null, "blind_01_00_1", true);

	Wait(300);

	St("C",700, @-50,@0,"fu似鳥_通常_sad");
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300340nki">
（とりあえずここまで来れば、安心だろ）

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300350nki">
（とにかく、連絡だ）

{
	DeleteAllSt(200,true);
}
　似鳥はポケットから携帯電話を取り出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitAction("SE01", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　電話帳に映る「河原屋組」の文字を、穴が空くほど見つめてから――

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300360nki">
「――ふぅ」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300370nki">
「よし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//	SetVolumeEX("SE*", 1000, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：携帯電話コール
//おがみ：β調整済み
	CreateSE("SE01","seメカ_携帯_電子音01");
	CreateSE("SE02","seメカ_携帯_コール02_l");
	CreateSE("SE03","seメカ_携帯_コール01_l");
	CreateSE("SE04","seメカ_携帯_切れる");

	MusicStart("SE01",0,700,0,1000,null,false);
	WaitAction("SE01", null);

	Wait(300);

	MusicStart("SE02",0,700,0,1000,null,false);
	WaitAction("SE02", null);

	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(3500);
	SetVolumeEX("SE*", 50, 0, null);
	MusicStart("SE04",0,700,0,1500,null,false);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300380nki">
「……もしもし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SoundPlay("@xbgm04",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300390ksr">
『できたか！？』

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300400nki">
「え……？　できたって、なにが――」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300410ksr">
『こどもできたかとか普通訊くか？
　訊かねぇだろバーロー！』

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300420ksr">
『金だよ金。現ナマはできましたか？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300430nki">
「お金は……まだ」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300440ksr">
『あっそ。じゃ切るぞ』

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300450nki">
「待って！」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300460ksr">
『んだよ？　用事あんならさっさと話せ！
　こっちだって客が――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2005);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300470nki">
「見つかりました」

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300480nki">
「双一親分が捜せって言ってたものが、見つかりました」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300490ksr">
『……本当に？』

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300500nki">
「ほんとうです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300510ksr">
『どこにある？』

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300520nki">
「今、持ってます」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300530ksr">
『……よし』

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300540ksr">
『いいか、誰にも――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：電話越し
//◆音声指示：遠くから
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/000300550msi">
『あ……あの、まだでしょ――』

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300560ksr">
『うっせ黙れッ！！』

{
	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,600,0,900,null,false);
}
//◆音声指示：電話越し
//◆音声指示：遠くから
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/20/000300565msi">
『ふがっ！』

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300570ksr">
『てめーのクソみてーな商売にいつまでも付き合ってるほど暇じゃねーんだよッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300580ksr">
『そこで寝てろ！』

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300590nki">
「…………」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300600ksr">
『――いやいや、悪ぃ。んでなんだっけ？』

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300610ksr">
『ああ、そうだ。アレを持ってるんだったな』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300620nki">
「はい」

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300630ksr">
『いいか、誰にも渡すな。誰にも知らせるな』

//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300640ksr">
『そのまま、バックギャモンまで持ってこい』

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300655nki">
「バックギャモン……ですね。
　すぐに行きます！」


//◆音声指示：電話越し
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000300660ksr">
『早くだぞ！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

//◆ＳＥ：電話切れる
	CreateSE("SE01","seメカ_携帯_切れる");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitAction("SE01", null);

	Wait(500);

	CreateSE("SE01","seメカ_携帯_電話切れる02_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2500);
	SetVolumeEX("SE*", 1000, 0, null);



	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);

{	ClockPass(2006);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300670nki">
「…………ふぅ」

//◆音声指示：小声
{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300680nki">
「ようし……
　これでなんとかなりそうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//◆時間：ジャンプ

{	ClockPass(2008);}


//◆場所：秋葉原_ガード下

	SoundPlay("@xsong01",0,1,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0102111秋葉原_ガード下_通常");
	FadeBG(0,true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	CreateSE("SE10","seガヤ_エレキセンター内部_l");
	MusicStart("SE10",3000,100,0,1000,null,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300690nki">
（なんか……道行く人間全てが、怪しく見える……）

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300700nki">
（大丈夫、緊張するなオレ……）

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300710nki">
（道行くあいつらは、カボチャ……
　ただのカボチャ……）

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300720nki">
「カボチャ……カボチャ……」

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300730nki">
（大丈夫……大丈夫……これで、万事上手くいく……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300740nki">
「確か、ここだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//おがみ：β調整済み
{	DeleteAllSt(200,true);}

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg0102111秋葉原_ガード下_通常_l.jpg");
	Request("絵背景100", Smoothing);
	Move("絵背景100", 5000, -663, -387, null, false);
	Zoom("絵背景100", 5000, 1200, 1200, null, false);
	Fade("絵背景100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　ガード下、排気ガスで薄汚れた看板。

　うっすらとピンクの蛍光色で「アダルトグッズ専門店　バックギャモン」と書かれていた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 15000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, -200, -300, "cg/bg/l/bg0901100エレキセンター_廊下_通常_l.jpg");
	CreateTextureEX("絵背景200", 100, -622, -172, "cg/bg/l/bg0902100エレキセンター_ジャガンナート_通常_l.jpg");

	SetVolumeEX("SE10", 1500, 400, null);
	SetVolumeEX("SE11", 3000, 0, null);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//◆演出指定：後ろに薄くインド音楽が流れていたりする

	Wait(500);

	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300750nki">
（ぁ………………）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//おがみ：β調整済み
	SetVolumeEX("SE10", 1500, 700, null);

	Fade("絵背景100", 500, 1000, null, false);

	Move("絵背景100", 1500, 0, @0, Dxl1, true);

	Wait(300);

	Move("絵背景200", 10000, -771, -150, null, false);
	Fade("絵背景200", 500, 1000, null, true);

	Delete("絵背景100");

	Wait(1000);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300760nki">
（日本が……印度化されている！？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300770nki">
（アキバにカレー屋が多いのは知ってたけど、こんなところがあったなんて……）

{
	SetVolumeEX("SE10", 1500, 400, null);
	Fade("絵背景200", 300, 0, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @-50,@0,"buジャブル_通常_normal");
	Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300780jbr">
「お客サン！　お客サン！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300790jbr">
「カレー粉、いらないカ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300800nki">
「いらないです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵背景100");
	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300810jbr">
「そなこと言わないデスネ」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300820jbr">
「シンセイなるガンジスのかぜ、におい、感じるデス」

{	St("ML",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300830jbr">
「小さなトリップ！
　ジャガンナートのトクセイカレー粉！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300840nki">
「いらないです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300850jbr">
「いらないデスカ？」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300860jbr">
「ならほかにもなんでもあるデス！
　ジャガンナート商会、なんでも揃うデス！」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300870jbr">
「パソコンあるデス！　<RUBY text="アイペッド">ｉｐｅｄ</RUBY>あるデス！
　スピーカーあるデス！　カイチュ電灯あるデス！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300880nki">
（確かに店の半分はインドっぽいけど。
　もう半分は免税店の家電屋か……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300890jbr">
「カミサマの置物あるデス！
　ステキなダイヤのホウセキあるデス！」

{	St("ML",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300900jbr">
「ハッパもあるデス！　テッポもあるデス！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300910nki">
「鉄砲――ッ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buジャブル_通常_shock");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300920jbr">
「え……あの、ゴメナサイ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300930jbr">
「おきゃくさん、怒らないデス。タンキだめデスネ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300940nki">
「ちぇっ！　……ったく。ふざけんなよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 400, @30, @0, Axl1, false);
	DeleteAllSt(400,true);

//◆ＳＥ：足音遠ざかる
	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,1200,0,1000,null,true);

	Wait(1000);

	SetVolumeEX("SE01", 2000, 0, null);

	Wait(1000);

	St("C",700, @0,@0,"buジャブル_通常_cool");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300950jbr">
「……あのひとが、似鳥クンデスネ」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/000300960jbr">
「あの様子から見ると、やはり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2009);}



	SetVolumeEX("@xsong01", 2000, 150, null);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300970nki">
（しかし……なんか不安になってきたな）

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300980nki">
（ちゃんと、アレ……入ってるよな？）

//◆ＳＥ：チャック開ける
{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000300990nki">
（…………ん？）

{	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301000nki">
（奥になんか……変なのが……）

{	Move("@StNameC/C*", 400, @0, @50, Axl1, false);
	DeleteAllSt(400,true);}
　似鳥は眉をひそめ、カバンに手を突っ込む。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se日常_布はたく");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objエコバッグ_恵那1910.png");
	Zoom("絵背景100", 0, 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	Zoom("絵背景100", 500, 1000, 1000, Dxl1, true);
	Wait(500);


	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/obj/l/objエコバッグ_恵那1910_x01.jpg");
	Request("絵背景200", Smoothing);
	Rotate("絵背景200", 0, @0, @0, @90, null,true);

	Zoom("絵背景200", 0, 1200, 1200, null, true);
	Move("絵背景200", 500, @-50, @250, AxlDxl, true);

	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301010nki">
（御札）

{
	Move("絵背景200", 500, @0, @-500, AxlDxl, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301020nki">
（女児パンツ）

{
	Move("絵背景200", 500, @50, @250, AxlDxl, false);
	Zoom("絵背景200", 500, 900, 900, AxlDxl, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301030nki">
（そして……銃）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301040nki">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Delete("絵背景100");

	Fade("絵背景200", 1000, 0, null, true);
	Delete("絵背景200");


	St("C",700, @0,@50,"fu似鳥_ラッパー_rage2");
	Move("@StNameC/C*", 400, @0, @-50, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301050nki">
「わけがわからん！」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000301060ksr">
「おい、似鳥？　そこにいるのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/20/000301070ksr">
「ほら、さっさと入れ！」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/000301080nki">
「あ……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("@xsong01", 2000, 450, null);


	EndScene();
}
