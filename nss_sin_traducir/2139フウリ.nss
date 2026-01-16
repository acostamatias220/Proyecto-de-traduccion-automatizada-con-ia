
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2139フウリ.nss_MAIN
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
	$GameName = "2140ノーコ_フウリ.nss";

}

scene 2139フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "2139フウリ.nss"
//title "それでも、信じてる"
//previous "2131フウリ.nss"
//previous "ab2133フウリ.nss"

////////////footer////////////
//next "フウリ" "2140ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原_ガード下_破壊
	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

{	ClockPass(2139);}

//嶋：フウリなので、背筋伸ばしてます
	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100010wfn">
「ふぅ……変身完了！」

{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100020wfn">
「でも、無事に変身できてるでしょうか？」

{	St("C",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100030wfn">
「記憶まで真似したいのですが、それには修行が……
　幻も見せられないし……」

//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100040wfn">
「太三郎様なら、ちょちょいのちょい……」

{	St("C",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100050wfn">
「とか、考えてる場合じゃないです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SoundPlay("@xbgm22",0,450,true);

	Move("@StNameC/C*", 200, @+300, @0, Dxl1, false);
	DeleteSt("C",200,true);

//	CreateMask("マスク１", 200, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
//	SetAlias("マスク１","マスク１");
	CreateMaskAXLEX("マスク１", 2000, 0, 0, "ciスラッシュ_05_01", false, "ciスラッシュ_05_01z");

	CreateTextureEX("マスク１/絵背景1000", 1000, -923, -350, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
	CreateTextureEX("マスク１/絵st100", 1000, 419, 0, "cg/bu/bu似鳥_背張る_shout.png");
	CreateTextureEX("マスク１/絵st200", 1000, 419, 0, "cg/bu/bu似鳥_背張る_hard.png");

	Move("マスク１/絵st100", 0, 478, 100, null, true);
	Move("マスク１", 0, 478, @0, null, true);
	Move("マスク１Line", 0, 478, @0, null, true);

{	St("ML",700, @+200,@0,"buノーコa_カッター_angry");
	Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/390100060nko">
「しね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_一歩");

	MusicStart("SE01",0,600,0,1100,null,false);
	Move("マスク１", 300, 0, @0, Dxl1, false);
	Move("マスク１Line", 300, 0, @0, Dxl1, false);
	Fade("マスク１Line", 300, 1000, null, false);

	Fade("マスク１/絵背景1000", 300,1000,null,true);
	Move("マスク１/絵st100", 300, 419, 0, Dxl1, false);
	Fade("マスク１/絵st100", 300,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100070wfn">
「待って！」

{	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/390100080nko">
「え――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("マスク１/絵st100", 300,0,Axl1,false);
	Fade("マスク１/絵st200", 300,1000,Dxl1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100090wfn">
「お……オレは、ここだ！」

{	St("ML",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("ML",200,true);}
//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/390100100nko">
「にとり！　みつけた――」

{	Fade("マスク１/絵st200", 300,0,Axl1,false);
	Fade("マスク１/絵st100", 300,1000,Dxl1,true);}
//【綿抜フウリ（似鳥戴斗）】
<voice name="綿抜フウリ（似鳥戴斗）" class="似鳥戴斗" src="voice/21/390100110wfn">
「捕まえられるなら、捕まえてみろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,600,0,1000,null,true);

	Move("マスク１", 300, 1024, @0, Dxl1, false);
	Move("マスク１Line", 300, 1024, @0, Dxl1, false);
	Move("マスク１/絵st100", 300, 1076, @0, Dxl1, false);
	Fade("マスク１/絵st100", 300, 0, null, true);
	Move("マスク１", 500, 800, @0, null, true);
	Delete("マスク１/絵*");
	Delete("マスク１");

	SetVolume("SE01", 600, 0, null);

	DeleteSt("ML",200,true);

	Wait(500);

//◆ＳＥ：ダッシュで逃げ出す

	EndScene();
}
