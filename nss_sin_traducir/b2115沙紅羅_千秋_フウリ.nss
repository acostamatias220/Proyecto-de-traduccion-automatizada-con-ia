
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2115沙紅羅_千秋_フウリ.nss_MAIN
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
		$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="千秋"){
		$GameName = "b2120千秋.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	}


}

scene b2115沙紅羅_千秋_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="910">
////////////header////////////
//file name "b2115沙紅羅_千秋_フウリ.nss"
//title "ドッペルゲンガー"
//previous "2111沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"
//next "千秋" "b2120千秋.nss"
//next "フウリ" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2115);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	Delete("上背景");

//あきゅん「β演出：音楽つなぎ確認」

	CreateSE("SE01","seガヤ_歓声_l");
	MusicStart("SE01",1500,700,0,1000,null,true);

//あきゅん「修正指示：大食いに参加していないメンバーと切り替えるときにテンポ悪いので全体調整お願いします」
//あきゅん「修正指示：非参加組もセット上で、大きめ背景を使用して端に立っている感じに」
//★ wam井野 2030沙紅羅_フウリ.nss 前後を参考に修正してみましたがいかがでしょうか？ 10/11/19

	CreateTextureEX("絵背景裏方", 100, -800, -320, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);
	Request("@StNameMR/MR*", Smoothing);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100010skr">
「頑張れッ！　その調子だッ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100020skr">
「もう少し！　もう少――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100030skr">
「おい弟子！　おまえもちょっとは応援――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100040kit">
「夢……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100050skr">
「ん？　どした弟子よ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100060kit">
「フウリさんは、夢を叶えるためにここにいる……」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100070kit">
「オレは、夢が叶ったおかげで、こうやっていられる」

{	SetVolumeEX("SE*", 3000, 0, null);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100080kit">
「だったら――逃げるわけにはいかない――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100090skr">
「弟子？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	MusicStart("@xbgm23",0,450,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100100kit">
「男なら……」

{
	DeleteAllSt(200,true);

	CreateSE("SE01","se擬音_ギャグ_ドカーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu千秋_頭突き_rage2");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100110kit">
「男なら、ただ黙ってみてられるかあッ！」

{
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100120skr">
「あ……そういやおまえ、男だったな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100130kit">
「これ、リレー形式だろ？
　ってことは次はオレの出番？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100140skr">
「そうだけど……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100150kit">
「いよっしゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameC/C*", 200, -20, @0, Axl1, false);
	DeleteAllSt(200,true);

	Move("絵背景裏方", 200, -800, @0, Axl1, false);
	Fade("絵背景裏方", 200, 0, null, false);

	CreateTextureEX("絵背景20", 20, -512, -120, "cg/bg/m/bg1202300ＵＰ＋_セット上_炎上_m.jpg");
	Fade("絵背景20", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	St("R",700, @100,@0,"bu千秋_気合い_shout");
	Move("@StNameR/R*", 300, @-100, @0, Dxl2, false);
	FadeSt("R",100,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100160kit">
「フウリさん、代わって！」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100170wfu">
「へ……アッキーちゃん……？」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100180kit">
「後は、オレに任せるんだッ！！」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100190wfu">
「でも、私は……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 90, Center, -120, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]


{	St("C",19010, @0,@0,"fu千秋_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100200kit">
「大丈夫！　お前はひとりで戦ってるんじゃない！！」

{	St("C",19010, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100210kit">
「オレを……仲間を、信じろ！」

{
	Move("@StNameC/C*", 300, @50, @0, Axl2, false);
	DeleteAllSt(200,true);

//	SetVolumeEX("@x*", 2000, 300, NULL);

	Move("絵背景100", 300, @50, @0, Dxl2, false);
	Fade("絵背景100", 200, 1000, null, false);

	St("C",700, @-50,@0,"fuフウリ_胸手_worry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100220wfu">
「アッキーちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備

	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//	TextBoxDelete(150);

/*
	SceneOut(19500, 300, "slide_01_01_0");
	DeleteAllSt(0,false);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：スピーカー越し
{

//	St("R",700, @50,@0,"buミリＰb_ショータイム_shout");
//	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
//	FadeSt("R",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100230mrp">
『なんとここで、フウリちゃんの動きが止まった！？』

{
//アウト
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, true);

	St("C",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100240wbu">
「す……すみません……」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100250wbu">
「私はもう……ギブアップ……です」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);


/*
	TextBoxDelete(150);
	SceneOut(19500, 300, "slide_01_01_0");
	DeleteAllSt(0,false);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");
*/

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備

	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Move("絵マスク/絵演立絵2", 0, @0, @41, null, true);
	Move("絵マスク/絵演立絵3", 0, @0, @41, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]

//◆音声指示：スピーカー越し
{
//	St("R",700, @50,@0,"buミリＰb_ショータイム_pinch");
//	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
//	FadeSt("R",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100260mrp">
『ギブアップ！　ギブアップ！』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100270mrp">
『さあ、大変なことになってきたわ！』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);
//	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100280mrp">
『秋葉原チーム！　最後のチャレンジャーは――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2116);}

	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, true);

//アウト
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("C",19010, @0,@0,"bu千秋_頭突き_rage2");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100290kit">
「オレだっ！」

{
	DeleteAllSt(200,true);
	St("MR",700, @100,@0,"bu沙紅羅_通常_rage");
	Move("@StNameMR/MR*", 300, @-100, @0, Dxl2, false);
	FadeSt("MR",100,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100300skr">
「よっしゃ！　やったれ！」


//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
//	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100310mrp">
『秋葉原のライブハウス「スーパーノヴァ」でアルバイト中、アッキーちゃんッッ！』


//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100320mrp">
『その小さな身体に食べ物を詰め込んで、見事に逃げ切ることが出来るのかしらッ！？』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	TextBoxDelete(150);
	SceneOut(19500, 300, "slide_01_01_0");
	DeleteAllSt(0,false);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");
*/

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_shout.png");
	Request("絵マスク/絵演立絵2", Smoothing);


	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,false);

	SetVolumeEX("@x*", 2000, 0, NULL);


	Fade("絵背景100", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


{	MusicStart("@xbgm03",0,450,0,1000,null,true);
	St("C",700, @0,@0,"fu千秋_気合い_hard");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100330kit">
「うおおおおおおおおおおお！！」

{	St("C",700, @0,@0,"fu千秋_通常_angry");
	FadeSt("C",200,true);
	Wait(100);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100340kit">
「はぐ！　んぐ！　んむ！　んぐ！　あむあむあむ！」

{	St("C",700, @0,@0,"fu千秋_朗らか_shy");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100350kit">
「んじゅるっ！　んぐっ！　んむっ！　ん、んんん――」


//◆音声指示：スピーカー越し
{
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//	St("R",700, @50,@0,"buミリＰb_ショータイム_shout");
//	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
//	FadeSt("R",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100360mrp">
『食べる！　食べる！　食べる！』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);

//	St("R",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("R",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100370mrp">
『前のふたりほどじゃないけど、フウリちゃんが食べられなかったコンニャクを、順調に消化していくッ！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);

//	DeleteAllSt(200,false);

//	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, true);

/*
	TextBoxDelete(150);
	SceneOut(19500, 300, "slide_01_01_0");
	DeleteAllSt(0,false);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100380wfu">
「アッキーちゃん……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100390skr">
「男らしいとこ、あるじゃねぇか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100400wfu">
「え？　男……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	TextBoxDelete(150);
	SceneOut(19500, 300, "slide_01_01_0");
	DeleteAllSt(0,false);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");
*/


//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_shout.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	Wait(32);

	DeleteAllSt(200,false);

	Move("絵背景裏方", 200, -800, @0, Axl1, false);
	Fade("絵背景裏方", 200, 0, null, false);
//	Fade("絵背景100", 200, 1000, null, true);

	Fade("絵背景20", 0, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	St("C",700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100410kit">
「はむっ！　んむっ！　んぐんぐんぐ――ぷはぁっ！」


{	St("C",700, @0,@50,"fu千秋_気合い_hard");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",100,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100420kit">
「いよっしゃ！　完食！」


//◆音声指示：スピーカー越し
{
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

//	DeleteAllSt(200,false);
//	St("R",700, @0,@0,"buミリＰb_ショータイム_shout");
//	FadeSt("R",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100430mrp">
『アッキー選手！
　見事におでん缶を食べきった！』


//◆音声指示：スピーカー越し
{

	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);

//	St("R",700, @0,@0,"buミリＰb_通常_shout");
//	Move("@StNameR/R*", 300, @-150, @0, Dxl2, false);
//	FadeSt("R",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100440mrp">
『しかし、コレで番組が終わったわけじゃないわよ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//アウト
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);


//あきゅん「修正指示：以下の流れはセットの外でやっている感じに」
//★ wam井野 袖の方に修正いたしました。10/11/19


	CreateTextureSP("絵背景30", 30, 0, 0, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Move("絵背景30", 0, @-850, @-500, null, true);
	Wait(32);

	Fade("絵背景30", 0, 1000, null, true);
	Move("絵背景30", 500, @-50, @0, Dxl2, false);
	Fade("絵背景100", 200, 0, null, true);

	St("R",700, @50,@0,"buＡＤ_通常_shock");
	Move("@StNameR/R*", 200, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100450adi">
「あの……ホントにやるんですか？」

//◆音声指示：小声

{
	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buミリＰb_ショータイム_pinch");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100460mrp">
「今更なに言ってんの！？」

//◆音声指示：小声

{
	St("ML",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("ML",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100470mrp">
「大丈夫、あの小さい身体の女の子でしょ。
　結構引っ張れるわ！」

{
	DeleteAllSt(200,false);
	St("R",700, @00,@0,"buＡＤ_通常_sad");
	FadeSt("R",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100480adi">
「でももしかしたら、っていうかほぼ確実に、若原Ｄ入院の原因――」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰb_通常_sad");
	FadeSt("ML",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100490mrp">
「ん？　なんの話？」


{
	DeleteAllSt(200,false);
	St("R",700, @00,@0,"buＡＤ_通常_shock");
	FadeSt("R",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100500adi">
「い、いえ……何でもありません！」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("ML",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100510mrp">
「ほら、早く支度なさい！」

{
	DeleteAllSt(200,false);
	St("R",700, @00,@0,"buＡＤ_通常_shock");
	FadeSt("R",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100520adi">
「は、はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2117);}

	TextBoxDelete(150);



/*
	SceneOut(19500, 300, "slide_01_01_0");
	SceneIn(300, "slide_01_01_1");
*/

//あきゅん「修正指示：ここでセットに戻る」
//★ wam井野 修正いたしました。10/11/19

	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,false);
	Move("絵背景30", 500, @50, @0, Dxl2, false);
	Fade("絵背景30", 500, 0, null, true);


//	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


{	St("MR",700, @50,@0,"stＡＤ_通常_hard");
	Move("@StNameMR/MR*", 2000, @-50, @0, Dxl2, false);
	Shake("@StNameMR/MR*", 2000, 0, 10, 0, 0, 100, null, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100530adi">
「んしょ……んしょ……んしょ……」


{	St("MR",700, @0,@0,"stＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100540adi">
「――と！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@x*", 2000, 0, NULL);

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @0, @20, Dxl2, false);
	DeleteAllSt(200,false);

//★ wam井野 クリマンタワーの画像がなかったので単品の物を置きました。


//◆ＳＥ：どーん！
/*
	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景obj", 1500, Center, Middle, "cg/obj/objクリマン.png");
	Request("絵背景180", Smoothing);
	Zoom("絵背景obj", 0, 3000, 3000, null, true);
	Move("絵背景obj", 0, @0, @-100, null, true);


	Zoom("絵背景obj", 1000, 1500, 1500, Dxl1, false);
	Move("絵背景obj", 1000, @0, @100, Dxl1, false);
	Fade("絵背景obj", 500, 1000, null, true);

	Shake("絵背景obj", 500, 5, 15, 0, 0, 1000, Dxl1, false);
	Shake("@OnBG*", 500, 5, 15, 0, 0, 1000, Dxl1, false);

	Wait(2000);

	FadeDelete("絵背景obj", 500, null, true);
*/

	LcPro_b2115kurimantower();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]


//◆音声指示：スピーカー越し
{	St("C",700, @50,@0,"buミリＰb_通常_happy");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100550mrp">
『小さな身体の彼女の前に並べられたのは――』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100560mrp">
『巨大な、巨大なクリマンタワーッ！！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100570mrp">
『果たしてアッキー選手は、この巨大な山を崩すことが出来るのか！？』


{
	DeleteAllSt(200,false);

	Fade("絵背景100", 200, 1000, null, true);

	St("C",700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);
	Fade("絵背景20", 0, 1000, null, false);

}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100580kit">
「…………でけえな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, true);

	Move("絵背景20", 0, -256, @0, Dxl2, true);

//	Fade("絵背景100", 0, 0, null, false);




//マスク準備
	CreateTextureEX("スラッシュ", 1620, 0, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
//	CreateMaskAXLEX("絵マスク左", 6000, 0, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/fu/fu千秋_通常_pinch.png");
	CreateTextureEX("絵マスク左/絵演立絵2", 1530, @-150, @-300, "cg/fu/fu千秋_気合い_hard.png");
	Request("絵マスク左/絵演立絵*", Smoothing);

//動作準備
	Move("スラッシュ", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

{	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100590skr">
「おい弟子！　怖じ気づいてんじゃねーぞ！」

{
//イン動作
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク左/絵演立絵", 200, -100, -300, Dxl1, true);

//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100600kit">
「バカにすんなッ！！」

{
//スイッチ
	Fade("絵マスク左/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, Dxl1, true);

//	St("C",700, @0,@0,"bu千秋_気合い_hard");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100610kit">
「今宵のオレは男の中の、男！
　オレの生き様――見せてやるぜ！」

{

//アウト動作
	Move("スラッシュ", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("スラッシュ", 200, 0, null, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);


	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100620wfu">
「アッキーちゃん……かっこいいです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

//	Fade("絵背景100", 200, 1000, null, false);

	Move("絵背景裏方", 200, -800, @0, Axl1, false);
	Fade("絵背景裏方", 200, 0, null, false);


{	St("C",19010, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);
	Wait(800);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100630kit">
「いただきま――」

{	SoundPlay("@xbgm11",0,450,true);
	St("C",19010, @0,@0,"fu千秋_朗らか_shock");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 5, 10, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100640kit">
「ぶおえっ！」

{	St("C",19010, @0,@0,"fu千秋_通常_pain");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100650kit">
「ふがっ、ふげっ！
　げふっげふっげふっげふ――」

//※北原メモ：→千秋はクリマン挑戦専用の差分があるほうがいいかもね。カリオストロの城の飯食って倒れる時のルパンみたいな、紫色で、ほっぺ膨らんでる感じの差分。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2118);}

	TextBoxDelete(150);

// 窓準備
	CreateAXLWindowEX("左フウリ", "X",1500, 50,384, false);
	WindowAXLZoom("左フウリ", "X",0, 0, null, true);
	CreateTextureSP("左フウリ/絵背景", 1400, 0, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");
	SetShade("左フウリ/絵背景", HEAVY);
	Zoom("左フウリ/絵背景", 0, 2000, 2000, null, true);

// 左出し

	CreateTexture("左フウリ/フウリ", 1410, -240, 0, "cg/bu/buフウリ_通常_shock.png");
	SetAlias("左フウリ/フウリ","左フウリ/フウリ");
	WindowAXLZoom("左フウリ", "X",200, 1000, Dxl2, false);
	Move("左フウリ/フウリ", 300, -190, @0, null, true);

{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100660wfu">
「アッキーちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{
//左消し
	WindowAXLZoom("左フウリ", "X",300, 0, Dxl2, false);
	Fade("@左フウリ/*", 200, 0, Dxl2, true);
	Delete("@左フウリ*");

//◆演出指定：歪む

//★ wam井野 ラスタスクロールだとオカシイでしょうか？

	St("C",700, @0,@0,"fu千秋_通常_pain");
	Request("@StNameC/C*", Smoothing);
	DrawEffect("@StNameC/C*", 1000, "MiddleWave", 0, 20, AxlAuto);
	FadeSt("C",500,true);

	Wait(2000);


	CreatePlainSP("絵板写", 5000);
	Wait(16);
// 窓準備
	CreateAXLWindowEX("左沙紅羅", "X",1500, 590,384, false);
	WindowAXLZoom("左沙紅羅", "X",0, 0, null, true);
	CreateTextureSP("左沙紅羅/絵背景", 1400, 0, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");
	SetShade("左沙紅羅/絵背景", HEAVY);
	Zoom("左沙紅羅/絵背景", 0, 2000, 2000, null, true);
	CreateTexture("左沙紅羅/沙紅羅", 1410, 300, 0, "cg/bu/bu沙紅羅_頭かき_shock.png");
	Delete("絵板写");

// 右出し

	SetAlias("左沙紅羅/沙紅羅","左沙紅羅/沙紅羅");
	WindowAXLZoom("左沙紅羅", "X",200, 1000, Dxl2, false);
	Move("左沙紅羅/沙紅羅", 300, 250, @0, null, true);


//	St("C",700, @0,@0,"bu沙紅羅_頭かき_shock");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100670skr">
「え……なんだ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{

//右消し
	WindowAXLZoom("左沙紅羅", "X",300, 0, Dxl2, false);
	Fade("@左沙紅羅/*", 200, 0, Dxl2, true);
	Delete("@左沙紅羅*");
	WaitAction("@左沙紅羅", null);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
// 窓準備
	CreateAXLWindowEX("左フウリ", "X",1500, 50,384, false);
	WindowAXLZoom("左フウリ", "X",0, 0, null, true);
	CreateTextureSP("左フウリ/絵背景", 1400, 0, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");
	SetShade("左フウリ/絵背景", HEAVY);
	Zoom("左フウリ/絵背景", 0, 2000, 2000, null, true);
	CreateTexture("左フウリ/フウリ", 1410, -20, 0, "cg/bu/buフウリ_頬手_shock.png");
	Delete("絵板写");

// 左出し
	SetAlias("左フウリ/フウリ","左フウリ/フウリ");
	WindowAXLZoom("左フウリ", "X",200, 1000, Dxl2, false);
	Move("左フウリ/フウリ", 300, 30, @0, null, true);

//	St("C",700, @0,@0,"buフウリ_頬手_shock");
//	FadeSt("C",200,true);

}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160c]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100680wfu">
「アッキーちゃんが……歪んでる？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//左消し
	WindowAXLZoom("左フウリ", "X",300, 0, Dxl2, false);
	Fade("@左フウリ/*", 200, 0, Dxl2, true);
	Delete("@左フウリ*");

{	St("C",700, @0,@0,"fu千秋_通常_pinch");
	Move("@StNameC/C*", 1500, @0, @30, Dxl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0168]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100690kit">
「お、おえ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_shout.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_happy.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備

	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

{
//	DeleteAllSt(200,false);
//	St("R",700, @50,@0,"buミリＰb_ショータイム_shout");
//	Move("@StNameR/R*", 200, @-50, @0, Dxl2, false);
//	FadeSt("R",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0169a]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100700mrp">
『アッキーちゃん！
　リバースは退場よ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
//アウト
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, true);

	St("C",700, @0,@0,"fu千秋_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0169b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100710kit">
「ひぐ……う……う……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//	Fade("絵背景100", 200, 0, null, true);

	Fade("絵背景裏方", 200, 1000, null, false);
	Move("絵背景裏方", 200, -1024, @0, Dxl1, true);

/*
	SceneOut(19500, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");
*/

{	St("MR",700, @50,@0,"bu沙紅羅_通常_happy");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100720skr">
「よっしゃ！　良く踏みとどまった！」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100730wfu">
「がんばって、飲み込んで！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
//千秋準備
	CreateAXLWindowEX("横割り", "Y",1500, 50,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");
	SetShade("横割り/絵背景", HEAVY);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/千秋", 1410, 100, -320, "cg/fu/fu千秋_通常_pinch.png");
	Fade("横割り/千秋", 0, 1000, null, false);
	SetAlias("横割り/千秋","横割り/千秋");
	Delete("絵板写");

	Wait(32);

//千秋出し
	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);
	Shake("横割り/千秋", 1000, 0, 0, 30, 0, 200, null, false);

//◆音声指示：首を横に振る

//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100740kit">
「んん！　んんんん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Fade("@横割り/絵背景", 200, 0, Dxl2, false);
	Fade("@横割り/千秋", 200, 0, Dxl2, false);
	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, true);
	Delete("@横割り*");

	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100750wfu">
「アッキーちゃん……やっぱり、無理しなくても」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("MR",200,true);
	Request("@StNameMR/MR*", Smoothing);
	Wait(32);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173d]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100760skr">
「こら弟子！
　男らしいとこ見せるのは、こっからだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	SetVolumeEX("@x*", 1000, 0, NULL);

	SceneOut(5000, 150, "circle_03_00_0");

	Move("絵背景裏方", 0, -800, @0, Axl1, false);
	Fade("絵背景裏方", 0, 0, null, false);

	DeleteAllSt(0,false);

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	CreateTextureEX("絵背景400", 5500, center, -256, "cg/ef/ライトニング.png");
	Request("絵背景400", Smoothing);
	Zoom("絵背景400", 0, 100, 1000, null, true);
	SetBlur("絵背景400", true, 3, 500, 50, false);
	CreateColorEX("絵色100", 600, "Black");

	SetVertex("絵背景400", center, 1024);

	CreateSE("SE01","se擬音_ニュータイプ");
	MusicStart("SE01",0,700,0,1000,null,false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 200, null, false);
	Zoom("絵背景400", 100, 1500, 1300, Dxl1, false);
	Move("絵背景400", 100, 0, 256, Dxl1, false);
	Fade("絵背景400", 100, 1000, null, true);

	Shake("絵背景400", 500, 0, 3, 0, 0, 1000, null, false);

	Wait(100);

	Zoom("絵背景400", 100, 1000, 1, Dxl1, true);

	Fade("絵色100", 300, 200, null, true);
	Delete("絵色100");
	Delete("絵背景400");

	MusicStart("@xbgm05",0,450,0,1000,null,true);

	Fade("絵背景100", 0, 1000, null, true);

	SceneIn(150, "circle_03_00_1");


{	St("C",700, @0,@100,"fu千秋_通常_fear");
	Move("@StNameC/C*", 200, @0, @-100, Dxl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：「おとこらしい？」
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100770kit">
「ほほほ……はひひ？」

{	St("C",700, @0,@0,"fu千秋_朗らか_cry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100780kit">
「ひ……ひぐっ、ん……んん……ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	Move("絵マスク/絵演立絵2", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, false);
	Move("絵マスク/絵演立絵2", 200, 450, InBottom, Dxl1, true);

//	DeleteAllSt(200,true);
//	St("R",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("R",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182a]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100790mrp">
『アッキー選手！　すごい形相を浮かべながら――』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵2", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 0, null, true);

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu千秋_通常_pinch");
	Shake("@StNameC/C*", 2500, 10, 0, 0, 0, 500, null, false);
	Move("@StNameC/C*", 1500, @0, @50, Dxl2, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100800kit">
「んぐうううううううううう――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,2000,0,1000,null,true);

	Move("@StNameC/C*", 300, @0, @-20, Dxl2, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, null, false);
	Move("絵マスク/絵演立絵3", 200, 450, InBottom, Dxl1, true);

//	DeleteAllSt(200,true);
//	St("R",700, @0,@0,"buミリＰb_ショータイム_happy");
//	FadeSt("R",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182c]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100810mrp">
「飲み込んだ――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu千秋_頭突き_rage");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",100,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182d]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100820kit">
「い、い、いよっしゃあぁあぁあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	SetVolumeEX("@x*", 2000, 0, NULL);
	St("C",19010, @0,@0,"fu千秋_気合い_hard");
	FadeSt("C",200,true);
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);}




	SetFrequency("@xbgm05", 5000, 800, Dxl3);
	SetVolumeEX("@xbgm*", 5000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182e]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/150100830kit">
「ど、ドウだぁあッ……！
　おレの……イキ……様ェ…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：倒れる
//◆ＳＥ：ドサッ！

	SetVolumeEX("@xbgm*", 1000, 0, null);

	Move("@StNameC/C*", 1100, @0, @150, Axl2, false);
	Wait(800);
	DeleteAllSt(200,true);

	SetVolumeEX("SE10", 1000, 0, null);

	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景100", 300, 5, 15, 0, 0, 500, Dxl1, true);

	DeleteAllSt(0,false);


//マスク準備
	CreateTextureEX("スラッシュ", 1620, 0, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
//	CreateMaskAXLEX("絵マスク左", 6000, 0, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("スラッシュ", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

	Fade("絵背景100", 200, 0, null, true);

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/150100840skr">
「ゲ！　弟子！　ヤバイ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/150100850wfu">
「アッキーちゃん！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/150100860adi">
「あちゃあ……やっぱり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	CreateSE("SE10","seガヤ_ざわざわ_l");
	MusicStart("SE10",1000,700,0,1000,null,true);

	DeleteAllSt(200,false);


//イン動作
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク左/絵演立絵", 200, -100, middle, Dxl1, true);

//	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
//	FadeSt("C",200,true);
}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100870mrp">
『おっと、アッキー選手！
　満腹のため、呆気なくダウン――！？』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2119);}


	TextBoxDelete(150);


//あきゅん「修正指示：ノーコ登場の流れはメインルートを参考に調整をお願いします」
//★ wam井野 2110ノーコ.nss の終わりとあわせました。10/11/19

//	CreateColorSP("黒幕１", 15000, "BLACK");
//	Fade("黒幕１", 0, 1000, null, true);

//	SetVolumeEX("@x*", 10, 0, NULL);

//	Delete("絵マスク*");
//	Delete("絵マスク左/*");
//	Delete("スラッシュ");

//	DeleteSt("C",0,true);

//	CreateSE("SE01","seガヤ_ざわざわ_l");
//	MusicStart("SE01",3000,500,0,1000,null,true);




//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);

	SetVolumeEX("SE10", 1000, 0, null);


//アウト動作
	Move("スラッシュ", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("スラッシュ", 200, 0, null, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1202200ＵＰ＋_セット上_暗闇.jpg");
	Fade("絵背景", 2000, 1000, null, true);

	OnBG(10,"bg1202200ＵＰ＋_セット上_暗闇");
	FadeBG(0,true);

	SetVolumeEX("SE10", 1000, 0, null);

	Delete("絵背景*");

	Wait(500);

{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100880mrp">
「な……」

{	St("C",700, @0,@0,"buミリＰb_ショータイム_angry");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/150100890mrp">
「ちょっと照明！　何やって――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);

//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	FadeDelete("絵背景200" 1000, null,true);

	if($CharaName=="千秋"){

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	}else{
	}

	SetVolumeEX("@SE*", 300, 0, NULL);
	EndScene();
}
