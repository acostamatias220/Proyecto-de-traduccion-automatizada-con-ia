
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1910ノーコ_フウリ.nss_MAIN
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

	if($CharaName=="フウリ"){
		$GameName = "1920似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "1920似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName = "1920似鳥_ノーコ_フウリ.nss";
	}
}

scene 1910ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1080">
////////////header////////////
//file name "1910ノーコ_フウリ.nss"
//title "おまじない"
//previous "1900ノーコ.nss"
//previous "1900フウリ.nss"

////////////footer////////////
//next "ノーコ" "1920似鳥_ノーコ_フウリ.nss"
//next "フウリ" "1920似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文

{	ClockPass(1910);}


//◆場所：スーパーノヴァ_ライブ会場_地震後
	PrintGO("上背景", 30000);
//嶋：繋ぎの為に修正
//	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_ガラス割れ");
//101120：ライター修正指示↓
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",0,true);

	CreateSE("SE00","seガヤ_交通少_l");
	MusicStart("SE00",1000,700,0,1000,null,true);


//※下倉注：ここ、まだ機材が直ってないのでスーパーノヴァのテーマＮＧ 2010/11/19
//	MusicStart("@xbgm20",2000,450,0,1000,null,true);

	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100010wfu">
「似鳥さんって確か……ノーコちゃんの恋人さん？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100020nko">
「たいせつなひと」

{
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100030nko">
「おねがい。きて！」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100040wfu">
「でも、今私はやることが……
　もう少し、後なら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100050nko">
「フウリしか、むりなの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100060nko">
「このままだと、にとりが……しんじゃう」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100070wfu">
「しんじゃう……？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100080nko">
「おねがい、フウリ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100090nko">
「わたしの……ともだち」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆音声指示：小声
{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100100wfu">
「だめ……貫太さんみたいになっては……
　貫太さんみたいに……」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100110nko">
「……フウリ？　だいじょうぶ？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100120wfu">
「なんだかわかんないけど……わかりました。
　命あっての物種です。行きましょう！」

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100130wfu">
「ごめんなさい、鈴ちゃん。
　ちょっと待ってて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@SE*", 2000, 0, NULL);
//	SetVolume("@x*", 2000, 0, NULL);

	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

{	ClockPass(1911);}

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0101100秋葉原_裏通り_通常");
	FadeBG(0,true);
	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",0,true);

	//★徒歩：ＳＥ

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100140nko">
「こっち」

{	Move($MR_今, 200, @20, @0, Axl1, false);
	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"buフウリ_通常_hard");
	MoveEX($ML_次, 200, 20, 0, Dxl1, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100150wfu">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	OnBG(10,"bg2502300信号機_見上げ_赤標識無");

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move($ML_今, 200, @20, @0, Axl1, false);
	DeleteSt("ML",200,true);

	FadeBG(1000,true);

//	SetVolume("@SE01", 3000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　滑るように先導するノーコ。

　そのあとを、フウリは身体を揺らして追いかける。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	PrintGO("上背景", 30000);

	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100160wfu">
「それで、似鳥さんにはなにが……？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100170nko">
「じしん。ほんのしたじき。
　あたまから、ち」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100180wfu">
「わ！　それはたいへんです！
　救出して、手当てしないと……」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100190wfu">
「でも……ちゃんと助けられるでしょうか？」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100200wfu">
「私よりも、力のある人がいるような……
　もっと、他の人を呼んだ方が――」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100210nko">
「それはむり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100220wfu">
「え？　どうして？」

//◆音声指示：小声
{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100230nko">
「フウリ、わたしのしょうたいにきづいてない」

//◆音声指示：小声
{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100240nko">
「そのほうがこうつごう」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100250wfu">
「ノーコちゃん？　なに、ひとりでぶつぶつ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1912);}

	TextBoxDelete(0);

//◆演出指定：タヌキの影がビュン！　と走る。
//◆ＳＥ：四つ足の獣が走り去る
//あきゅん「素材：objタヌキ小走り」

	//★徒歩：ＳＥ
	CreateSE("SE01","se動物_タヌキ_走る_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景１", 2000, 1024, 150, "cg/obj/objタヌキ小走り.png");
	FadeXH5("絵背景１",300,1000,1000,-2024,-30,null,true);

	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100260wfu">
「はれ？」

{	St("MR",700, @0,@0,"buユージローa_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/100100270ujr">
「わうわうわうわうッ！！」

{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	Move($MR_今, 200, @-20, @0, Axl1, false);
	DeleteSt("MR",200,true);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100280wfu">
「ひぎゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：どすん！
//	FadeV($C_今,500,1000,500,0,50,Axl1,true);
	Move($C_今, 200, @0, @40, Axl1, false);
	DeleteSt("C",200,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);
	PlainShake(10, 500, 0, 20, 0, 0, 500, Dxl1, true);

	St("R",700, @0,@0,"buフウリ_通常_fear");
	MoveEX($R_次, 200, 0, -20, Dxl1, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100290wfu">
「なななな！　犬！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("R",200,true);

	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100300nko">
「だいじょうぶ？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100310wfu">
「は……はい。なんとか……」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100320wfu">
「でも今の犬……なんだったんでしょうか？」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100330nko">
「フウリ」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100340wfu">
「あ……そうです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100350wfu">
「速く、似鳥さんを助けに行かないと！」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100360wfu">
「死んでしまっては、駄目です！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100370wfu">
「死んでしまっては……元も子もないのです！」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100380wfu">
「絶対、生きてる――まだ、生きています！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE*", 3000, 0, NULL);


//◆時間：ジャンプ
{	ClockPass(1914);}

	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);


{	ClockPass(1915);}

//◆場所：似鳥マンション_玄関 → 正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	//★徒歩：ＳＥ
	//▼べー：ＳＥ欠番につきコメントアウト
//	CreateSE("SE00","seガヤ_テレビ_TV番組_l");
//	MusicStart("SE00",1000,450,0,1000,null,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	MoveEX($C_次, 200, -20, 0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100390nko">
「このへや」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100400wfu">
「待ってて下さい！　今助けます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：扉開く
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

{	ClockPass(1916);}

//◆場所：似鳥マンション_リビング_同人誌散乱
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);

//◆ＳＥ：テレビの音声
	MusicStart("SE00",1000,700,0,1000,null,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100410wfu">
「似鳥さんはこの下敷き！？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100420nko">
「ここ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100430wfu">
「やや！　発見！」

{
	DeleteAllSt(200,true);
	SetVolume("@SE*", 3000, 0, NULL);
	MusicStart("@xbgm26",3000,450,0,1000,null,true);
}
//◆音声指示：朦朧
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/100100440nki">
「ああ……痛い……痛い……」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100450wfu">
「似鳥さん！　大丈夫！　助けに来ましたよ！」

{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100460wfu">
「わ！　ホントに頭から血が！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"fuフウリ_通常_hard");
	//★徒歩：誰かがLにしてくれよ
	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);

	Shake($C_次, 2500, 0, 5, 0, 0, 500, Dxl1, false);
	MoveEX($C_次, 2500, 0, -50, Dxl1, false);
	//★立ち絵プロセス：開始
	DeleteFadeStPro("C", 200, 500, 400, 500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100470wfu">
「助けねば！　ふぐ、ふぐぐぐぐぐぐぐ……！！」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"fuフウリ_通常_hard");
	//★徒歩：Lにしたらけしてくれよ
}
　フウリは本棚に手をかけながら、下敷きになっている似鳥に向かって呼びかける。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100480wfu">
「似鳥さん！　頑張って！　もう少しです……！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100490wfu">
「死んで花実は咲きませんんん……！！」

{	//★徒歩：誰かがLにしてくれよ
	St("C",700, @0,@0,"fuフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100500wfu">
「ぽんぽこぽんの――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"fuフウリ_前のめり_hard");

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake($C_次, 200, 0, 0, 0, 20, 500, Dxl1, false);
	FadeT($C_次,0,0,500,0,-50,Dxl1,false);
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100510wfu">
「ぽ――――ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1917);}

	DeleteSt("C",200,true);

//◆ＳＥ：本棚吹っ飛ぶ
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_破壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	PlainShake(10, 1000, 0, 20, 0, 0, 500, Dxl2, true);

	St("C",700, @0,@0,"buフウリ_通常_shock");
	MoveEX($C_次, 200, 0, -20, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100520wfu">
「似鳥さん！　大丈夫ですか！？」

{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	Shake("@StNameC/C*", 200, 0, 8, 0, 0, 800, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100530wfu">
「ってききゅ――――！？　なんか下半身が裸！」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100540nko">
「フウリ。きゅうきゅうばこはあそこ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100550wfu">
「あ……は、はい！
　動揺してる場合じゃないです！」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100560wfu">
「ケガの治療……ちりょう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指示：時間経過
	PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
	Wait(2000);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100570nko">
「どう？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100580wfu">
「や、切り傷は深くないです。
　バンソーコー貼ったら、ニット帽で隠れちゃいます」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100590wfu">
「頭の中のことまではわかんないですけど、ちょうど隙間になってたんで、そんなに大事ではないかと……」

{	SetVolume("@x*", 2000, 0, NULL);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100600nko">
「ほんとう……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100610nko">
「よ……よ……」

//◆音声指示：涙ぐむ
{	MusicStart("@xbgm10",3000,450,0,1000,null,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100620nko">
「よかった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100630wfu">
「ノーコちゃん……」

{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100640wfu">
「やっぱり、似鳥さんが好きなんですね……」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100650nko">
「え……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100660nko">
「わたしが、にとりを、すき？」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100670nko">
「……かんがえたことがなかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100680nko">
「ずっと、にとりにすきっていってもらいたくて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100690nko">
「でも、わたしはにとりに、すきといわない」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100700nko">
「へん。どうして？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100710wfu">
「でも、ノーコちゃんは、似鳥さんが好きなんでしょう？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100720nko">
「わからない。でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1918);}

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100730nko">
「にとりがかわるのはいや。
　にとりがとおくにいくのはいや」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100740nko">
「わたし、にとりからはなれたくない」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100750wfu">
「離れちゃ駄目です！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100760wfu">
「好きな人には、ちゃんと気持ちを伝えて、ちゃんとそばにいてもらわないと――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100770nko">
「…………」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100780wfu">
「きゅ……」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100790nko">
「おせっかい」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100800wfu">
「すみません。でも――」

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100810wfu">
「後悔先に立たずなのです」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100820wfu">
「自分の気持ちを伝えないと、その後悔を、ずっとずっと引きずることになるのです」

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100830wfu">
「私も、貫太さんへの気持ちを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//嶋：ここでフラッシュバック？
//	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
//	Fade("フラッシュ白",300,1000,null,true);
//	CreateColorSPadd("絵白", 19002, "WHITE");
//	CreateTextureEX("絵背景100", 19001, 510, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
//	CreateTextureEX("絵st100", 19001, 900, Middle, "cg/bu/l/bu織田貫太_通常_x02.png");
//	Fade("絵st100", 0, 1000, null, true);
//	Fade("絵背景100", 0, 1000, null, true);
//	Zoom("絵背景100", 0, 2000, 2000, null, true);
//	SetShade("絵背景100", HEAVY);
//	Fade("絵白",0,200,null,true);
//	Move("絵背景100", 1200, -400, @0, DxlAuto, false);
//	Move("絵st100", 1200, 150, @0, DxlAuto, false);
//	Fade("フラッシュ白",300,0,null,true);
//	Wait(500);
//	Fade("フラッシュ白",300,1000,null,true);
//	Delete("絵背景100");
//	Delete("絵st100");
//	Delete("絵白");
//	Fade("フラッシュ白",300,0,null,true);
//	Delete("フラッシュ白");

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100840nko">
「かんた？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100850wfu">
「な、何でもありません！
　とにかく、気持ちを伝えるべきなんです！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100860nko">
「…………」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100870wfu">
「こわいですか？　そういうときは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	shima_taiko(3000,"cg/yur/yurIF背景01.png","cg/yur/yurIF背景03.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100880wfu">
「はあああああああ！」

{	shima_taikopon();}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100890wfu">
「ぽん！」

{	shima_taikoDelete();
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100900nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1919);}

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	SetComic(@0,@-220,10);
	FadeSt("C",200,true);
	FadeComic();}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100910nko">
「なに？」

{	DeleteComic();
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100920wfu">
「おまじないです！」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100930wfu">
「苦しいとき、悲しいとき、もう折れてしまいそうなとき」

{	St("C",700, @0,@0,"buフウリ_頬手_happy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100940wfu">
「こうやってお腹を叩くと、元気が出るのです！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100950nko">
「…………」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100960wfu">
「さあ！　一緒にいきますよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	shima_taiko(3000,"cg/yur/yurIF背景01.png","cg/yur/yurIF背景03.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100970wfu">
「はあああああああ！」

{	shima_taikopon();}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100100980wfu">
「ぽん！」

{	shima_taikoDelete();
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100100990nko">
「…………」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100101000wfu">
「うう……ノーコちゃぁん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolume("@x*", 3000, 0, NULL);

	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100101010nko">
「……だめ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100101020nko">
「わたしのきもちは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100101030nko">
「いえない」

{
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/100101040wfu">
「どうして！？　なにか理由が――」

{
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100101050nko">
「なぜなら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100101060nko">
「うらぎりものだから」

{	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/100101070nko">
「にとりを、だましているから」

{	DeleteSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/100101080nki">
「騙して……いる……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
