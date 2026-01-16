
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2340似鳥.nss_MAIN
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
	if(#RouteName=="トゥルー"){
		$GameName="2345似鳥.nss";
	}else if(#RouteName=="d"){
		$GameName="d2345似鳥_ノーコ.nss";//★エンディング中（d）
	}else if(#RouteName=="e"){
		$GameName="d2345似鳥_ノーコ.nss";//★エンディング中（e）
	}
}

scene 2340似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="220">
////////////header////////////
//file name "2340似鳥.nss"
//title ""
//previous "2330似鳥.nss"
//previous "d2341ノーコ.nss"
//previous "e2349ノーコ.nss"

////////////footer////////////
//next （flkagome4=false） "d2345似鳥_ノーコ.nss"
//next （flkagome5=false） "d2345似鳥_ノーコ.nss"
//next "似鳥" "2345似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(2343);}

//◆場所：半田明神_拝殿_布地
	OnBG(10,"bg0607300半田明神_拝殿_布地");
	FadeBG(0,true);
	CreateTextureSP("絵背景BG", 50, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");
	Request("絵背景BG", Smoothing);
	SetShade("絵背景BG", HEAVY);
	Zoom("絵背景BG", 0, 650, 650, null, true);

	SoundPlay("@xbgm12",1000,450,true);

	CreateSE("SE10","seガヤ_大歓声_l");
	MusicStart("SE10",500,1000,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//◆演出指定：うおおおおおおお！！　歓声
	Wait(1000);



	SetVolumeEX("SE10", 2000, 300, null);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵ミリ", 10100, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	CreateTextureEX("絵窓/絵演立絵ミリ2", 10100, center, middle, "cg/bu/buミリＰb_ショータイム_angry.png");
	CreateTextureEX("絵窓/絵演立絵バリ", 10090, center, middle, "cg/bu/buバリー_通常_happy.png");
	Move("絵窓/絵演立絵ミリ*", 0, @0, @0, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);


	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
//動作
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Move("絵窓/絵演立絵ミリ*", 300, @-50, @0, Dxl2, false);
	Fade("絵窓/絵演立絵ミリ", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆演出指定：遠くから
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300010mrp">
「みんな、押さないで！
　ライブにはまだ時間があるから！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300020mrp">
「他にも今日は、全国ゆるキャラバンの続き、秋葉原の新マスコットの発表や――」

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/23/400300030e07">
「いいから、第一宇宙速度まだー！？」

{	Fade("絵窓/絵演立絵ミリ", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵ミリ2", 200, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300040mrp">
「もーちょっとくらい待ちなさい！
　もう１０分もないんだから！」

{	Fade("絵窓/絵演立絵ミリ2", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵ミリ", 200, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300050mrp">
「その間、なんと特別ゲスト！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300060mrp">
「バリー・ヘリントンさんが生で、年忘れガチムチパンツレスリングよっ！！」

{
	Move("絵窓/絵演立絵ミリ*", 300, @-250, @0, Dxl2, false);
	Move("絵窓/絵演立絵バリ", 300, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵バリ", 300, 1000, null, true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/23/400300070e03">
「豚バラチャーハン！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：うおおおおおおお！！　歓声
	SetVolumeEX("SE10", 500, 1000, null);

	Wait(1000);

	SetVolumeEX("SE10", 2000, 300, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300080mrp">
「そしてもちろん！」

{
	Fade("絵窓/絵演立絵ミリ", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵ミリ2", 200, 1000, null, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/400300090mrp">
「レスリングの相手は、このアタシッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：うおおおおおおお！！　歓声
	SetVolumeEX("SE10", 500, 1000, null);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	Wait(1000);

	SetVolumeEX("SE10", 5000, 0, null);
	Wait(1000);

{	ClockPass(2344);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300100nki">
「――――――」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300110nki">
「ぁぁ…………」

{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300120nki">
「――――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300130nki">
「ぁぁ…………」

{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300140nki">
「――――――」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300150nki">
「だめだ」

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300160nki">
「無理」

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300170nki">
「描けない……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300180nki">
「ってかオレになんて誰も期待してないし……」

{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300190nki">
「そもそも、こういう人前に出るの向いてないんだよな。
　こう、余計なことは言わずに作品で勝負したいんだ」

{	St("C",700, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300200nki">
「はあ…………」

{	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300210nki">
「もうやだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"fu似鳥_通常_lost");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/400300220nki">
「ホントに死にたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	EndScene();
}
