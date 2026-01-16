
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1930恵那.nss_MAIN
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
	$GameName = "1940恵那.nss";
	//$GameCircle=false;

}

scene 1930恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1740">
////////////header////////////
//file name "1930恵那.nss"
//title "巫女再誘拐事件"
//previous "1920恵那.nss"


////////////footer////////////
//next "恵那" "1940恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//事件定義
	KoreJikenSet();

{	ClockPass(1930);}


//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg0601100半田明神_男坂_通常.jpg");
	SetShade("絵ゆれ",MEDIUM);
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",0,400,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　恵那はミヅハの手を引き、半田明神へと向かう。

{	St("C",19700, @0,@0,"fu恵那_哀愁_sad");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300010fje">
（好きだったら、信じるのが普通――か。
　なんか勢いで言っちゃったけど）

{	St("C",19700, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300020fje">
（私、千秋を信じられるのかな……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300030fje">
（…………）

{	St("C",19700, @0,@0,"fu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300040fje">
（ん？　アレ？　待てよ……それっておかしくない？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300050fje">
（千秋が信じられるかどうかって、それ――）

{	St("C",19700, @0,@0,"fu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300060fje">
（なに私？　千秋が好きとか！）

{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300070fje">
（そんなわけないじゃない！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300080fje">
（というか、別に好きじゃないから、疑ったりする――）


{	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵ゆれ", 200, null, false);
	DeleteAllSt(200,true);}

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300090mso">
「でりゃあああああああああああああああ！！」


{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300100fje">
「え？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SoundPlay("@xbgm07_noint",0,450,true);


{	ClockPass(1931);}


//	TextBoxDelete(150);


//◆ＥＶ："ev/ev1930みそロケボーダッシュ！.txt"

	CreateSE("SE01","se特殊_ロケボー");//seメカ_車_急加速
	MusicStart("SE01",0,700,0,1000,null,false);
SetFrequency("SE01", 10, 1500, Dxl3);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1930みそロケボーダッシュa.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 5, 500, 50, false);

	Zoom("絵背景", 300, 1000, 1000, Dxl1, false);
	Fade("絵背景", 300, 1000, null, true);
	DeleteAllSt(0,true);
WaitKey(2000);
	SetVolume("SE01", 1000, 0, null);

	Zoom("絵背景", 500, 2000, 2000, Dxl1, false);
	Shake("絵背景", 60000, 2, 1, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵背景", 500, null, true);

	SetVolume("SE01", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300110mzh">
「ななななななな何ッ！？」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300120fje">
「ど、どうやって外に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_ロケボー");
	MusicStart("SE01",0,700,0,1000,null,false);
SetFrequency("SE01", 10, 1500, Dxl3);


	CreateTextureEX("絵背景M", 1000, 0, -288, "cg/ev/m/ev1930みそロケボーダッシュa_m.jpg");
	SetBlur("絵背景M", true, 5, 300, 50, false);
	Move("絵背景M", 300, -512, 0, Dxl1, false);
	Fade("絵背景M", 300, 1000, null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300130mso">
「イっタダキぃッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Zoom("絵背景M", 300, 2000, 2000, null, false);
	Move("絵背景M", 300, 0, -288, Dxl1, false);
	FadeDelete("絵背景M", 300, null, true);

	CreateMaskAXLSP("絵マ", 800, -1024, -576, "ciスラッシュ_06_00", true, "ciスラッシュ_06_00z");
	CreateColorSP("絵マ/色", 100, "#cc3300");//952
	CreateTextureSPadd("絵マ/絵背景", 100, 0, 0, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵マ/絵立11", 101, 20, -60, "cg/bu/buミヅハ_フラット_shock.png");//-28
	Move("絵マ*", 100, 0, 0, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300140mzh">
「きゃぅっ！」

{	SetVolume("SE01", 2000, 0, null);}

{	Move("絵マ*", 100, -1024, -576, Dxl1, false);
	Zoom("絵マ*", 100, 0, 0, null, true);
	Delete("絵マ*");
}
{	St("MR",700, @50,@0,"bu恵那_通常_shout");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300150fje">
「ミヅハちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE00","se特殊_ロケボー");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateTextureEX("絵背景L", 1000, 0, -125, "cg/ev/l/ev1930みそロケボーダッシュa_l.jpg");
	SetBlur("絵背景L", true, 5, 300, 50, false);
	Move("絵背景L", 500, -820, -125, Dxl1, false);
	Fade("絵背景L", 500, 1000, null, true);
	SetVolume("SE01", 1000, 0, null);
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300160mso">
「ハッハー見たか！
　ブーの大発明、ロケボー！」

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300170mso">
「悪いがこいつはもらって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	Move("絵背景L", 200, -1024, -125, Dxl1, false);
//	FadeDelete("絵背景L", 200, null, true);

	SetVolume("SE00", 1000, 0, null);


//◆演出指定：至近距離で花火＆爆発
//◆演出指定：煙モクモク


	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef_ep_悪魔爆発_z5.jpg");
	CreateColorEXadd("絵色", 1500, "#FFFFFF");

	Move("絵背景L", 200, -1024, -125, Dxl1, false);
	FadeDelete("絵背景L", 200, null, false);
WaitKey(100);
	CreateMovieEX("ムービー１", 100, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	CreateSE("SE01","se戦闘_爆発02");
	MusicStart("SE01",0,700,0,1000,null,false);


	SetVolume("@xbgm*", 1000, 0, null);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef_ep_悪魔爆発_z5.jpg", false);

	Shake("絵背景100", 2000, 12, 5, 0, 0, 1000, Dxl1, false);
	Zoom("絵背景100", 2000, 1200, 1200, null, false);
	Fade("絵背景100", 100, 1000, null, true);
	Fade("絵色", 1300, 1000, null, false);
	Wait(800);

	Fade("ムービー１", 1000, 1000, null, false);

	Fade("絵背景100", 500, 0, null, true);

	Fade("絵色", 1000, 0, null, true);
	Delete("絵*");
	FadeDelete("ムービー１", 3000, null, false);



//◆ＳＥ：バッグを落とす音
	CreateSE("SE02","se動作_バッグ落とす");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @-100,@0,"bu恵那_通常_sigh");
Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300180fje">
「ばく……はつ？」


　スケボーで坂を駈け上がったみそは、ミヅハを奪い取るやいなや、コンクリート壁に激突した。

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300190fje">
「ちょ――ミヅハちゃん、大丈夫！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("ムービー１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]

{	DeleteAllSt(200,true);}
{	St("ML",700, @0,@50,"buミヅハ_通常_sigh");
Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300200mzh">
「だ……大丈夫じゃ」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300210mzh">
「みそに、守ってもらった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300220fje">
「よ、よかった……」


{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300230fje">
「でもそのリーゼント、いったい何なのよ
　もしかして、バカ……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm07_noint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@100,"buみそa_通常_angry");
Move("@StNameC/C*", 200, @0, @-100, Dxl3, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300240mso">
「だれが馬鹿だアアアアアアアッッ！！」


{	St("C",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300250mso">
「復活！　イタリアの種馬のように復活！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300260mso">
「はっはっはっはっはっは！」

{	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300270fje">
「……無傷？　でも爆発したのよ！！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300280mso">
「郡山じゃ『頑丈のみそ』って通り名だ！
　この程度の爆発に負けてたまるか！」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300290fje">
「……いやいや」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"buみそa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300300mso">
「ってことで、ミヅハは取り返させてもらう！」





//	SetVolume("@xbgm*", 3000, 0, null);}


{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300310fje">
「ちょっと待った！　勝手に連れてくなんて――」


{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300320mso">
「オレたちの勝手じゃねぇよ」


//	St("ML",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300330mso">
「ミヅハが、望んでるんだ」

{	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300340mso">
「な？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300350fje">
「嘘！　嘘よね、ミヅハちゃん！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300360mzh">
「…………」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300370mzh">
「のう、みそよ。
　なぜわざわざ、わらわを助けに――」

{	St("ML",700, @0,@0,"buみそa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300380mso">
「ヘッ！　決まってんじゃねーか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("ML",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300390mso">
「一緒にメシ食っただろ？
　だったらオレたちゃ、友達なんだよ！」

//	SoundPlay("@xbgm13",1000,450,true);}

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300400mzh">
「友達……！」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300410mso">
「ほらミヅハ、遠慮することはねぇ」

//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300420mso">
「世の中が間違ってるなら、決まりなんて破っちまえ！
　むしろ自分の想いに嘘をつくことを恥じろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1932);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"buみそa_通常_normal");
//	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300430mso">
「自分の信念を貫くのが、侠ってもんだ！！」


{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300440fje">
「いやいや、オトコとかにしなくても――」


{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300450mzh">
「恵那よ、すまぬ」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300460mzh">
「わらわは……星の言葉が、本当かわからぬ。
　真実を選び取る、自信がないのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300470mzh">
「だからもう少し……この世界を見てみたい」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300480mzh">
「色々なことを知り、色々なことを感じ、そこから、自分が信じるに足る物事を選び取りたい」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300490fje">
「ミヅハちゃん――」


{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300500mso">
「おうよ、よく言ったミヅハ！
　そいつがおまえの、本当の気持ちだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300510mzh">
「うむ！」

//	St("C",700, @0,@0,"buミヅハ_通常_normal");
//	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300520mzh">
「すまぬが恵那よ！
　もし星に会ったら、心配は要らぬと告げてくれ」


{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300530fje">
「そんな――」

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300300540mzh">
「では、さらばじゃ！」


{	St("ML",700, @0,@0,"buみそa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300300550mso">
「さらばじゃ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 3000, 0, null);

//	TextBoxDelete(150);
{	DeleteAllSt(200,true);}
WaitKey(500);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",0,400,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300560fje">
「…………はぁ」



{	St("C",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300570fje">
（あんな笑顔見せられたら、追いかけらんないでしょ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300580fje">
（まあ、ホントに危害を加えるつもりはないみたいだし）

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300590fje">
（それにもしかして、ミヅハちゃんの正体は……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300600fje">
（うん。とりあえずあっちは放っておいて銃を――）

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300610fje">
「ん？」

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300620fje">
「あれ？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300630fje">
「……ない？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300640fje">
「なんで！！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300650fje">
「うー……ええと……！
　落ち着き……落ち着きなさい、富士見恵那！」


//	St("C",700, @0,@0,"bu恵那_一休_sigh");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300660fje">
「最後にカバンを持ってたのは……公園から……ベアカステラで……男坂に来て……」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300670fje">
「あ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300680fje">
「バカがスケボーで爆発して、その時落とした？」

{	DeleteAllSt(200,true);}

　恵那は階段を振り返る――


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE*", 500, 0, null);


{	St("R",700, @50,@0,"bu恵那_通常_angry");
Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,false);}

{	St("L",700, @-50,@0,"buブーa_通常_sad");
Move("@StNameL/L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300690fje">
「あ」

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/19/300300700buu">
//「あ」

</PRE>
	SetText();
	AddText(1,"「あ」","富士見恵那","19/300300690fje",false,false,1000);
	AddText(2,"「あ」","ブー","19/300300700buu",false,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 100, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演背景", 0, @0, @120, null, true);

	Move("絵演背景", 300, @0, @-120, Dxl1, false);
	Fade("絵演背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
　今まさにエコバッグに手をかけているブーと目が合う。



{	SoundPlay("@xbgm07_noint",0,450,true);
	St("ML",700, @0,@0,"buブーa_オラオラ_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300300710buu">
「さらばじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演背景", 200, @-600, @0, Axl3, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	Move("@StNameML/ML*", 200, @-600, @0, Dxl3, false);
	DeleteAllSt(200,false);
	Delete("絵演背景");

{	St("R",700, @50,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameR/R*", 200, @-50, @0, Dxl3, false);
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300720fje">
「ちょ！　待ちなさい！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：走り出す

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);

	SetVolume("SE01", 3000, 0, null);


	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(1933);}



//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
{	St("ML",700, @50,@0,"buブーa_通常_smile");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300300730buu">
「大丈夫！　何も盗らないから！」


{	St("MR",700, @50,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300740fje">
「いやいや！　盗ってるでしょ！」

{	St("ML",700, @50,@0,"buブーa_通常_shock");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300300750buu">
「違う違う！　ミヅハちゃんの下着を返して貰うだけ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("MR",700, @50,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300760fje">
「いやいや！　それはそれで危険だし！」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300770fje">
（ってか、あの銃を持ち逃げされちゃったら……！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300780fje">
（マズい！　マズすぎる――ッ！！）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



{	ClockPass(1934);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]

{	St("MR",700, @50,@0,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300790fje">
「待て！　待てってば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @100,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300300800buu">
「はぁっ……はぁっ……ぜぇ……ぜぇ……」

{Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);}
　体重の差か、ブーの歩みが徐々に遅くなる。


{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300810fje">
（もう少し――もう少しで、追いつく――）

{	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/bg/bg2502300信号機_見上げ_赤標識無.jpg");
	Fade("絵背景", 300, 1000, null, true);
	DeleteAllSt(0,true);
}


//	St("C",700, @0,@0,"bu恵那_通常_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300820fje">
（って、こんな時に信号赤！？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300830fje">
（ああもう！　こうなったら信号無視して――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 3000, 0, null);

//	TextBoxDelete(150);
	FadeDelete("絵背景", 300, null, true);


	CreateSE("SE01","seガヤ_交通_l");
	MusicStart("SE01",1000,700,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300300840kit">
「ゲ！　鈴姉！」

{	St("C",700, @50,@0,"bu恵那_通常_sigh");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300850fje">
「――――え！？」

//	St("C",700, @0,@0,"bu恵那_一休_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300860fje">
（今、鈴姉を呼ぶ声が――）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300870fje">
（って、そんなことしてる場合じゃない！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300880fje">
（早くアイツを追いかけないと――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);





//1930千秋.nss[text0220]に千秋視点あり（千代子


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"bu千秋_通常_shy");
//Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300300890kit">
「ぎゃああああ！　待った！　待った！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300300900kit">
「ゴメン！　もうちょっとだけ時間！
　あと１０分だけ――」


{	ClockPass(1935);}

{	DeleteAllSt(200,true);}
{	St("MR",700, @100,@0,"bu恵那_ハルヒ_angry");
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300910fje">
「ちょっと待ったあッ！！」



//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300920fje">
「アンタ誰！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300930fje">
「ってか、なんで千秋のケータイもってるのよ！」

{	St("ML",700, @200,@0,"bu千秋_驚天_shy");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-200, @0, Dxl3, false);
	Shake("@StNameML/ML*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300300940kit">
「ゲッ！　恵那――！？」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300950fje">
「もしかして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolume("SE*", 1000, 0, null);


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300960fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}



//◆演出指定：ダッシュで逃げ出す

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300300970kit">
「今だ！」

{	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
Move("@StNameML/ML*", 200, @-600, @0, Axl3, false);
	DeleteAllSt(200,true);
	WaiKey(300);
	SetVolume("SE0*", 2000, 0, null);
}


{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300980fje">
「って、なんで逃げるわけ？」

{	SoundPlay("@xbgm03",0,450,true);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300300990fje">
「ちょっと待ちなさい！　待ちなさいってば！」





</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("SE0*", 2000, 0, null);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//◆演出指定：走りながら

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301000fje">
「アンタ、千秋の何？　なんか知ってるでしょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300301010kit">
「知らない！　全く、なんにも！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301020fje">
「嘘つかないで！　なんで同じケータイなのよ！」

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300301030kit">
「たまたま、同じ機種だっただけ――」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301040fje">
「嘘！　そのストラップ、同じだもん！」

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300301050kit">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301060fje">
「これ！　見なさいよ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
　恵那が走りながら携帯電話を掲げる。

{	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj恵那携帯ストラップ.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 800, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);
}
　揺れているのは千秋と同じ、小さなタヌキのストラップ。



//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301070fje">
「千秋にもらったお揃いのタヌキ！」

{	Move("絵オブ", 800, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
}

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301080fje">
「あいつ以外に、持ってる人なんて見たことないわ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301090fje">
「それ、絶対千秋のよ！　返して！！」

{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/300301100kit">
「し、し、知るかぁっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0101111秋葉原_裏通り_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]

{	St("C",19700, @0,@0,"fu恵那_通常_shy");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301110fje">
（ふざけないで！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301120fje">
（絶対、絶対返して貰うんだから！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301130fje">
（このストラップ、千秋からのプレゼントだもん！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301140fje">
（お揃いの……プレゼントなんだもん！）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301150fje">
（絶対……絶対、取り返さなきゃ、駄目なのッッ！！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);
//	FadeDelete("絵背景", 200, null, false);
//	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	FadeDelete("絵背景", 0, null, false);
	DeleteAllSt(0,true);

	SetVolume("SE*", 1000, 0, null);


{	ClockPass(1936);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	CreateSE("SE12","seガヤ_交通少_l");
	MusicStart("SE12",2000,400,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]

//◆音声指示：遠くから
{	St("C",700, @50,@0,"bu恵那_通常_pinch");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301160fje">
「はぁっ、はぁっ、はぁ……どこ？」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301170fje">
「いない……？」

//◆音声指示：遠くから
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301180fje">
「ってか、なんなのあの逃げ足の早さ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆音声指示：遠くから
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301190fje">
「それになんで、私の名前まで知ってるわけ？」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301200fje">
「千秋に――いったい、何があったのよ？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




{	ClockPass(1937);}


//◆ＳＥ：着信音：なりつづける
	CreateSE("SE01","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE01",0,700,0,1000,null,true);
WaitKey(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0295]

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301210fje">
「――父さんから？　なんでこんなときに！？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301220fje">
「って、あ――あ――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301230fje">
（私……何やってるのよ！？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301240fje">
（あの変な女に気をとられて、銃を見逃した……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301250fje">
（ああ……酷い……最悪だ……）

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301260fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301270fje">
「……わかったわよ」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301280fje">
（ホントに、情けないけど……）

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301290fje">
（でも、拳銃が悪用されるよりはマシ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE01", 10, 0, null);



//◆ＳＥ：受信
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]


{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301300fje">
「もしもし父さん」

{	DeleteAllSt(200,true);}

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301310fjh">
『おい恵那！　無事か？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301320fje">
「え？　無事だけど――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301330fjh">
『本当に無事か？　無事なんだな！』

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301340fje">
「あ、当たり前でしょ！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301350fjh">
『そうか……よかった……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1938);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301360fje">
「……何か、あったの？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301370fjh">
『……いや、実はな。
　星さんから連絡があって、アザナエルが――』

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301380fje">
「アザナエル……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301390fje">
（やっぱりあの銃の名前、アザナエルって言うんだ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301400fje">
（父さんにも、連絡が行った……？
　ってことは、消えたのがバレたのか……）




{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301410fjh">
『恵那、おまえ……古井戸には近づいてねぇだろうな』

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301420fje">
（古井戸……ちょっと待って！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301430fje">
（そもそもなんで、父さんがアザナエルのことを？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301440fje">
（もしかして……何か知ってる？）


{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301450fjh">
『おい、恵那？　聞いてるのか？』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301460fje">
「あ、うん！　ちょっと電波弱いみたい！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301470fje">
「あのさ、父さん！　古井戸って、何？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301480fjh">
『あ……いや、うん。なんでもねぇ』

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301490fje">
「なんでもないって、何が？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301500fjh">
『別に、知らなきゃ知らないでいいんだよ！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/19/300301510fjh">
『おまえは変なところ嗅ぎ回ったりしねぇで、家で大人しく年越し蕎麦つくっとけ！』

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301520fje">
「――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	ClockPass(1939);}

//◆ＳＥ：ケータイ切れる
	CreateSE("SE01","seメカ_携帯_切れる");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301530fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301540fje">
「絶対、助けなんて求めない」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301550fje">
「私の力で、事件を解決してやるッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE*", 1000, 0, null);



	SoundPlay("@xbgm08_noint",3000,450,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301560fje">
（――とはいうものの、手がかりゼロか）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301570fje">
（ってか、問題は山積みよ。
　落ち着いて、ひとつずつ考えましょ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301580fje">
（まず、アザナエルは取り返さなきゃならない）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301590fje">
（次に、あの謎の女が何故千秋のケータイを持ってるのか、突き止める必要がある）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301600fje">
（どう考えても、アザナエルの方が大事よ、
　まずはそっちを調べなきゃ！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301610fje">
（リーゼントとアフロ、仲間よね？
　ふたりが行く場所がわかれば――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301620fje">
（ミヅハちゃんも一緒だから、半田明神？
　……ううん、むしろそっちには寄りつきもしないはず）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301630fje">
（でも、それじゃどこに？
　あんなカッコの人、秋葉原じゃ見たことないし……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301640fje">
（でも……どこかに、手がかりがあったはず……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301650fje">
（なんかこう……私の頭に、引っかかることが……）

{	SetVolume("@xbgm*", 5000, 0, null);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301660fje">
「………………」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301670fje">
「………………っ」

{	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301680fje">
「………………ううううっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	St("C",700, @0,@0,"bu恵那_通常_shy");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301690fje">
「ああっ！　駄目だ！　集中できない！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301700fje">
「何！？　なんでこんなにイライラするわけ！？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301710fje">
「ああ、もう！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(500);
	SetVolume("SE01", 10, 0, null);

	CreateSE("SE02","seメカ_携帯_コール01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0415]
　恵那は苛立たしげに携帯電話を取り出す。

　千秋にコールするが、いくら待っても反応はない。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE02", 10, 0, null);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301720fje">
（――そりゃそうか）


{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301730fje">
（となると……スーパーノヴァね）

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/300301740fje">
「鈴姉なら、千秋のこと何か知ってるはず――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	EndScene();
}
