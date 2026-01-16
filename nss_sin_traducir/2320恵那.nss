
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2320恵那.nss_MAIN
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
	$GameName = "2330沙紅羅_千秋_恵那.nss";
	//$GameCircle=false;

}

scene 2320恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1390">
////////////header////////////
//file name "2320恵那.nss"
//title "解答編"
//previous "2320カゴメ5.nss"

////////////footer////////////
//next "恵那" "2330沙紅羅_千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(2320);}

	//FadeDelete("上背景", 0, null, true);

//定義
	Kagome_AllEffect_Set(3000);

//	CreateColorEXadd("絵色100", 15000, "WHITE");

//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 200, Axl1, true);

//動作
	Kagome_AllEffect_Start();

	Wait(2500);

//消去
	Kagome_AllEffect_Delete(2000);

	Wait(3000);

	CreateSE("SE01","se銃_落とす01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300010fje">
「…………」


　ぽとり――と恵那の手からアザナエルが落ちる。


//	St("C",700, @0,@0,"bu恵那_哀愁_shock");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300020fje">
「成功……した？」


//◆ＳＥ：ぱちぱち拍手

{	CreateSE("SE01","se動作_拍手02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
//	DeleteAllSt(200,true);
WaitKey(1000);
}
{	St("ML",700, @-50,@0,"bu双六a_通常_pride");
Move("@StNameML/ML*", 300, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300030ksr">
「おめでとう」

{SetVolume("SE01", 1000, 0, null);}

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300040fje">
「ってことはこれで、千秋も！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm04",3000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300050ksr">
「ん……知りたいか？」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300060ksr">
「知りたいなら、それなりの態度ってものが――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300070fje">
「……お願い」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300080fje">
「私の命は、どうなってもいい。
　でもそのままじゃ――死んでも死にきれないの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300090fje">
「千秋が生き返ったかどうか、確認をお願いします！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300100ksr">
「……やれやれ」



//◆ＳＥ：電話をかける
{
	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
WaitKey(1100);
	SetVolume("SE01", 10, 0, null);
WaitKey(1000);
}

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300110ksr">
「はい、双六です。
　あの、カゴメアソビの結果ですけど――」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300120ksr">
「はい、はい。あ、そうですか。
　へえ、そんなことに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2321);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300130ksr">
「え？　あ、そうですか？
　いえ、わかりました。問題ありません」

{	St("MR",700, @50,@0,"bu恵那_哀愁_fear");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300140fje">
「どうだったの！？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @-50,@0,"bu双六a_通常_normal");
Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300150ksr">
「ほらよ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300160fje">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteAllSt(200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　突き出された携帯電話に、恵那は躊躇する。


{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300170ksr">
「携帯、取れ」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300180ksr">
「双一親分が、お待ちかねだぜ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300190fje">
「双一って――河原屋双一？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300200fje">
「でも、双一はいないって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300210ksr">
「いいから、出てみろよ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300220fje">
「…………」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300230ksr">
「オラ、早く！」

{	DeleteAllSt(200,true);}
{	St("C",700, @50,@0,"bu恵那_哀愁_worry");
Move("@StNameC/C*", 1000, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300240fje">
「…………もしもし」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm24",1000,450,true);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/23/200300250ksi">
『富士見恵那だな』


{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300260fje">
「……河原屋、双一？」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300270fje">
「千秋は？　千秋は、どうなったの？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/23/200300280ksi">
『生き返った』

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300290fje">
「本当に！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2322);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/23/200300300ksi">
『今、バックギャモンで目を回してる』


{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300310fje">
「よ……よ……」

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300320fje">
「よかった……！」

{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{Move("@StNameC/C*", 200, @0, @50, Dxl1, false);
Shake("@StNameC/C*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
}
{	DeleteAllSt(200,true);}

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/23/200300330ksi">
『はは、見えるぞ。腰が抜けちまったか。
　カゴメアソビじゃ、あんなにいい度胸だったのにな』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/23/200300340ksi">
『まあ、撃てただけ親父よりはマシか……』

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300350fje">
「…………」

{	St("C",700, @0,@50,"bu恵那_哀愁_sad");
Move("@StNameC/C*", 500, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300360fje">
「……ねえ」

//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300370fje">
「あなたは、本当に河原屋双一なの？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/23/200300380ksi">
『ん？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300390fje">
「声がするからって、他人が成り代わった可能性が消えたワケじゃない」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300400fje">
「あなた……本当は偽物でしょ」


{	SetVolume("@xbgm*", 2000, 0, null);}


{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300410jbr">
『……あらら、気付いたデスカ？』


{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300420fje">
「…………ぇ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2323);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300430jbr">
『双六も言ってたデスネ。
　あなたの推理は半分アタリって』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300440jbr">
『確かにワタシは、双一と違うデス。
　双一の代役デスネ』

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300450fje">
「いやでも、その声……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300460fje">
「――ジャブルさん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300470jbr">
『ようやく気付いたか』

{	SoundPlay("@xbgm21",2000,450,true);}

//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300480jbr">
『そう。電話の相手――
　偽の河原屋双一の正体は、このジャブルだよ』

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300490fje">
「……なんのために、こんなことを？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300500jbr">
『河原屋組を、乗っ取るため――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300510jbr">
『姿さえ隠せば、オレはこの街を支配できる。
　こんな純粋な理由が他にあるか？』

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300520fje">
「そんなのは、わかってる」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300530fje">
「私が訊きたいのは、なんでわざわざアザナエルを盗んだりしたのかってこと！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300540fje">
「アレがこの世に出なければ、こんな騒動起こらずに済んだ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2324);}

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300550jbr">
『その代わり、脳内彼女の恋が叶うことはなかった』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300560jbr">
『失われた同人誌が返ってくることもなかった』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300570jbr">
『フウリが死に別れた恋人への想いに決着をつけることもなかった』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300580jbr">
『誰かがなにかを得るために、なにかを失う者がいる』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300590jbr">
『禍福はあざなえる縄のごとし――それが世の理だ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300600fje">
「そういうことを言ってるんじゃないの！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300610fje">
「どうして、アザナエルを使う必要があったの！？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300620fje">
「あなたの本当の望みはどこに！？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300630jbr">
『……河原屋双一のためだ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300640fje">
「双一？　って、もういないんじゃ――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300650jbr">
『そろそろ時間だ。
　双六に代わってくれ』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300660fje">
「でも――」

{	SetVolume("@xbgm*", 2000, 0, null);
}
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/200300670jbr">
『知りたいんだったら自分で推理するんだな――名探偵』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300680fje">
「…………っ！」




{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300690fje">
「――双六。代われって」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300700ksr">
「ああ、アリガトよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2325);}

{	DeleteAllSt(200,true);}

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
	SetShade("絵背景", MEDIUM);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]

{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300710fje">
（やっぱり、私の推理当たってたじゃない）

{	St("C",19700, @0,@0,"fu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300720fje">
（でも……おかしいわ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300730fje">
（双六もジャブルさんも、私の推理が「半分だけ」当たったって言ってた）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300740fje">
（もう半分って、いったい――？）


{	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);}

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300750ksr">
「あぁ！？　本気で言ってんのか？」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300760ksr">
「……ああ、わかった。わかったよ」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300770ksr">
「おまえを信じる。信じるってば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300780ksr">
「……ったく。
　他人事だと思って、あのインド人」



{	DeleteAllSt(200,false);}

{	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300790fje">
「なにか嫌なニュース？」

{	SoundPlay("@xbgm31",2000,450,true);}

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300800ksr">
「ああ、バッドニュースだ」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300810ksr">
「悪いけどな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2326);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300820fje">
「な……なによ」

{	DeleteAllSt(200,false);}
{	St("C",700, @-50,@0,"bu双六a_通常_normal");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300830ksr">
「いや、動くなよ」

{	CreateSE("SE01","se擬音_ロープきしむ");
	MusicStart("SE01",0,1000,0,1000,null,false);
}
{	DeleteAllSt(200,true);}
//	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
//	FadeSt("MR",200,true);}
{	SetVolume("SE*", 3000, 0, null);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300840fje">
「嫌よ！　ちょっと！　離して――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateTextureEX("絵背景al", 1002, -1024, 0, "cg/ev/l/ev2320恵那双六にレイプ未遂a_l.jpg");
	Fade("絵背景al", 200, 1000, null, true);
	//Delete("@OnBG*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
　河原屋双六は、慣れた様子で両手を縛る。

{	CreateSE("SE01","se動作_着替え");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	SetVolume("SE01", 3000, 0, null);}
　恵那は身を捩るが、縛めを解くほどの力はない。

//	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300850fje">
「な……なに、するの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("絵背景al", 3500, -374, @0, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	DeleteAllSt(200,false);}
//	St("ML",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300860ksr">
「バッドニュース。ジャブルからの命令」

//	St("ML",700, @0,@0,"bu双六a_通常_pride");
//	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300870ksr">
「おまえ、犯すわ」

//	DeleteAllSt(200,false);}
//	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300880fje">
「え……」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2327);}

	CreateSE("SE01","se動作_着替え");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
//	DeleteAllSt(200,true);



//◆ＥＶ："ev/ev2320恵那双六にレイプ未遂.txt" 差分Ａ

	CreateTextureSP("絵背景a", 1002, Center, Middle, "cg/ev/ev2320恵那双六にレイプ未遂a.jpg");
	Zoom("絵背景a", 0, 2000, 2000, null, true);
	SetBlur("絵背景a", true, 3, 500, 50, false);

	Zoom("絵背景a", 200, 1000, 1000, null, false);
	FadeDelete("絵背景al", 200, null, true);

	SetVolume("@SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300890fje">
「いやあああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300900ksr">
「お、かわいい乳してんじゃねぇか。
　綺麗なブラジャーしてさ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300910fje">
「やめなさいっ！　やめなさいって！！」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300920ksr">
「デートでもする気だったのか？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300930fje">
「うううっ、やめて！　バカ！
　離せ！　離せ！　離してって――」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300940ksr">
「黙れ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：殴る
	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);
Wait(400);

//◆ＥＶ："ev/ev2320恵那双六にレイプ未遂.txt" 差分Ｂ

	CreateColorEX("絵色", 5000, "#FFFFFF");
	Fade("絵色", 0, 1000, null, true);

	CreateTextureSP("絵背景b", 1001, Center, Middle, "cg/ev/ev2320恵那双六にレイプ未遂b.jpg");
	FadeDelete("絵背景a", 0, null, false);

	FadeDelete("絵色", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300950fje">
「――――ッ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300960fje">
「――――かはっ、く――く――」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200300970ksr">
「そうそう。そうやって大人しくしてりゃいいんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300980fje">
「やめ……やめてよ……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200300990fje">
「なんで？　なんで……こんな……」


//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301000ksr">
「恨むんなら、オヤジを恨め」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301010fje">
「え……父さん……を？」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301020ksr">
「１０年前、てめぇのオヤジがカゴメアソビを成功させてたら、おまえはこんな目に遭わなかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2328);}

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301030fje">
「あなたたちは……あなたたちは……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301040fje">
「母さんを、殺したの？」



//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301050ksr">
「まさか！　殺す？　オレたちが？
　そんなわけないだろう？」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301060ksr">
「おまえが探偵になって探し当てようとしているような、事件の真相なんてものは、どこにもない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301070ksr">
「大げさなトリックも、目を見張るような事件も、ない」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301080ksr">
「仕事に夢中になって、家庭を顧みなくなった男と――
　寂しさの余り浮気に走り、家庭に興味を失った女――」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301090ksr">
「あったのは、それだけだよ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301100fje">
「うそ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	CreateTextureEX("絵背景bM", 1001, 0, 0, "cg/ev/m/ev2320恵那双六にレイプ未遂b_m.jpg");//1536x864
	Move("絵背景bM", 6000, -512, -72, Dxl1, false);
	Fade("絵背景bM", 500, 1000, null, false);
}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301110ksr">
「茫然自失のアイツに、オレは言った」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301120ksr">
「――アザナエルを使えば、女を取り戻すことが出来る」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301130ksr">
「だが、アイツはそれを最後の最後で断った」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301140ksr">
「――もし万が一、カゴメアソビに失敗すれば、ふたりの娘の面倒をみるヤツがいなくなる」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301150ksr">
「そう言って、アイツは転属願いを出した」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301160ksr">
「家族のため――おまえたち、姉妹のためにな」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301170fje">
「私たちのため……」


//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301180ksr">
「もしあそこでカゴメアソビをしていたのなら、オレたちはアイツに用事なんてない」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301190ksr">
「だが――アイツはまだ、カゴメアソビが出来るんだ」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301200fje">
「そんな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2329);}

//	TextBoxDelete(150);

	Move("絵背景bM", 6000, -512, -288, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301210ksr">
「ま、そうガッカリすんなって」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301220ksr">
「どれどれ、こっちの方は――」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301230fje">
「ひっ……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301240fje">
「ひぐっ、ぅ……ぅぅ……」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301250ksr">
「泣くな、泣くな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301260ksr">
「痛いのは最初だけだからな」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301270fje">
「た……助けて……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301280fje">
「助けてよ……」

{	Move("絵背景bM", 1500, -384, -144, DxlAuto, false);
	FadeDelete("絵背景bM", 1000, null, false);
}

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301290ksr">
「オレはな、嬢ちゃん。
　生まれてこの方、死ぬほど女の裸を見てきた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301300ksr">
「見て、見て、見過ぎて、それに意味が読み取れなくなるくらいだ」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301310ksr">
「肉と肉が重なって、脳に信号が行って、気持ちよくなって、病みつきになる」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301320ksr">
「自分は獣だ。まずはそれを認めなくちゃならねぇ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301330fje">
「でも――そんなの――」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301340ksr">
「大丈夫。人間の身体、良くできてっから」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301350ksr">
「気持ちいい。それを認めたその瞬間――
　おまえは、裸の獣の本当の美しさを、見るんだよ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景a", 1003, Center, Middle, "cg/ev/ev2320恵那双六にレイプ未遂a.jpg");
	Fade("絵背景a", 300, 1000, null, true);
	Delete("絵背景b");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301360fje">
「知らない！　そんなの、知らない！」


//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200301370ksr">
「ほら、気持ちよくなってきたな？
　乳首が硬くなってきてっぞ」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301380fje">
「やめて……いや！
　そんなの……いや……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200301390fje">
「助けて……助けてよ、千秋――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);


//◆ＳＥ：バタン！　扉が開く
	CreateSE("SE03","se動作_ドア開ける04");
	MusicStart("SE03",0,700,0,1000,null,false);

	TextBoxDelete(150);
	//FadeDelete("絵背景*", 500, null, true);

	EndScene();
}
