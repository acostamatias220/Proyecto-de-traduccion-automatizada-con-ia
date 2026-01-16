
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2140ノーコ_フウリ.nss_MAIN
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
	if($CharaName=="ノーコ"){
		if(Substr($myRoute,0,2)=="ab"){
			//ab
			Wait(2000);
			$GameName = "ab2150沙紅羅_似鳥_ノーコ.nss";
		}else{
			//トゥルー、b
			$GameName = "2150沙紅羅_似鳥_ノーコ.nss";
		}
	}else if($CharaName=="フウリ"){
		$GameName = "2150フウリ.nss";
	}
}

scene 2140ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1530">
////////////header////////////
//file name "2140ノーコ_フウリ.nss"
//title "あやまち"
//previous "2130沙紅羅_似鳥_ノーコ.nss"
//previous "2139フウリ.nss"

////////////footer////////////
//next "ノーコ"（"flkagome1a" = true） "ab2150沙紅羅_似鳥_ノーコ.nss"

//next "ノーコ" "2150沙紅羅_似鳥_ノーコ.nss"
//next "フウリ" "2150フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2140);}

	SoundPlay("@xbgm22",0,450,true);


//◆場所：秋葉原_万世橋
	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	CreateSE("SE10","se動作_集団走る");
	MusicStart("SE10",2000,1000,0,1000,null,true);


	FadeDelete("上背景", 1000, null, true);


//	SoundPlay("@xbgm26",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@50,"stノーコa_通常_mad");
	Move("@StNameC/C*", 600, @0, @-50, Dxl1, false);
	FadeSt("C",400,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100010nko">
「まちなさい」

{	DeleteAllSt(200,true);
	St("C",700, @-50,@0,"fu似鳥_通常_shout");
	Move("@StNameC/C*", 600, @50, @0, Dxl1, false);
	FadeSt("C",400,false);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100020wfn">
「待たない！」

{
	SetVolumeEX("SE*", 1000, 0, null);

	Move("@StNameC/C*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);
	St2("C",700, @0,@80,"buノーコa_通常_mad","cg2/",".png");
	Move("@StNameC/C*", 600, @0, @-80, Dxl1, false);
	FadeSt("C",400,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100030nko">
「そんなところにかくれても、もうにげばは――」

{	St2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100040nko">
「いない……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：ドロン
	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Wait(1000);

	St("C",700, @0,@80,"st似鳥_通常_shout");
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//◆音声指示：遠くから
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100050wfn">
「ほらほら、こっちだこっち！」

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100060nko">
「いつのまに――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateSE("SE10","se動作_集団走る");
	MusicStart("SE10",200,1000,0,1000,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2141);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	SetVolumeEX("SE*", 2000, 0, null);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-50,@0,"stノーコa_通常_sad");
	Move("@StNameC/C*", 600, @50, @0, Dxl1, false);
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100070nko">
「どうしてにげるの？」

{	St("C",700, @0,@0,"stノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100080nko">
「わたしはほんもの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100090nko">
「もうそうじゃない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100100nko">
「みんなにもみえる」

{	St("C",700, @0,@0,"stノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100110nko">
「わたしがきらい？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100120wfn">
「なわけないだろ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"stノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100130nko">
「……ほんとう？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100140wfn">
「うそじゃない」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"stノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100150nko">
「ならどうして、きもちに、こたえない？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100160wfn">
「拒否なんてしてない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2142);}

//◆場所：スーパーノヴァ_正面
	//★徒歩：フラグ修正
	if(Substr($myRoute,0,2)=="ab"){
	OnBG(10,"bg0501100スーパーノヴァ_正面_通常");
	}else{
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	}
	FadeBG(0,true);

//途中で再生されるように先んじて流しておく
	SoundPlay("@xbgm20",0,1,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"st似鳥_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100170wfn">
「ただ……時間が欲しいだけだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,true);
	St("C",700, @30,@0,"buノーコa_通常_normal");
	Move("@StNameC/C*", 400, @-30, @0, Dxl1, false);
	FadeSt("C",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100180nko">
「もうじゅうぶんまった」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100190nko">
「ながい、ながいじかんまった」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100200nko">
「これいじょうはむり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100210nko">
「わたしが、どんなきもちで、どれだけ――」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100220nko">
「どれだけ、きせきをまってたか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：クラクションプップー！
	CreateSE("SE02","seメカ_車_クラクション_l");
	MusicStart("SE02",0,1200,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/21/400100230msi">
「ど、どいてください――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm22", 500, 0, null);


//◆ＳＥ：キキー！　ブレーキ
	SetVolume("SE01", 1000, 0, null);
	CreateSE("SE02","seメカ_車_トラックエンジン_l");
	MusicStart("SE02",2000,1400,0,950,null,true);
	SetFrequency("SE02", 2000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100240wfn">
「え……？」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100250nko">
「――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2143);}

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @50, @50, Axl1, false);
	DeleteAllSt(200,true);

//◆演出指定：カッターナイフ一閃
//◆演出指定：ガッチャーン！！

	CreateSE("SEP01","seメカ_車_急ブレーキ");
	SetVolumeEX("SE02", 500, 0, null);
	MusicStart("SEP01",0,1500,0,1000,null,true);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/img/img迫り来る村崎のトラック.jpg");
	Fade("絵背景", 0, 1000, null, true);
	Fade("絵色", 300, 0, null, false);
	Zoom("絵背景", 500, 2000, 2000, DxlAuto, false);

	Wait(300);

	CreateSE("SE01","se戦闘_カッター_GOC");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	CreateSE("SE02","se戦闘_切断04");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵色", 200, 1000, null, true);
	WaitKey(200);
	Delete("絵背景");



//◆場所：スーパーノヴァ_正面_ガラス車イン
//あきゅん「演出：ルートによってガラス補修テープ痕のあるなしがあります」
	//★徒歩：フラグ修正
	if(Substr($myRoute,0,2)=="ab"){
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");//綺麗なガラス
	}else{
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");//補修された痕ガラス
	}
	FadeBG(0,true);

	SetVolumeEX("SEP*", 1000, 0, null);
	CreateSE("SE03","se戦闘_ガラス割れる02");
	MusicStart("SE03",0,700,0,1000,null,false);

	//★徒歩：フラグ修正
	if(Substr($myRoute,0,2)=="ab"){
	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg0501400スーパーノヴァ_正面_ガラス車イン.jpg");//綺麗なガラス
	}else{
	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg0501400スーパーノヴァ_正面_ガラス車イン.jpg");//補修された痕ガラス
	}

	Move("絵ゆれ", 0, @-450, @0, null, true);
	Rotate("絵ゆれ", 0, @0, @0, -30, null,true);
	Zoom("絵ゆれ", 0, 2500, 2500, null, true);

	FadeDelete("絵色", 500, null, false);

	SetVolumeEX("@xbgm20", 1000, 400, null);

	Move("絵ゆれ", 1500, 0, @0, Dxl1, false);
	Rotate("絵ゆれ", 1500, @0, @0, 0, Dxl1,false);
	Zoom("絵ゆれ", 1500, 1000, 1000, Dxl1, false);

	Fade("絵ゆれ", 0, 1000, null, true);
	Shake("絵ゆれ", 500, 15, 8, 30, 0, 500, AxlAuto, true);
	Shake("絵ゆれ", 500, 8, 6, 0, 0, 500, Axl3, true);
	Request("絵ゆれ",Disused);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100260wfn">
「わ！　わ！　わ！　大惨事！」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100270wfn">
「私のせい……？」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100280wfn">
「でも、けが人はいないみたいです……
　不幸中の幸い……」

{	St("C",700, @0,@50,"buノーコa_通常_sad");
	Move("@StNameC/C*", 600, @0, @-50, Dxl3, false);
	FadeSt("C",400,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100290nko">
「だいじょうぶ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵色100");
	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100300wfn">
「あ、ノーコちゃん！　助けてくれて――」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100310nko">
「ん？」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100320wfn">
「あれ？」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100330wfn">
「あ……！　違う！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ダッシュで逃げ出す

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolume("SE01", 2500, 0, null);


	Move("@StNameMR/MR*", 200, @100, @0, Axl1, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 400, @80, @0, Axl1, false);
	DeleteAllSt(400,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100340nko">
「まちなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);
	CreateColorSP("絵黒幕", 20, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100350wfn">
「うう……このままじゃ、二次被害が……」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100360wfn">
「人気のない場所、人気のない場所……」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100370wfn">
「そうだ、あそこが！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 100, 0, null);

//◆演出指定：移動じゃない感じの切り替え。視点が一瞬飛ぶ

	TextBoxDelete(150);

{	ClockPass(2144);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	Wait(1500);

	Fade("絵黒幕", 1000, 0, null, true);
	Delete("絵黒幕");

//◆ＳＥ：ライターつける
	CreateSE("SE01","se動作_ジッポ火点ける");
	MusicStart("SE01",0,900,0,1000,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @-30,@0,"buロクローa_通常_normal");
	Move("@StNameC/C*", 400, @30, @0, Dxl1, false);
	FadeSt("C",300,false);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100380rkr">
「ふぅ……」

{	SoundPlay("@xbgm05",0,450,true);}

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100390rkr">
「なんだろうなあ……」

{	St("C",700, @0,@0,"buロクローa_通常_shout");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100400rkr">
「新感覚レディースＡＶ！
　マブいチャンネーと年越し初日の中出し暴走！」

{	St("C",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100410rkr">
「うーん……上手く行くと思ったんだけど」

{	St("C",700, @0,@0,"buロクローa_通常_angry");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100420rkr">
「いまいちこう、しっくりこねぇ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2145);}

//◆ＳＥ：ドン！　扉開く。突き飛ばされるロクロー
	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_ドア開ける04");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@100,"bu似鳥_通常_shout");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100430wfn">
「どいて！」

{	CreateSE("SE02","se戦闘_打撃音02");
	Move("@StNameC/C*", 200, @50, @0, Axl1, false);
	DeleteAllSt(200,true);
	MusicStart("SE02",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buロクローa_通常_shout");
	Move("@StNameC/C*", 200, @80, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100440rkr">
「うおっ！」

{	St("C",700, @80,@40,"buロクローa_通常_angry");
	FadeT("@StNameC/C*",0,0,200,0,-40,AxlDxl,false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100450rkr">
「バッキャロー！　誰だあんた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_キラーン01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100460rkr">
「撮影で進入禁止――」

{	St("MR",700, @50,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100470nko">
「どいて」

{	St("C",700, @80,@0,"buロクローa_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-80, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100480rkr">
「だから、入るなって――」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100490nko">
「…………」

{	St("ML",700, @80,@0,"buロクローa_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100500rkr">
「な……！　ゴスロリ……！
　目つき悪い……！　リストカッター……」

{	St("ML",700, @0,@40,"buロクローa_通常_shout");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeT("@StNameML/ML*",0,0,200,0,-40,AxlDxl,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100510rkr">
「これだああああああッ！！」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100520nko">
「…………？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateTextureEX("絵背景名刺", 100, Center, Middle, "cg/obj/objロクロー名刺.png");
	Move("絵背景名刺", 0, @0, @100, null, true);

	Move("絵背景名刺", 300, @0, @-100, Dxl1, false);
	Fade("絵背景名刺", 300, 1000, null, true);

/*
	St("ML",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	FadeSt("ML",200,true);

*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100530rkr">
「すみません！　あの私、こういう者なんですが」

{	St("MR",700, @0,@0,"fuノーコa_カッター_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100540nko">
「じゃま」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//◆ＳＥ：シャキーン
	CreateSE("SE11","se戦闘_切断01");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	Wait(300);
	CreateSE("SE13","se戦闘_切断02");
	MusicStart("SE13",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100550rkr">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：パラパラパラ……
	CreateSE("SE01","se擬音_細切れ");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵背景名刺", 1000, 100, Axl1, "mosaic_01_00_0", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@50,"buロクローa_通常_shout");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100560rkr">
「嘘！？　名刺がバラバラ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);

	CreatePlainSP("揺用", 2005);
	St("C",700, @0,@0,"buロクローb_通常_shout");
	FadeSt("C",0,true);

//◆ＳＥ：ふぁさ
	CreateSE("SE01","se動作_布落とす");

	FadeDelete("絵フラッシュ白", 100, null, true);

	MusicStart("SE01",0,1200,0,1000,null,false);
	DrawDelete("揺用", 500, 100, Axl1, "zoom_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100570rkr">
「って服まで！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※北原メモ：→差分は作るのかな？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0146]
{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100580nko">
「そとにいって」

{	St("ML",700, @0,@0,"buロクローb_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100590rkr">
「え？　いやでも私全裸外１２月の夜――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("MR",700, @20,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);

//◆ＳＥ：カッターナイフ剥き出す
	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @-20, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100600nko">
「じゃま」

{	St("ML",700, @0,@50,"buロクローb_通常_cry");
	FadeT("@StNameML/ML*",200,0,200,0,-50,Dxl1,false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/21/400100610rkr">
「は……はひ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	SetVolumeEX("@xbgm*", 1500, 0, null);


	TextBoxDelete(150);
	Move("@StNameML/ML*", 500, @-60, @0, Axl1, false);
	DeleteAllSt(400,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2146);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//◆演出指定：ゆっくりとした呼吸・長く、緊張している感じ

////	St("C",700, @0,@0,"buノーコa_通常_normal");
////	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100620nko">
「――――、――――、――――、――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：ゆっくりとした呼吸・長く、緊張している感じ

////	St("C",700, @0,@0,"buノーコa_通常_normal");
////	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100630nko">
「――――、――――、――――、――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：コツ、コツ、足音が鳴り響く。
	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,1200,0,1000,null,false);
	SetVolume("SE01", 2500, 0, null);

	Wait(2500);

	CreateTextureEX("絵背景ノーコ側", 100, Center, Middle, "cg/bg/bg1103100スパコン館_店内_通常.jpg");
	Move("絵背景ノーコ側", 0, @0, @100, null, true);
	SetShade("絵背景ノーコ側", MIDEUM);
	Zoom("絵背景ノーコ側", 0, 2000, 2000, null, true);

	St2("L",700, @0,@80,"fuノーコa_通常_normal","cg2/",".png");
	Move("絵背景ノーコ側", 1000, @0, @-50, Dxl2, false);
	Fade("絵背景ノーコ側", 1000, 1000, Dxl2, false);
	Move("@StNameL/L*", 1000, @0, @-80, Dxl2, false);
	FadeSt("L",1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100640nko">
「やっと……おいつめた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0166]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100650wfn">
「ノーコ」

{	St2("L",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100660nko">
「かくご、できた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

	CreateTextureEX("絵背景似鳥側", 100, Center, Middle, "cg/bg/bg1103100スパコン館_店内_通常.jpg");
	Rotate("絵背景似鳥側", 0, @0, @180, @0, null,true);
	Move("絵背景似鳥側", 0, @200, @100, null, true);
	SetShade("絵背景似鳥側", MIDEUM);
	Zoom("絵背景似鳥側", 0, 2000, 2000, null, true);

	St("MR",700, @0,@80,"fu似鳥_通常_smile");
	Move("絵背景似鳥側", 1000, @0, @-50, Dxl2, false);
	Fade("絵背景似鳥側", 1000, 1000, Dxl2, false);
	Move("@StNameMR/MR*", 1000, @0, @-80, Dxl2, false);
	FadeSt("MR",1000,true);

	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100670wfn">
「ああ」

{	SoundPlay("@xbgm28",0,450,true);
	St("MR",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100680wfn">
「ごめんな。ノーコ」

{	St("MR",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100690wfn">
「オレ……全然気付かなかった」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100700wfn">
「おまえ、ずっとこの日を待ってたんだよな？」

{	St("MR",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100710wfn">
「現実のものになりたい――」

{	St("MR",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100720wfn">
「――その願いが、やっと、叶った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St2("L",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	Fade("絵背景似鳥側", 300, 0, null, false);
	DeleteAllSt(300,false);
	FadeSt("L",300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100730nko">
「うん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100740nko">
「アザナエルはほんもの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100750nko">
「シリンダをまわしてうつ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100760nko">
「ねがいがかなうか、しか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St2("L",700, @0,@0,"fuノーコa_通常_smile","cg2/",".png");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100770nko">
「わたしは、ねがいがかなった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100780nko">
「わたしのほんとうのねがいは、これ」

{	St("L",700, @150,@0,"fuノーコa_幽霊_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100790nko">
「にとりにさわれて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100800nko">
「みんなにもみられる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100810nko">
「きおくれすることがない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2147);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("L",700, @150,@0,"fuノーコa_幽霊_smile");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100820nko">
「げんじつのそんざいになること」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("MR",700, @0,@0,"fu似鳥_通常_sigh");
	DeleteAllSt(300,false);
	Fade("絵背景似鳥側", 300, 1000, null, false);
	FadeSt("MR",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100830wfn">
「気付いてやれなくて、ごめん」

{	St("MR",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100840wfn">
「そうだよな」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100850wfn">
「散々待たされて、あの答えはないよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St2("L",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	Fade("絵背景似鳥側", 300, 0, null, false);
	DeleteAllSt(300,false);
	FadeSt("L",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100860nko">
「うん」

{	St2("L",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100870nko">
「だから――にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100880nko">
「ほんとうのこたえを、ちょうだい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	St("MR",700, @0,@0,"fu似鳥_通常_hard");
	DeleteAllSt(300,false);
	Fade("絵背景似鳥側", 300, 1000, null, false);
	FadeSt("MR",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100890wfn">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St2("L",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	Fade("絵背景似鳥側", 300, 0, null, false);
	DeleteAllSt(300,false);
	FadeSt("L",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100900nko">
「にとり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("MR",700, @0,@0,"fu似鳥_通常_smile");
	DeleteAllSt(300,false);
	Fade("絵背景似鳥側", 300, 1000, null, false);
	FadeSt("MR",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100910wfn">
「――うん」

{	St("MR",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100920wfn">
「オレ――ノーコが……」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100930wfn">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	SetVolumeEX("@xbgm*", 2000, 0, null);

	Delete("絵背景ノーコ側");
	Fade("絵背景似鳥側", 500, 0, null, false);
	DeleteAllSt(500,true);
	Delete("絵背景似鳥側");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100940nko">
「…………？」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100950wfn">
「……だめ、だ」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100960wfn">
「私、やっぱり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400100970wfn">
「ノーコちゃんを、騙せない……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100980nko">
「あなた……もしかして……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400100990nko">
「にとりじゃない？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400101000wfn">
「ごめんなさい、私――」

{	St2("ML",700, @0,@0,"buノーコa_通常_mad","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101010nko">
「にがさない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//◆演出指示：カッターナイフ伸ばす
	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(300);

	St("MR",700, @-50,@0,"fu似鳥_通常_worry");
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400101020wfn">
「きゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("C",700, @40,@0,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 500, @-40, @0, Dxl1, false);

//◆ＳＥ：キリキリ　ノーコ、手にカッターナイフを
	CreateSE("SE01","se戦闘_カッター_刃出す04単発b");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeSt("C",300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101030nko">
「こころをもてあそぶ、ふとどきもの」

{	St("C",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101040nko">
「ゆるさない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	Move("@StNameC/C*", 200, @80, @0, Dxl3, false);
	Zoom("@StNameC/C*", 200, 2000, 2000, Axl2, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵フラッシュ赤", 5000, "#FF0000");
	Wait(30);

//◆ＥＶ："ev/ev2140ノーコ似鳥を刺す.txt"
	CreateTextureEX("絵背景100", 120, Center, Middle, "cg/ev/ev2140ノーコ似鳥を刺すa.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	SetBlur("絵背景100", true, 2, 500, 80, false);

//◆ＳＥ：グサッ
	CreateSE("SE01","se動作_刺す01");
	MusicStart("SE01",0,1500,0,1000,null,false);

	FadeDelete("絵フラッシュ赤", 300, null, false);
	Zoom("絵背景100", 1500, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0244]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/400101050wfn">
「あ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101060nko">
「にとりをかたるものに、しを」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEXadd("絵色白", 1500, "#FFFFFF");
	Fade("絵色白", 500, 1000, null, true);

	Delete("絵背景100");

	CreateTextureEX("絵背景101", 121, Center, Middle, "cg/ev/ev2140ノーコ似鳥を刺すb.jpg");
	CreateTextureEX("絵背景101L", 121, -1000, -124, "cg/ev/l/ev2140ノーコ似鳥を刺すb_l.jpg");
	Fade("絵背景101", 0, 1000, null, true);

//◆ＳＥ：しゅう……と煙が抜けて行く
	CreateSE("SE01","se擬音_煙抜ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);
	Fade("絵色白", 2500, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101070wfu">
「ああ……ああああああ……」

{	Fade("絵背景101L", 500, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101080nko">
「たぬき……？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101090wfu">
「ごめん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2148);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101100wfu">
「ごめんなさい……ノーコちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Delete("絵背景101");
	Fade("絵背景101L", 500, 0, null, true);
	Delete("絵色白");
	Delete("絵背景100");

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,800,0,1000,null,false);

	Wait(800);


	SoundPlay("@xbgm26",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101110nko">
「え？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101120nko">
「このこえは――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101130wfu">
「やっぱり、私は、ノーコちゃんに、自分を重ねて」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101140wfu">
「どうしても、仲良くなって欲しくて、でも……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101150wfu">
「あなたの、好きって気持ちには……
　ウソをつけませんでした……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101160wfu">
「ごめんなさい……ほんとうに……ごめんなさい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101170nko">
「すきってきもちに……うそはつけない……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101180nko">
「にとりのふりは、ひどい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101190nko">
「これは、じごうじとく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101200nko">
「でも――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101210nko">
「フウリ、かわいそう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101220nko">
「すきなひと、しんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101230wfu">
「え――」

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101240nko">
「……てがみ、みつけた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101250nko">
「よんだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101260nko">
「おだかんた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101270nko">
「しんだって」

{
	DeleteAllSt(200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101280wfu">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101290nko">
「くるしいの、わかる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101300nko">
「めをそらしたいの、わかる」

{
	DeleteAllSt(200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101310wfu">
「違う……あの……訃……報は……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101320wfu">
「なにかの…………まち……がい……で…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101330wfu">
「です……よね？　そう、ですよね……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101340wfu">
「私は、貫太さんに……貫太さんに、告白して……」

{
	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101350nko">
「そう……わたしはしってる。
　なにかの、まちがい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101360nko">
「くるしいから、めをつぶる。
　わたしのねがいが、しんじつになる」

{
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101370nko">
「にとりのきょぜつは……まちがいで……
　ほんしんは、ちがうはず」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101380nko">
「だから、あいのあかしに……
　わたしは、にとりを……」

{
	DeleteAllSt(200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101390wfu">
「ノーコ……ちゃん……？」

{
	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101400nko">
「だいじょうぶだよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101410nko">
「わたしも、すぐに、いくから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101420nko">
「にとりと、いっしょに、いくから」

{
	St2("C",700, @0,@0,"fuノーコa_通常_smile","cg2/",".png");
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101430nko">
「ふふ、ふふふ……」

{
	St("C",700, @0,@0,"fuノーコa_幽霊_smile");
	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101440nko">
「ふふふふふふふふふふふふふ……」

{
	DeleteAllSt(200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/400101450wfu">
「ノーコ……ちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1000, 0, null);

{	ClockPass(2149);}

	Fade("絵背景101", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆音声指示：遠くから
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/21/400101460ujr">
「わうわうわうわう！」

//◆音声指示：遠くから
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/21/400101470fjh">
「おいおい、ちょっと待てよ！」

{	St("C",700, @30,@0,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101480nko">
「……じゃまもの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101490nko">
「きいたことのあるこえ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101500nko">
「しかたがない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101510nko">
「そらからいく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//ノーコは呟いて――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @50, @-50, Dxl1, false);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

//◆場所：秋葉原_上空
	CreateTextureEX("絵背景100", 100, Center, -512, "cg/bg/bg2401100空_上空_通常.jpg");
	CreateTextureEX("絵背景200", 100, Center, 512, "cg/bu/l/buノーコa_通常_normal_x01.png");
	Fade("絵背景100", 0, 1000, null, true);

//◆ＳＥ：カッターナイフ振るう
	CreateSE("SE02","se戦闘_風切り音02");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(400);

	Move("絵背景100", 3000, @0, 0, Dxl2, false);

//◆ＳＥ：パリン！
	CreateSE("SE03","se戦闘_ガラス割れる01");
	MusicStart("SE03",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_04_01_1", true);

	Move("絵背景200", 2000, @0, 40, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, true);


	CreateSE("SE11","se環境_風_l");
	MusicStart("SE11",300,700,0,1000,null,true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101520nko">
「にとり――にとり――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/400101530nko">
「ほんもののにとりがいそうなばしょは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolume("SE*", 1000, 0, null);

	CreateColorEX("絵色黒", 20000, "#000000");

	Move("絵背景200", 1000, @0, -1000, Axl2, false);
	Fade("絵色黒", 500, 1000, null, true);

	Wait(1500);

	EndScene();
}
