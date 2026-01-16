
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2100沙紅羅_フウリ.nss_MAIN
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
		$GameName = "2110沙紅羅_フウリ.nss";
	}else{
		$GameName = "b2110沙紅羅_千秋_フウリ.nss";
	}

}

scene 2100沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="760">
////////////header////////////
//file name "2100沙紅羅_フウリ.nss"
//title "ＡＤ・オン・ステージ"
//previous "2050沙紅羅_似鳥_フウリ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome2" = true）	b2110沙紅羅_千秋_フウリ.nss
//next "フウリ"（"flkagome2" = true）	b2110沙紅羅_千秋_フウリ.nss

//next "沙紅羅" "2110沙紅羅_フウリ.nss"
//next "フウリ" "2110沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	SoundPlay("@xbgm16_noint",0,450,true);

	if($PreGameName=="2050沙紅羅_似鳥_フウリ.nss"){
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	ClockPass(2100);}

	Wait(300);



{	St("C",700, @0,@0,"fuフウリ_前のめり_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300010wfu">
「ではもう一度――いただきます！」

{	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300020wfu">
「あむあむ……」

{	St("C",700, @0,@0,"fuフウリ_頬手_other");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300030wfu">
「ぷはぁぁ……」

{	St("C",700, @0,@0,"fuフウリ_頬手_happy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300040wfu">
「ごちそうさまでしたー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE21","seガヤ_大歓声_l");
	MusicStart("SE21",300,1000,0,1000,null,false);
	Wait(300);
	SetVolume("SE21", 5000, 0, Axl2);

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 0, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, center, middle, "cg/bu/buＡＤ_通常_angry.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵*", 0, 700, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 499, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300050adi">
『改めてすごい！　
　フウリ選手、コマンドの牛丼も、一気です！』

//◆音声指示：スピーカー越し
{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300060adi">
『続いては――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵2", 200, 700, 200, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 0, null, true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}

{	ClockPass(2101);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300070wfu">
「あ！　プリーズのマダムさん！」

{	DeleteAllSt(200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/21/000300080e04">
「どうもこんばんは。
　フウリちゃん、元気になってよかったよかった」

//【マダム】
<voice name="マダム" class="その他女声" src="voice/21/000300090e04">
「プリーズ特製のクリームパスタ、美味しく召し上がれ」

{	St("C",700, @0,@0,"buフウリ_頬手_happy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300100wfu">
「はーい。いただきまーす！」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se擬音_ギャグ_ぷにょぷにょ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"fuフウリ_頬手_shy");
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300110wfu">
「ちゅるる……ちゅるるるる……」

{	St("C",700, @0,@0,"fuフウリ_頬手_other");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300120wfu">
「んふー！　おいしかったですー！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300130wfu">
「ごちそうさまでした」

{	DeleteAllSt(200,true);}
//【マダム】
<voice name="マダム" class="その他女声" src="voice/21/000300140e04">
「お粗末様でした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateSE("SE21","seガヤ_大歓声_l");
	MusicStart("SE21",300,1000,0,1000,null,false);
	Wait(300);
	SetVolume("SE21", 5000, 0, Axl2);

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 0, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, center, middle, "cg/bu/buＡＤ_通常_angry.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵*", 0, 700, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 499, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300150adi">
『なんということでしょう！
　やっぱり一口！』

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300160adi">
『秋葉原チームを阻むものは、もう何もないのか！？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2102);}


	TextBoxDelete(150);

	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵2", 200, 700, 200, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 0, null, true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

	DeleteAllSt(200,true);

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300170ktt">
「相変わらず飛ばしてるけど……
　料理の方、大丈夫なんでしょうか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300180skr">
「ダイジョブダイジョブ。
　さっきの休憩中に食い物補充してたし」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300190ktt">
「でも、あのペースじゃ――」

{	ClockPass(2103);}

{	DeleteSt("MR",200,true);
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @+100,@0,"buＡＤ_通常_angry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300200adi">
『ボール紙肉まん！』

{	St("C",700, @-100,@0,"buフウリ_頬手_smile");
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300210wfu">
「はむ、はむ」


{	ClockPass(2104);}

{	DeleteSt("MR",200,true);
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @+100,@0,"buＡＤ_通常_angry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300220adi">
『ドネルケバブサンド！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @-100,@0,"buフウリ_頬手_shy");
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300230wfu">
「あーん、んむんむごくり」

{	ClockPass(2105);}


{	DeleteSt("MR",200,true);
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @+100,@0,"buＡＤ_通常_angry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300240adi">
『チゲェネェサンドイッチ！』

{	St("C",700, @-100,@0,"buフウリ_頬手_other");
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300250wfu">
「うううーん！　デリシャスですー！」

//◆音声指示：スピーカー越し
{
	CreateSE("SE21","seガヤ_大歓声_l");
	MusicStart("SE21",300,1000,0,1000,null,false);
	Wait(300);
	SetVolume("SE21", 5000, 0, Axl2);	

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300260adi">
『な、なんという驚異的なペース！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300270adi">
『っていうか……あれ？
　さっきあんなに用意しておいたのに……もう？』

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300280ktt">
「番組、早く終わったらまずいし……
　これって、協力した方がいいんじゃないですか？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300290skr">
「協力って？　料理でもつくんのか？」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300300ktt">
「そんなことしても間に合いませんよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300310skr">
「じゃあどうすんだよ？
　言っとくけど、手抜きなんて許さねーからな！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300320skr">
「やらせ！　ダメ！　絶対！」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300330adi">
『<RUBY text="あまさきや">天先屋</RUBY>の納豆も一気に完食！！』

//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300340adi">
『すごい！　すごすぎるぞフウリ選手！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300350adi">
『ええと……次は……あとどのくらいあったっけ……？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300360adi">
『時間はまだ……うげ！　まずい！』


{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300370ktt">
「コレ、マイクに入っちゃまずいんじゃ……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300380skr">
「ま、今更色々手遅れなんじゃねーの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2106);}


	DeleteAllSt(200,true);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300390adi">
『え、ええと……かくなる上は、仕方ない！』

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300400adi">
『ここで一端大食い競争をストップ！』

{	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300410adi">
『ミリＰさんにカメラを戻して、キャラデザインの進捗を伺ってみましょう！』

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300420adi">
『ミリＰさ～ん！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300430skr">
「またアレやるのか……？」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300440ktt">
「背に腹は代えられないんでしょう」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300450adi">
『ミリＰさん、聞こえますか～？』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300460mrp">
『はぁあーい』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2107);}


	DeleteSt("C",200,true);

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 0, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, Center, Middle, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵1", 1530, center, middle, "cg/bu/buミリＰb_通常_happy.png");
	Request("絵マスク/絵演立絵1", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, 0, "cg/bu/buミリＰb_通常_sad.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, 0, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵3", Smoothing);

	CreateTextureSP("絵マスク/絵演立絵4", 1530, 0, 0, "cg/bu/bu似鳥_眼鏡上げ_mad.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵1", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

	Move("絵マスク枠", 500, 0, 0, Dxl3, false);
	Move("絵マスク", 500, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵1", 500, 1000, null, false);
	Move("絵マスク/絵演立絵1", 500, 450, 0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300470mrp">
『こちら控え室！
　今、似鳥君が一生懸命デザインをしてるところよーん』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300480mrp">
『それじゃ早速、似鳥君にお話を――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：スピーカー越し
	Move("絵マスク/絵演立絵1", 500, 862, @0, Dxl1, false);
	Move("絵マスク/絵演立絵4", 500, 412, @0, Dxl1, false);
	Move("絵マスク/絵演背景", 500, 400, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/21/000300490nki">
『ふんぐ！　んぐ……んぐぐぐぐぐ……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：スピーカー越し
	Move("絵マスク/絵演立絵1", 300, 450, @0, Dxl1, false);
	Move("絵マスク/絵演立絵4", 300, 0, @0, Dxl1, false);
	Move("絵マスク/絵演背景", 300, 0, @0, Dxl1, true);
	Fade("絵マスク/絵演立絵1", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120b]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300500mrp">
『さっきの没で闘争本能に火がついたのかしら？』

{	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300510mrp">
『集中して、アタシの声も聞こえないみたいね』

{	Fade("絵マスク/絵演立絵3", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵1", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300520mrp">
『それじゃあ、応援の方にお話を聞いてみましょう！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);



{	ClockPass(2108);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300530adi">
「…………ふぅ」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300540adi">
「ひとまず危機は去った……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300550adi">
「けど……もう、残ってるのがアレしか……」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300560adi">
「アレだけは出すわけには……若原Ｄの二の舞に……」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300570skr">
「アレ？　アレってなんだ？」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300580ktt">
「さあ。でも、なんかいかにもヤバそうな……」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300590adi">
「ああっ、もう！　何か――
　何か、秋葉原名物はないの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300600adi">
「もう９時で……お店も閉まってるし……
　今でも買える秋葉原名物……秋葉原……名物？」

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300610adi">
「ええいっ！　権堂朝美！　しっかりしなさい！」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300620adi">
「長年離れていたとはいえ、秋葉原は生まれ故郷でしょ！
　私がしっかりしないで、誰が――」

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300630adi">
「そうだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：走り出す
	Move("@StNameC/C*", 200, @-300, @0, Dxl1, false);
	DeleteSt("C",200,true);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300640wfu">
「あれ？　すいません、どこに――」

//◆音声指示：遠くから
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300650adi">
「買い物！」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300660wfu">
「でも、司会は……？」

//◆音声指示：遠くから
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/000300670adi">
「ミリＰさんにお願いして！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/000300680wfu">
「は……はぁ」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300690skr">
「なんか、大変だなあ」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/000300700ktt">
「ですね」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/000300710skr">
「でも、この時間でも買える秋葉原名物って……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2109);}

	DeleteAllSt(200,true);


//◆演出指定：ミヅハたちを隠すように

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	DrawTransition("絵背景100", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300720mrp">
『はいはーい！
　それじゃ一端ステージの方に……ん？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300730mrp">
『あら？　いなくなっちゃった？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_sad");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300740mrp">
『しょうがないわねー……』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300750mrp">
『それじゃ、アタシが再び全国ゆるキャラバン大食い選手権、リポートを再開しちゃうわよ～ん！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/000300760mrp">
『レッツゴー！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	EndScene();

}
