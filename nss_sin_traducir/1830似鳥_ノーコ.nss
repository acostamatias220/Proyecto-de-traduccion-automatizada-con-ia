
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1830似鳥_ノーコ.nss_MAIN
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

	if($CharaName=="似鳥"){
		$GameName = "1840似鳥_ノーコ_h.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "1840似鳥_ノーコ_h.nss";
	}else{
		$GameName = "1840似鳥_ノーコ_h.nss";
	}
}

scene 1830似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="810">
////////////header////////////
//file name "1830似鳥_ノーコ.nss"
//title "ＳＥＸ　ＳＥＸ　ＳＥＸ"
//previous "1810似鳥.nss"
//previous "1820ノーコ.nss"

////////////footer////////////
//next "似鳥" "1840似鳥_ノーコ_h.nss"
//next "ノーコ" "1840似鳥_ノーコ_h.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	FadeDelete("上背景", 0, null, true);

//◆場所：似鳥マンション_リビング
	Wait(500);

{	ClockPass(1830);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ザックリと腹にカッターナイフを突き立てられて――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//★徒歩：ＳＥ
	//▼べー：ＳＥ欠番につきコメントアウト
//	CreateSE("SE00","seガヤ_テレビ_TV番組_l");
//	MusicStart("SE00",2000,700,0,1000,null,true);

	PrintGO("上背景", 30000);
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
//	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);
	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",0,true);
	FadeDelete("上背景", 500, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300010nki">
「ふざけんな」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300020nko">
「え……？」

　似鳥は、突き立てられたカッターナイフに構わず、ノーコへと語りかける。

{	ClockPass(1831);}


{	SetVolumeEX("@SE*", 3000, 0, NULL);
	MusicStart("@xbgm26",0,450,0,1000,null,true);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300030nki">
「いつもオレは言う。
　『そうだ、死のう。死んだ方がいい』」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300040nki">
「『世の中に文句ばっかり呟いて、そのくせなにも行動しないで、部屋の中に引きこもってネットして』」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300050nki">
「『死んだ方がいい死んだ方がマシだ死んでくれ頼む』」

{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300060nki">
「おまえは言う『でもわたしもいっしょ』。手首を切る」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300070nki">
「『ごめんなノーコ』オレは謝る。
　謝って、おまえの血を舐める」

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300080nki">
「『付き合わせてゴメンな。ありがとうなノーコ。
　こんなオレに、付き合わせてゴメンな』」

{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300090nki">
「『わたしはにとりのぜんぶがほしいから』唇が重なる。
　あとはいつものＳＥＸ、ＳＥＸ、ＳＥＸ――」

{	St("C",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300100nki">
「ふざけんなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1832);}

	TextBoxDelete(150);

//◆ＳＥ：カッターナイフ転がる。からからん

	DeleteSt("C",200,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_転がる");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　刃が指に食い込むのにも構わず、似鳥はカッターナイフを掴み取り、投げ捨てた。

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300110nko">
「にとり……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300120nko">
「どうして、いつもとちがうの？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300130nki">
「知るか」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300140nko">
「さされるの、すきじゃない？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300150nki">
「痛い」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300160nko">
「にとりも、さされるの、いや？」


{	ClockPass(1833);}

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300170nki">
「わかんねーし。
　わかんねーけど」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300180nki">
「……今日は、ムカつくことばっかりで」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300190nki">
「辞めた学校も――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300200nki">
「クソみたいなネットトレードも――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300210nki">
「煽るだけのネットの知り合いも――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300220nki">
「売れない同人誌も――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300230nki">
「大負けしたパチンコも――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300240nki">
「今日が期限の借金も――」

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300250nki">
「全部、むかつく」

{	ClockPass(1834);}

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300260nko">
「にとりはただしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300270nko">
「まちがってるのはよのなか」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300280nko">
「でも――だいじょうぶ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300290nko">
「いつでも、わたしがとなりに――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300300nki">
「それもだ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300310nko">
「え……」

{	ClockPass(1835);}

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300320nki">
「全部だ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300330nki">
「おまえも、むかつく」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300340nki">
「でも――」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300350nki">
「一番むかつくのは、オレだ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300360nko">
「…………」


{	ClockPass(1836);}

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300370nko">
「わからない……わからない……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300380nko">
「にとり、そんなこと、なかった……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300390nko">
「どうしてかわってしまうの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300400nko">
「このままじゃだめなの？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300410nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1837);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_布落とす");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitAction("SE01", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　無言のまま、似鳥が座り込む。

　つけっぱなしのテレビが、時間を刻んだ。

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300420nko">
「……にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300430nko">
「わたしはさすしかできない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300440nko">
「それがじじつ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300450nko">
「にとりはさされてうれしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300460nko">
「そうおもってた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300470nko">
「でも、にとりがいやなら、させない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300480nko">
「だから……」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300490nko">
「わたし、いみない？」

{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300500nki">
「…………」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300510nko">
「にとりは……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300520nko">
「わたしが、きらい？」


{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300530nki">
「…………」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300540nko">
「にとりは……」

{	ClockPass(1838);}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300550nko">
「もう、しないの？」

{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300560nki">
「…………」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300570nko">
「しよう」

{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300580nki">
「…………っ」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300590nko">
「しよう。しようよ」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300600nki">
「……やめろ」

{	St("ML",700, @0,@0,"buノーコa_幽霊_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300610nko">
「したいよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300620nko">
「わたしと」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300630nko">
「セックス」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300640nko">
「したいよね」

{	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300650nki">
「やめろって！　もうオレ、そういうの――」

{	St("ML",700, @0,@0,"buノーコa_幽霊_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300660nko">
「いやじゃない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300670nko">
「するの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300680nko">
「にとりは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300690nko">
「わたしと」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300700nko">
「セックス」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300710nko">
「したい」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/300300720nki">
「そんな、オレは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1839);}

	DeleteSt("MR",200,true);

	SetVolumeEX("@SE*", 3000, 0, NULL);
	SetVolumeEX("@x*", 3000, 0, NULL);

	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeTT($C_次, 0, 0, 1000, 0, 50, Dxl1, false);
	FadeSt("C",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300730nko">
「いつもどおり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300740nko">
「ここ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300750nko">
「かたいよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300760nko">
「にとりは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300770nko">
「これが」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300780nko">
「すきなの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300790nko">
「わたしに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300800nko">
「ていこう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/300300810nko">
「できないよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 500, @0, @50, Axl1, false);
	DeleteSt("C",500,true);

	EndScene();
}
