
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2235沙紅羅_似鳥_ノーコ.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "2240沙紅羅_恵那_似鳥_ノーコ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2240沙紅羅_恵那_似鳥_ノーコ.nss";
	}else{
		$GameName = "2240沙紅羅_恵那_似鳥_ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2235沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="540">
////////////header////////////
//file name "2235沙紅羅_似鳥_ノーコ.nss"
//title "元の鞘"
//previous "2233沙紅羅_似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2240沙紅羅_恵那_似鳥_ノーコ.nss"
//next "似鳥" "2240沙紅羅_恵那_似鳥_ノーコ.nss"
//next "ノーコ" "2240沙紅羅_恵那_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2235);}

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateSE("SE11","se環境_風_l");
	CreateSE("SE10","se環境_風低音_l");

	FadeDelete("上背景", 200, null, true);

	MusicStart("SE11",3000,1200,0,1000,null,true);
	MusicStart("SE10",3000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200010skr">
「ふぅ……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200020skr">
「なんか、最後に見たときと随分違うような……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200030nko">
「……なにか、へん」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200040nki">
「変って、何が――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：バタン！
	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-50,@0,"bu貫太_通常_shout");
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200050okt">
「ちょっと！」

//◆音声指示：同時
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200060skr">
「ん？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200070okt">
「今ここに、フウリが来なかったかい？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200080skr">
「フウリ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200090nki">
「いや、別に……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200100okt">
「じゃ、アザナエルは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200110nki">
「さっきそこに来た平次さんが……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200120okt">
「平次って？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200130skr">
「モジャモジャのオッサン。警官」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200140okt">
「モジャモジャの……？
　でも、いや……オレはフウリとはすれ違わなかった――」

{	St("C",700, @0,@0,"bu貫太_通常_shout");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200150okt">
「あ、そうかッ！」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200160okt">
「そいつがフウリだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu似鳥_通常_shock");
	St("R",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200170skr">
「はあ？」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200180nki">
「はあ？」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200170">
「「はあ？」」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/350200190okt">
「失礼！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	TextBoxDelete(150);


	Move("@StNameC/C*", 200, @100, @0, Axl1, false);
	DeleteAllSt(200,true);

	Wait(300);

	SetVolumeEX("SE02", 200, 0, null);

//◆ＳＥ：バタン！
	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200200nko">
「いっちゃった……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200210skr">
「あのオッサン、頭大丈夫か？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200220nki">
「かなりギリギリな気が。
　というか、アイツ誰？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200230nko">
「なぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2236);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：携帯電話鳴る
//おがみ：メール着信と同じ音だが大丈夫か
	CreateSE("SE01","seメカ_携帯_メール着信_似鳥_l");
	CreateSE("SE01a","seメカ_携帯_電子音01");
	MusicStart("SE01",0,300,0,1000,null,false);

	Wait(1500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200240nki">
「あ、悪い！　電話が――半田明神から？」

{
	MusicStart("SE01a",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 50, 0, null);

	DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200250nki">
「はい、もしもし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE10", 500, 1, null);
	SetVolumeEX("SE11", 500, 1, null);

	CreatePlainSP("揺用", 2005);

	CreateWindowEX("左みそ", 0, 0, 512, 576, false);
//	Zoom("左みそ", 0, 0, 1000, null, true);
	CreateTextureSP("左みそ/絵背景", 131, 0, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("左みそ/絵背景", HEAVY);
	Zoom("左みそ/絵背景", 0, 2000, 2000, null, true);

	CreateWindowEX("右ブー", 512, 0, 512, 576, false);
//	Zoom("右ブー", 0, 0, 1000, null, true);
	CreateTextureSP("右ブー/絵背景", 131, -512, Middle, "cg/bg/bg0603200半田明神_境内_ペンキ.jpg");
	SetShade("右ブー/絵背景", HEAVY);
	Zoom("右ブー/絵背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演Line", 140, Center, Middle, "cg/mask/ciウィンドウ縦01.png");

	CreateTextureEX("中似鳥絵マスク１", 3000, 0, 0, "cg/mask/ciスラッシュ_07_01z.png");
	Request("中似鳥絵マスク１", Smoothing);

	CreateMask("中似鳥", 0, 0, 0, "cg/mask/ciスラッシュ_07_01.png", false);
	SetAlias("中似鳥", "中似鳥");
	Zoom("中似鳥", 0, 0, 1000, null, true);

	CreateTextureSP("中似鳥/絵背景", 141, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	CreateTexture("中似鳥/似鳥", 700, Center, InBottom, "cg/bu/bu似鳥_通常_shock.png");
	SetAlias("中似鳥/似鳥","中似鳥/似鳥");


	CreateTexture("左みそ/みそ", 135, OutRight, InBottom, "cg/bu/buみそa_通常_cry.png");
	SetAlias("左みそ/みそ","左みそ/みそ");
	Move("左みそ/みそ", 0, -95, @96, null, true);
//	Zoom("左みそ", 300, 1000, 1000, Dxl2, true);

	CreateTexture("右ブー/ブー", 135, OutRight, InBottom, "cg/bu/buブーa_通常_cry.png");
	SetAlias("右ブー/ブー","右ブー/ブー");
	Move("右ブー/ブー", 0, 510, @96, null, true);
//	Zoom("右ブー", 300, 1000, 1000, Dxl2, true);


	DrawDelete("揺用", 300, 100, Dxl1, "slide_06_00_0", true);

//◆演出指定：音量でかく


/*
//◆音声指示：電話越し
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/350200260mso">
『姐さ――――――ん！！』

//◆音声指示：電話越し
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/350200270buu">
『姐さ――――――ん！！』
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/350200260">
『『姐さ――――――ん！！』』

{
	Move("中似鳥/似鳥", 0, @0, @96, null, true);
	Fade("中似鳥絵マスク１", 300, 1000, null, false);
	Shake("中似鳥/似鳥", 300, 7, 5, 0, 0, 1000, Dxl2, false);
	Shake("中似鳥絵マスク１", 300, 10, 5, 0, 0, 1000, Dxl2, false);
	Zoom("中似鳥絵マスク１", 300, 1200, 1200, Dxl2, false);
	Zoom("中似鳥", 300, 1200, 1200, Dxl2, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200280nki">
「うおっ！」

{
	SoundPlay("@xbgm07_noint",0,450,true);

	Fade("中似鳥/似鳥", 200, 0, null, true);

	St("C",700, @0,@50,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200290skr">
「今の声――！？　おい、ちょっと借りるぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@50,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200300skr">
「もしもし？」

//◆音声指示：電話越し
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/350200310mso">
『お、お願いしますッ！！』

//◆音声指示：電話越し
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/350200320buu">
『た、助けてくださ――――い！』

{
	St("C",700, @0,@50,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200330skr">
「ど、どうしたみそブー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：電話越し
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/350200340mso">
『半田明神が……』

//◆音声指示：電話越し
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/350200350buu">
『オレたちのせいで、大変なことに……！』

{
	St("C",700, @0,@50,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200360skr">
「大変って、なにが――？」

//◆音声指示：電話越し
//【ブー】
<voice name="ブー" class="ブー" src="voice/22/350200370buu">
『さっきノーコが襲ってきて、それで――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@50,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200380skr">
「ノーコが？」

//◆音声指示：電話越し
//【みそ】
<voice name="みそ" class="みそ" src="voice/22/350200390mso">
『とにかく、来て下さい！』

{
	St("C",700, @0,@50,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200400skr">
「あー、もう！
　わーったよ、ったく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 500, 0, null);

	TextBoxDelete(150);
	Wait(200);
//◆ＳＥ：ピッ
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE10", 1500, 700, null);
	SetVolumeEX("SE11", 1500, 700, null);

	CreatePlainSP("揺用", 17005);

	DeleteAllSt(0,true);
	Delete("中似鳥*");
	Delete("左みそ*");
	Delete("右ブー*");
	Delete("絵演Line");

	Fade("揺用", 200, 0, null, true);
	Delete("揺用");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200410nki">
「なんかあったのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200420skr">
「いや、なんだかわかんねーけどよ。
　半田明神で、なんかトラブルがあったらしい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200430nko">
「あ……それ、わたしのせいだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1500, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆時間：ジャンプ
{	ClockPass(2239);}

//◆場所：半田明神_男坂

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",1500,400,0,1000,null,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/350200440nki">
「無理しなくていいんだぞ。
　ナンだったら、オレたちだけで――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200450nko">
「だめ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200460nko">
「わたしがめいわくをかけた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200470nko">
「だから、わたしがなんとかしたい」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200480skr">
「ああ、良い心意気じゃねぇか！
　泣かせるねぇ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200490nko">
「でも、ホントにゆるしてもらえるか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200500skr">
「なぁに！　心配するんじゃねぇ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/350200510skr">
「失敗は誰にでもある。
　やり直しは、絶対にきくんだよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/350200520nko">
「さくら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,false);

//あきゅん「演出：ここで恵那は見せないほうが良いのでカットで」
/*
//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1600, center, middle, "cg/bu/bu恵那_ハルヒ_angry.png");
	Move("絵窓/絵演立絵", 0, @-200, @0, null, true);

//動作
//おがみ：β要演出箇所：優先度Ａ　ここはデカカットで演出したい
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Move("絵窓/絵演立絵", 300, @200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, true);
*/
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/350200530fje">
「あ――――！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/350200540fje">
「そ――そこにいるのはッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("絵窓", 200, 1000, 0, null, false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵窓*");





	EndScene();
}
