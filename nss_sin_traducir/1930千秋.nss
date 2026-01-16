
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1930千秋.nss_MAIN
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
	$GameName = "1940千秋.nss";
	//$GameCircle=false;

}

scene 1930千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1760">
////////////header////////////
//file name "1930千秋.nss"
//title "受難に継ぐ受難！"
//previous "1920沙紅羅_千秋.nss"

////////////footer////////////
//next "千秋" "1940千秋.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//事件定義
	KoreJikenSet();

{	ClockPass(1930);}

	OnBG(10,"bg1801111ドンガ・バチョ_家電売り場_通常");
	FadeBG(0,true);
	#bg1801100ドンガ・バチョ_家電売り場_通常 = true;


	CreateSE("SE11","seガヤ_客暴動_l");
	MusicStart("SE11",1000,700,0,1000,null,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);


//◆ＳＥ：トントントントン！　エスカレーターを駈け上がる

	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg1801111ドンガ・バチョ_家電売り場_通常.jpg");
	SetShade("絵ゆれ",MEDIUM);
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @100,@0,"bu千秋_驚天_shock");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600010kit">
「ぎゃああああああ！！」

{Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/300600020e07">
「待てええええええ！！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/300600030e08">
「愛してますううう！！」


{	St("C",19700, @0,@0,"fu千秋_通常_cry");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600040kit">
（なんなんだよコレ！）

//	St("C",19700, @0,@0,"fu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600050kit">
（完璧に理性ないし！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",19700, @0,@0,"fu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600060kit">
（オレは男なのになんでこんな目に……！？）

//	St("C",19700, @0,@0,"fu千秋_通常_cry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600070kit">
（ってか、あのバカ師匠！
　オレを囮にして！　ひどい――）

{	FadeDelete("絵ゆれ", 200, null, false);
	DeleteAllSt(200,true);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/300600080e09">
「ウホッ！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/300600090e10">
「この角度はパンチラ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @-100,@0,"bu千秋_朗らか_cry");
Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600100kit">
「やめてくれええええ！！」


{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600110kit">
「だ、誰か、タスケテ――ッ！」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600120kit">
（とにかく、隠れて――）


{	DeleteAllSt(200,true);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/300600130e07">
「どこだ！？　どこだどこだ！？」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/300600140e08">
「男の娘はいねがー！！
　くんくん……くんくんくん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600150kit">
（匂い……嗅いでる？）

//	St("C",700, @0,@0,"bu千秋_朗らか_pride");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600160kit">
（いやいや、そんなので見つかるはずが……）

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600170kit">
（…………）

//	St("C",700, @0,@0,"bu千秋_通常_sad");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600180kit">
（もし、見つかったら……
　ううう……どんな、酷い目に……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1931);}

	SetVolume("SE*", 2000, 200, null);

	SoundPlay("@xbgm24",0,450,true);


//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/300600190ktt">
「大丈夫、オレに任せろ」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600200kit">
「え？　な、なに――？
　この声、どこから？」

{	DeleteAllSt(200,true);}
//◆音声指示：小声
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/300600210ktt">
「さっきの恩、返させて貰う」

{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600220kit">
「幻聴……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @-100,@0,"bu千秋_通常_shout");
Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/300600230ktt">
「おーい！　こっちだこっち！」

{	DeleteAllSt(200,true);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/300600240e07">
「発見！　あっちだ！　追え！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/300600250e08">
「いざ！　めくり放題の国へ！」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/19/300600260ktt">
「逃げろおおお――――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	SetVolume("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600270kit">
「………………」

{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600280kit">
「行った？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteSt("C", 200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);





//◆演出指定：時間経過
WaitKey(500);


{	ClockPass(1932);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600290kit">
「はぁ……なんとか、逃げ切れた、か？」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600300kit">
「なんか良くわかんねーけど……ラッキー」

//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600310kit">
「けど……さっきの、誰だったんだ？
　なんか、恩返しとか言ってたけど……」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600320kit">
「オレ、誰か助けたりした？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);




//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@100,"buユージローa_通常_normal");
Move("@StNameMR/MR*", 200, @0, @-100, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/300600330ujr">
「わうわうわうわう！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu千秋_通常_fear");
Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600340kit">
「げ！　また出た！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_angry");
Move("@StNamC/C*", 200, @0, @-100, Dxl3, false);
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/300600350ujr">
「ぐるるるるる……わうわう！　わうわう！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu千秋_朗らか_cry");
Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600360kit">
「ちょ！　バカ！　吠えるな！　噛むな！　オイ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600370fjh">
「コラッ！　ユージロー！」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/300600380ujr">
「わう……？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600390kit">
「あ！　この声は――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @200,@0,"bu平次_通常_angry");
Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600400fjh">
「お嬢ちゃんになんてことをしやがんだ！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/300600410ujr">
「ぶるるるる！　わう！　わうわうわう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_angry");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600420fjh">
「違う？　なにが違うってぇんだよこのバカタレ！」

{	SetVolume("SE*", 2000, 0, null);
	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600430kit">
「ば――ば――」

{	DeleteAllSt(200,true);
	SoundPlay("@xbgm11",0,450,true);
}
{	St("C",700, @0,@200,"bu千秋_頭突き_rage");
Move("@StNameC/C*", 200, @0, @-200, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600440kit">
「バカタレはアンタだ――――――ッ！！」

{	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600450fjh">
「へ？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/300600460ujr">
「わう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1933);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600470kit">
「なんでバッグ、間違うんだよ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600480fjh">
「バッグ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600490kit">
「そう！　あのエコバッグ、オレのだぞ！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600500kit">
「同じガラのバッグ、間違えて持っていったんだよ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600510fjh">
「え？　あら？　あららら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600520fjh">
「がっはっはっはっはっは！　間違っちゃった？」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600530fjh">
「すまん！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600540kit">
「『すまん！』じゃねーだろ！
　オマケにあのヤンキー女に手渡して――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600550fjh">
「ヤンキー女！？　って、まさかあのキンカクジ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600560kit">
「え？　キンカクジってナニ？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600570fjh">
「あ、違うのか？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600580kit">
「良くわかんないけど、師匠……沙紅羅って名前で」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600590fjh">
「おお！　確かそんな名前だった気が……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600600kit">
「とにかく！　その沙紅羅にカバンが渡ったおかげで、オレは、オレは……うっ、う……うう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_shock");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600610fjh">
「え？　おい、お嬢ちゃん？　なんで泣く？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600620kit">
「うっ！　うるさい！
　おまえにオレの苦労がわかってたまるかッ！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600630fjh">
「いやいや、わかんねぇけどな。
　お嬢ちゃんなんか勘違いしてねぇか？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600640fjh">
「オレ、バッグをアイツにあげた覚えなんてねぇぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600650kit">
「へ？　でも、同じエコバッグを――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600660fjh">
「だから、大量生産したんだよ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600670kit">
「でも、売り出すのってゆるキャラバン終わってから――」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600680fjh">
「お嬢ちゃんがこぼした饅頭の箱、あっただろ？」

{	St("MR",700, @0,@0,"bu平次_通常_smile");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600690fjh">
「アレが濡れて使い物にならなくなったから、代わりにあのエコバッグを提供したって寸法よ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600700fjh">
「ま、大量に余ってたからな。
　少しくらいフライングしても文句は言わせねぇよ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600710kit">
「そ、それじゃあの、師匠が持ってたエコバッグは――」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600720fjh">
「きっと、アキバスポットで饅頭買ったんだろうな」


{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600730kit">
（確かに……師匠も饅頭がどうのこうの言ってた……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//	St("ML",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600740kit">
（ってことはオレ……
　ただの饅頭のために……あんな苦しい思いを？）

{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600750kit">
「うっ、ううっ、うううううう…………」

{	DeleteAllSt(200,false);}
{	St("C",700, @50,@0,"bu平次_通常_smile");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600760fjh">
「あー、ホラよしよし。泣くな、泣くなって」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	Shake("@StNameML/ML*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600770kit">
「撫でるな！　気色悪い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600780kit">
「で、間違って持っていったバッグはどこにある！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600790fjh">
「地震で忙しくなると思ったから、一度エコバッグごと、アキバスポットに返した――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600800kit">
「よっしゃ！　アキバスポットだな！」

{	DeleteAllSt(200,true);}

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600810fjh">
「ちょっと待った！」


//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300600820fjh">
「お嬢ちゃん、オレ、アンタに返す物――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　遠くから平次が呼びかけるが、気にしている余裕はない。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(500);

{	ClockPass(1934);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600830kit">
（早くバッグを――中味のブルマーを取り戻さなきゃ！）


//◆ＳＥ：電話
{	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,500,0,1000,null,true);
WaitKey(200);
}

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600840kit">
（あぁ！？　こんな時に電話！？）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600850kit">
（相手してる暇なんて――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600860kit">
「ゲ！　鈴姉！」


{	DeleteAllSt(200,true);}
　千秋は携帯のデジタル時計を見る。

　時刻は――「１９：３４」。

　スーパーノヴァの開店時間を過ぎていた。



{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600870kit">
（やべッ！　なんて言い訳しよう！？）

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600880kit">
（いっそ、気付かなかったことにしてとらないか！？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE01", 500, 1, null);


//◆演出指定：回想開始

//1900千秋.nss[text0255]）[text0210]

//→回想先のボイスにそろえました（千代子[10/14]

	PrintGO("上背景", 5000);

//※下倉注：背景地震後に修正

	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_地震後");
	FadeBG(0,true);
{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}

	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 0, 200, null, true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【富士見鈴】
//<voice name="富士見鈴" class="富士見鈴" src="voice/19/300600890fjr">
//「例の写真、ばらまいちゃうわよ」
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300600890fjr">
「例の写真、ばらまいちゃおっかな？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：回想終了

	SetVolume("SE01", 2000, 500, null);
//	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
//	MusicStart("SE01",500,700,0,1000,null,true);

	PrintGO("上背景", 5000);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
	FadeDelete("上背景", 500, null, true);

//	CreateSE("SE11","seガヤ_交通_l");
//	MusicStart("SE11",1000,1000,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600900kit">
（鈴姉ならやりかねない！　ってかやる！）

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600910kit">
（ここはなんとか言い繕わないと――）


//◆ＳＥ：携帯電話とる
{
	SetVolume("SE*", 0, 0, null);
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
}

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600920kit">
「あ、鈴ね――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300600930fjr">
『私、今、恵那に写メ送信直前なんだけど』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/19/300600940fjr">
『約束、破る気かなっ？』

{	St("C",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600950kit">
「ぎゃああああ！　待った！　待った！」

{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300600960kit">
「ゴメン！　もうちょっとだけ時間！
　あと１０分だけ！　ちゃんと、遅刻しないように――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1935);}


//	TextBoxDelete(150);

//1930恵那.nssの千秋視点[text0230]
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300600970fje">
「ちょっと待ったあッ！！」




//◆演出指定：以下、1930恵那.nssの千秋視点

{	SoundPlay("@xbgm03",0,450,true);
	St("MR",700, @200,@0,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300600980fje">
「アンタ誰！？」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300600990fje">
「ってか、なんで千秋のケータイもってるのよ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu千秋_驚天_shy");
Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601000kit">
「ゲッ！　恵那――！？」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601010fje">
「もしかして――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601020fje">
「これは事件！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}


//◆演出指定：ダッシュで逃げ出す

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601030kit">
「今だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 200, @-600, @0, Axl3, false);
	DeleteAllSt(200,true);
	WaiKey(300);
	SetVolume("SE0*", 2000, 0, null);



//◆演出指定：ダッシュで逃げ出す

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0243]
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601040fje">
「って、なんで逃げるわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601050fje">
「ちょっと待ちなさい！　待ちなさいってば！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	TextBoxDelete(150);
	Move("@StNameMR/MR*", 200, @-100, @0, Axl3, false);
	DeleteAllSt(200,true);

	SetVolume("SE0*", 2000, 0, null);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);



//◆演出指定：走りながら

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601060fje">
「アンタ、千秋の何？　なんか知ってるでしょ！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601070kit">
「知らない！　全く、なんにも！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601080fje">
「嘘つかないで！　なんで同じケータイなのよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601090kit">
「たまたま、同じ機種だっただけ――」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601100fje">
「嘘！　そのストラップ、同じだもん！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601110kit">
「え……？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601120fje">
「これ！　見なさいよ！」

{	DeleteAllSt(200,true);}
　恵那が走りながら携帯電話を掲げる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj恵那携帯ストラップ.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 800, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　揺れているのは千秋と同じ、小さなタヌキのストラップ。

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601130fje">
「千秋にもらったお揃いのタヌキ！」

{	Move("絵オブ", 800, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601140fje">
「アイツ以外に、持ってる人なんて見たことないわ！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601150fje">
「それ、絶対千秋のよ！　返して！！」

{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601160kit">
「し、し、知るかぁっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



{	ClockPass(1936);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	CreateSE("SE12","seガヤ_交通少_l");
	MusicStart("SE12",2000,400,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　公園へと飛び込む直前――

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601170kit">
「――ここだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

Move("@StNameC/C*", 200, @0, @600, Axl1, false);
	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
　千秋は小さく身をかがめ、歩道橋にＵターン。

　歩道橋の真ん中で、地面に這いつくばる。

//◆音声指示：遠くから
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601180fje">
「はぁっ、はぁっ、はぁ……どこ？」

//◆音声指示：遠くから
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601190fje">
「いない……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601200fje">
「ってか、なんなのあの逃げ足の速さ！」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601210fje">
「それになんで、私の名前まで知ってるわけ？」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601220fje">
「千秋に――いったい、何があったのよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1937);}

//◆ＳＥ：着信音

	CreateSE("SE01","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE01",0,500,0,1000,null,true);
	WaitKey(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601230fje">
「――父さんから？
　なんでこんなときに！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE01", 0, 0, null);

	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300601240fje">
「って、あ――あ――ッ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601250kit">
（ショック受けてる……？）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601260kit">
（な、なんだかわかんないけどナイスタイミング！）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601270kit">
（今のうち、逃げだそう……！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);





//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);




	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0103111秋葉原_中央通り_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Fade("絵背景", 0, 1000, Dxl2, false);
	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
{	St("C",19700, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601280kit">
「はぁ……危なかった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	CreateTextureEX("絵演背景", 1500, Center, Middle, "cg/obj/obj千秋携帯ストラップ.png");
	Move("絵演背景", 0, @0, @60, null, true);

	Fade("絵演背景", 300, 1000, null, false);
	Move("絵演背景", 300, @0, @-60, Dxl1, true);

//	St("C",19700, @0,@0,"fu千秋_通常_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601290kit">
（ったく、このストラップがついてるせいで）

{
//	St("C",19700, @0,@0,"fu千秋_通常_think");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601300kit">
（いっそコイツ、取って――）

{
//	St("C",19700, @0,@0,"fu千秋_通常_sad");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601310kit">
（…………）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵演背景", 300, @0, @60, Axl1, false);
	FadeDelete("絵演背景", 300, null, true);

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601320kit">
（……やめよ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",19700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601330kit">
（携帯持ったら、このストラップだけは外さないって、約束しちゃったし）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601340kit">
（約束は、約束だもんな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	//FadeDelete("絵背景", 200, Axl3, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	FadeDelete("絵背景", 0, null, false);


{	ClockPass(1938);}

//◆場所：アキバスポット_正面
	OnBG(10,"bg0401300アキバスポット_正面_修復後");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601350kit">
（色々あったけど、ようやく着いた）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601360kit">
（あとは、バッグを取り返すだけ――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//	St("C",700, MR@0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601370msi">
「おおおおおおおおお！！」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601380kit">
「え？」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601390msi">
「こ、こここここコレはッ！！」

　突然、テントの向こう側から叫び声がする。

　覗く。

　そこには。

　バッグの中味を見つめた、村崎勇の姿が。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵村崎", 700, Center, Middle, "cg/bu/l/bu村崎_通常_happy_x01.png");
	Move("絵村崎", 0, @0, @100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	SoundPlay("@xbgm05",0,450,true);
	St("C",700, @0,@100,"bu村崎_通常_happy");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601400msi">
「こ、こ、ここここ――」

//	St("C",700, @0,@0,"bu村崎_通常_ero");
//	FadeSt("C",200,true);}
{	Fade("絵村崎", 200, 1000, Dxl2, false);
	Move("絵村崎", 200, @0, @-100, Dxl1, false);
	DeleteAllSt(200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601410msi">
「このブル、ブルブルブル――」

{	FadeDelete("絵村崎", 200, Axl3, false);
	DeleteAllSt(200,true);
	St("MR",700, @100,@0,"bu千秋_通常_cry");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601420kit">
「見るなああああああ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601430kit">
「見ないで！　見ちゃダメ！　見るなって！」

{	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601440kit">
「っていうか返して！　返せ！　返せよう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601450msi">
「んんっ？　あはあん……チミは……」


//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601460msi">
「さっき、ボクの店に大層なことをしてくれましたね」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601470kit">
「え？　あ、あは……」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601480kit">
「そういえば、そんなことも」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601490msi">
「コレ、チミのものですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601500kit">
「あ……は、はいそうです！　そうなんです！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601510kit">
「だから……あの、それがないと困るんです！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601520kit">
「返してもらえませんか！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601530msi">
「ふぅぅぅ……ん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601540kit">
「だ……ダメ、ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601550msi">
「いいでしょう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601560kit">
「ありがとうございます！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601570msi">
「ただ――――し！」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601580msi">
「この店に、あれだけの損害を出してくれたんです」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601590msi">
「ただで返すわけには、いきませんよォ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1939);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601600kit">
「え、ただでって――」

{
	DeleteAllSt(200,true);
//◆ＳＥ：携帯ぴぽぱぽ
	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(2000);
	SetVolume("SE01", 100, 0, null);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601610msi">
「あー、もしもし？」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601620msi">
「あ、ジャブルさん？
　スタジオ、夜の撮影まで、まだ時間ありましたよね？」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601630msi">
「８時から？　ええと……はい、間に合わせます！
　ちょっと、鍵を貸して欲しいんですけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601640msi">
「はい、はい、はい。
　いや、予定があるのはわかります！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601650msi">
「ちゃんと次には迷惑かけないように、終わりますんで！
　ええ！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601660msi">
「はい、はい、はいはい、失礼します……
　はい、失礼します……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：携帯切れる
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601670msi">
「ふぅ……あのインド人！
　最近調子良いからってチョーシに乗って！」

{	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601680msi">
「なにがインターネットだ！
　なにがアイテー戦略だ！」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601690msi">
「元数学の天才が何だっていうんですか！
　今じゃただの河原屋組の使いっ走りでしょう！？」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601700msi">
「バックに双一親分がいなきゃ、あいつらなんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//あきゅん「演出：この時間の裏で恵那が電話をかけているので、うっすら着メロ流します」
	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("MR",700, @50,@0,"bu千秋_通常_worry");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601710kit">
「ええと、あの――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601720msi">
「おおっと、ゴメンナサイねえ！
　つい夢中になっちゃって！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601730kit">
「すいません、鍵とか撮影とか言ってるけど、まさか――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601740msi">
「まさか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 200, 0, null);

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/300601750msi">
「まさか、なにが起こるんでしょうねぇ……
　ぐふ、ぐふふふふふ……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300601760kit">
（な、なんかすごく嫌な予感が……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	EndFileBlackOut(20000,2000);

	EndScene();
}
