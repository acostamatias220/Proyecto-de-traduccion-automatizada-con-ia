
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2235沙紅羅_似鳥.nss_MAIN
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
	$GameName = "c2240沙紅羅_恵那_似鳥.nss";
	//$GameCircle=false;

}

scene c2235沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="650">
////////////header////////////
//file name "c2235沙紅羅_似鳥.nss"
//title "百野殺駆"
//previous "c2233沙紅羅_似鳥_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "c2240沙紅羅_恵那_似鳥.nss"
//next "似鳥" "c2240沙紅羅_恵那_似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(2235);}

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	CreateSE("SE10", "se環境_風_l");
	MusicStart("SE10", 2000, 600, 0, 1000, null, true);
	SetVolume("@SE01", 2000, 0, null);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100010skr">
「ふぅ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100020skr">
「なんか、最後に見たときと随分違うような……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100030skr">
「でも……おっかしいなぁ。
　次に会うときは逮捕するって意気込んでたくせに――」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100040nki">
「オレなりの、『百野殺駆』か……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100050skr">
「ん？　似鳥？」

//◆ＳＥ：バタン！
{	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);
	St("MR",700, @150,@0,"bu貫太_通常_shout");
	DeleteAllSt(200,false);
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @-150, @0, Axl2, false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100060okt">
「ちょっと！」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100070skr">
「ん？」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100080okt">
「今ここに、フウリが来なかったかい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100090skr">
「フウリ？　いや」

{	St("MR",700, @0,@0,"bu貫太_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100100okt">
「じゃ、アザナエルは？」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100110nki">
「さっきそこに来た平次さんが……」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100120okt">
「平次って？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100130skr">
「モジャモジャのオッサン。警官」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu貫太_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100140okt">
「あ！　そうかッ！」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100150okt">
「そいつがフウリだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("C",701, @0,@0,"bu沙紅羅_通常_surprise");
	St("L",700, @0,@0,"bu似鳥_通常_shock");
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100160skr">
「「はあ？」」

////◆音声指示：同時
////【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100170nki">
//「はあ？」


</PRE>
	SetText();
	AddText(1,"「はあ？」","沙紅羅","c22/350100160skr",false,false,1000);
	AddText(2,"「はあ？」","似鳥戴斗","c22/350100170nki",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/350100180okt">
「失礼！」

//◆ＳＥ：バタン！
{	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);
	Move("@StNameMR/MR*", 300, @150, @0, Axl2, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100190skr">
「あのオッサン……頭大丈夫か？」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100200nki">
「かなりギリギリな気が」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100210skr">
「だよな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(2236);}

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 300, 0, null);

//◆ＳＥ：携帯電話鳴る

	CreateSE("携帯鳴る", "seメカ_携帯_メール着信_似鳥_l");
	MusicStart("携帯鳴る", 0, 600, 0, 1000, null, true);

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100220nki">
「ん……電話？」

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100230nki">
「半田明神から……？」

//あきゅん「修正指示：通話につなげるので電子音できってください」
//★inc櫻井　修正
{	CreateSE("電子音", "seメカ_携帯_電子音01");
	MusicStart("電子音", 0, 700, 0, 1000, null, false);
	SetVolume("携帯鳴る", 0, 0, null);}
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100240nki">
「はい、もしもし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}

	SoundPlay("@xbgm05", 0, 450, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//あきゅん「修正指示：音声のみで電話先出さない」
//★inc櫻井　修正
//◆演出指定：音量でかく
//◆音声指示：電話越し
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/350100250">
『姐さ――――――ん！！』
{WaitAddText();}<BR>

////◆音声指示：電話越し
////◆音声指示：同時
////【ブー】
//<voice name="ブー" class="ブー" src="voice/c22/350100260buu">
//『姐さ――――――ん！！』


</PRE>
	SetText();
	AddText(1,"『姐さ――――――ん！！』","みそ","c22/350100250mso",false,false,1000);
	AddText(2,"『姐さ――――――ん！！』","ブー","c22/350100260buu",true,true,1200);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	Shake("@StNameML/ML*", 200, 0, 15, 0, 0, 300, Dxl3, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100270nki">
「うおっ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100280skr">
「今の声――おい、ちょっと借りるぞ！」

{	St("C",700, @-50,@0,"bu沙紅羅_通常_hard");
	Move("@StNameC/C*", 200, @50, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100290skr">
「もしもし？」

{
//	SoundPlay("@xbgm07_noint", 0, 450, true);
	DeleteSt("C",200,false);}
//◆音声指示：電話越し
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/350100300mso">
『姐さ――――――ん！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：電話越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/350100310buu">
『た、助けてくださ――――い！』

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100320skr">
「ど、どうしたみそブー！？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/350100330mso">
『半田明神が……』

//◆音声指示：電話越し
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/350100340buu">
『オレたちのせいで、大変なことに……！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100350skr">
「大変って、なにが――？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【ブー】
<voice name="ブー" class="ブー" src="voice/c22/350100360buu">
『さっきノーコが襲ってきて、それで――』

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100370skr">
「ノーコが？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【みそ】
<voice name="みそ" class="みそ" src="voice/c22/350100380mso">
『とにかく、来て下さい！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100390skr">
「あー、もう！
　わーったよ、ったく」

//◆ＳＥ：ピッ
{
//	SetVolume("@xbgm*", 1000, 0, null);
	CreateSE("携帯切る", "seメカ_携帯_電子音01");
	MusicStart("携帯切る", 0, 1000, 0, 1000, null, false);
	DeleteAllSt(200,false);
	Wait(1000);
	St("ML",700, @-90,@0,"bu似鳥_通常_worry");
	Move("@StNameML/ML*", 200, @90, @0, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100400nki">
「なにかあったのか？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100410skr">
「いや、なんだかわかんねーけどよ。
　半田明神で、なんかトラブルがあったらしい」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100420nki">
「半田明神……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100430skr">
「んじゃ、また後で――」

{	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100440nki">
「待ってくれ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100450nki">
「ノーコが関係してるんだろ？」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100460skr">
「ん……
　まあ、そんなこと言ってたかもな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100470nki">
「だったら、オレにも責任がある」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100480skr">
「あんまり、無理しなくても――」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100490nki">
「なんていうか……終わった感じがしないんだ」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100500nki">
「ケジメをつけたい」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100510skr">
「……そうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100520skr">
「んじゃ、一緒に行くか」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100530nki">
「ああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆場所：半田明神_男坂

//あきゅん「修正指示：リアルに移動距離が長いので少し暗転中に間を」
//★inc櫻井　Waitを入れ、シーンインをまったりとさせる形で修正。

	SceneOut(20000, 1500, "blind_01_00_0");
	SetVolume("SE10", 1000, 0, null);

//◆時間：ジャンプ
{	ClockPass(2239);}

	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	CreateSE("歩く", "se動作_歩く2人_l");
	MusicStart("歩く", 1000, 500, 0, 1000, null,true);

	Wait(1500);

	CreateSE("SE10", "seガヤ_交通少_l");
	MusicStart("SE10", 800, 350, 0, 1000, null,true);

	CreateTextureSP("絵演背景", 100, 0, 0, "cg/bg/l/bg2601100電柱_見上げ_通常_l.jpg");
	Move("絵演背景", 20000, -1024, -588, null, false);

	SceneIn(1500, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100540nki">
「沙紅羅」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵演背景", 500, null, true);

{	St("ML",700, @90,@0,"bu沙紅羅_後ろ向き_normal");
	Move("@StNameML/ML*", 200, @-90, @0, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100550skr">
「ん？」

{	St("MR",700, @0,@0,"bu似鳥_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100560nki">
「なんか、色々世話になって、どうもありがとな」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100570skr">
「へっ！　なにも世話なんてしてねぇよ」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100580nki">
「オレが今こうしていられるのは、おまえのおかげだ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100590skr">
「……おいおい、言うなよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100600skr">
「アタシは不良でオチコボレの、出来損ない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/350100610nki">
「でも、胸を張って生きてる」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100620skr">
「そんなことは、ねぇよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/350100630skr">
「アタシだって、今も逃げてばっかり――」

{	SetVolume("歩く", 1000, 0, null);}
{	DeleteAllSt(200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/350100640fje">
「あ――――！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c22/350100650fje">
「そ――そこにいるのはッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
