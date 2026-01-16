
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2233沙紅羅_似鳥_ノーコ_フウリ.nss_MAIN
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
		$GameName = "2235沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2235沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "2235沙紅羅_似鳥_ノーコ.nss";
	}else{
		$GameName = "2235フウリ.nss";
	}
//	$GameCircle=false;

}

scene 2233沙紅羅_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="300">
////////////header////////////
//file name "2233沙紅羅_似鳥_ノーコ_フウリ.nss"
//title "元の鞘"
//previous "2230沙紅羅_似鳥_ノーコ.nss"
//previous "2230フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2235沙紅羅_似鳥_ノーコ.nss"
//next "似鳥" "2235沙紅羅_似鳥_ノーコ.nss"
//next "ノーコ" "2235沙紅羅_似鳥_ノーコ.nss"
//next "フウリ" "2235フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(2233);}

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	if($PreGameName=="2230フウリ.nss"){

		DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

	}else{

		FadeDelete("上背景", 0, null, true);

	}

//◆ＳＥ：バタン！　扉開く
	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE11","se環境_風_l");
	CreateSE("SE10","se環境_風低音_l");

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100010wff">
「御用だッ！！」

{	DeleteAllSt(200,true);
	MusicStart("SE11",3000,1200,0,1000,null,true);
	MusicStart("SE10",3000,200,0,1000,null,true);

	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/330100020skr">
「げッ！　モジャモジャ！　隠れ――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100030wff">
「鉄砲はどこだッ！？
　アザナエルをいただきに来たッ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100040nko">
「これ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorEX("絵色100", 90, "BLACK");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵色100", 300, 500, null, true);

	WaitKey(1000);

	FadeDelete("絵背景100", 300, null, false);
	FadeDelete("絵色100", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100050wff">
「おう、それだ」

{	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100060wff">
「夢を叶える――アザナエル」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100070nko">
「わたしを、たいほする？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100080wff">
「その鉄砲をよこせば、なにもしない」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100090nko">
「ほんとう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100100wff">
「本当だ。今までの犯罪も、帳消しにしてやる」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100110nko">
「……にとり」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/330100120nki">
「ああ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/330100130nki">
「オレたちにはもう、必要ない」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_幽霊_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100140nko">
「うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ノーコはそっと、アザナエルを手渡す。

{
	SetVolumeEX("SE*", 2000, 0, null);

	SoundPlay("@xbgm25",0,700,true);
	St("ML",700, @0,@0,"bu平次_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100150wff">
「おめでとう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100160nko">
「え……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100170wff">
「ああ、あと、フウリのことだが」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100180nko">
「フウリ……しってるの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2234);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100190nko">
「おともだちはどこに――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100200wff">
「しばらく、ケガの治療で地元に戻るとさ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100210nko">
「うそ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100220wff">
「ああ、ああ！
　心配しなくていい、ケガは治るって言ってた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100230wff">
「ついでに、実家に戻る機会ができてうれしかったって伝えろって」

{	St("ML",700, @0,@0,"bu平次_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100240wff">
「だから気にするなって。な？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/22/330100250nko">
「きに、するな……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100260wff">
「よっしゃあ、それじゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);
	Wait(100);

//◆演出指定：木刀を構えて
	CreateSE("SE01a","se戦闘_風切り音01");
	CreateSE("SE01b","se戦闘_風切り音02");
	CreateSE("SE01c","se戦闘_風切り音03");
	CreateSE("SE01d","se戦闘_風切り音04");
	CreateSE("SE01e","se戦闘_風切り音05");


	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,false);
	MusicStart("SE01a",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @0, @50, Axl2, true);
	Move("@StNameC/C*", 100, @0, @-50, Dxl2, true);
	MusicStart("SE01b",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @0, @50, Axl2, true);
	Move("@StNameC/C*", 100, @0, @-50, Dxl2, true);
	MusicStart("SE01c",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @0, @50, Axl2, true);
	Move("@StNameC/C*", 100, @0, @-50, Dxl2, true);

	MusicStart("SE01d",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 100, @-50, @50, Dxl2, true);
	MusicStart("SE01e",0,700,0,1000,null,false);
	Move("@StNameC/C*", 100, @100, @0, Dxl2, true);
	Move("@StNameC/C*", 100, @-50, @-50, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/330100270skr">
「ふ！　は！　ほ！
　おっしゃー！　やるんならやってやんぞコラー！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100280wff">
「どうした嬢ちゃん。
　そんな張り切って」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/22/330100290skr">
「へ？　見逃してくれんのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ（富士見平次）】
<voice name="綿抜フウリ（富士見平次）" class="富士見平次" src="voice/22/330100300wff">
「……へんな奴め」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：バタン！

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);

	EndScene();
}
