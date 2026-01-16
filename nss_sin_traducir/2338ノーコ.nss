
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2338ノーコ.nss_MAIN
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
	$GameName = "2340ノーコ_フウリ.nss";
}

scene 2338ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="260">
////////////header////////////
//file name "2338ノーコ.nss"
//title "ともだちのところへ"
//previous "2330ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2340ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);
	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",0,true);

//◆場所：秋葉原_万世橋_雪
	OnBG(10,"bg0104300秋葉原_万世橋_雪");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@xbgm03",0,450,true);

{	ClockPass(2338);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100010nko">
「あとで、ごうりゅう」

{	DeleteAllSt(200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/380100020ntn">
「わかった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 3000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2339);}


//◆場所：柳神社_境内_雪
	OnBG(10,"bg1501200柳神社_境内_雪");
	FadeBG(0,true);

	Wait(500);

	CreateSE("SE11","se環境_風と葉っぱ_l");
	MusicStart("SE11",2000,700,0,1000,null,true);


	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100030nko">
「ここ――」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100040nko">
「フウリ――どこ」

{	St("C",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100050nko">
「フウリ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100060nko">
「フウリ――っ！！」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100070nko">
「いない……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100080nko">
「どこに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100090nko">
「もう、ておくれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100100nko">
「…………まさか」

{	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100110nko">
「そんなはずはない」

{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100120nko">
「まだ、やりなおしはきくはず――！」

{	Move("@StNameC/C*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100130nko">
「フウリ！　フウリ――」

//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/380100140wfu">
「私……そんなの、望んでない」

{	St("ML",700, @40,@0,"buノーコb_幽霊_sad");
	Move("@StNameML/ML*", 200, @-40, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100150nko">
「このこえ……」

{	DeleteAllSt(200,true);}
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/380100160wfu">
「知りません！
　そうだとしても、私は貫太さんと一緒に天国に――」

{	St("ML",700, @40,@0,"buノーコb_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100170nko">
「そんなの、だめ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameML/ML*", 200, @-40, @0, Axl2, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：柳神社_お墓_雪
	OnBG(10,"bg1502200柳神社_お墓_雪");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100180nko">
「そこに、いる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100190nko">
「でも、すがたはみえない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100200nko">
「アザナエルのちから？
　いせかいからの、こえ？」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100210nko">
「なら――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100220nko">
「にとり。そういうせっていをくれて、かんしゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolumeEX("SE11", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	Move("@StNameC/C*", 200, @40, @0, Axl2, false);
	DeleteAllSt(200,true);
	St("C",700, @40,@0,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @-40, @0, Dxl1, false);
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100230nko">
「『イシュタムのみちびき』は、あらゆるものをきりさく」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100240nko">
「このよに、きりさけないものはない。
　だから――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100250nko">
「カッターで、こちらとむこうのきょうかいせんを――」

{	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/380100260nko">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
