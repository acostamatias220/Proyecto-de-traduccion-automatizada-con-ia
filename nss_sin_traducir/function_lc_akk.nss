$Revision: 1 $


=================================================
.//クリエイト：立ち絵演出【テスト】
=================================================
..TestStC
function TestStC($StNut,$StPri,$StData)
{
	$StFullData = "cg/st/" + $StData + ".png";
	CreateTexture($StNut, $StPri, OnLeft, 576, $StFullData);
	Fade($StNut, 0, 0, null, true);

	$StCVertical = ImageVertical($StNut)*(-1);
	Move($StNut, 0, @0, $StCVertical, null, true);

	$StCYSet = 576 + 120;
	$StCYSet2 = "@" + $StCYSet;
	Move($StNut, 0, @512, $StCYSet2, null, true);
}

..TestStCL
function TestStCL($StCLNut,$StPri,$StData)
{
	$StFullData = "cg/st/" + $StData + ".png";
	CreateTexture($StCLNut, $StPri, OnLeft, 576, $StFullData);
	Fade($StCLNut, 0, 0, null, true);

	$StCLVertical = ImageVertical($StCLNut)*(-1);
	Move($StCLNut, 0, @0, $StCLVertical, null, true);

	$StCLYSet = 576 + 120;
	$StCLYSet2 = "@" + $StCLYSet;
	Move($StCLNut, 0, @448, $StCLYSet2, null, true);
	//Move($StCLNut, 0, @384, $StCLYSet2, null, true);

}

..TestStCR
function TestStCR($StCRNut,$StPri,$StData)
{
	$StFullData = "cg/st/" + $StData + ".png";
	CreateTexture($StCRNut, $StPri, OnLeft, 576, $StFullData);
	Fade($StCRNut, 0, 0, null, true);

	$StCRVertical = ImageVertical($StCRNut)*(-1);
	Move($StCRNut, 0, @0, $StCRVertical, null, true);

	$StCRYSet = 576 + 120;
	$StCRYSet2 = "@" + $StCRYSet;
	Move($StCRNut, 0, @576, $StCRYSet2, null, true);
	//Move($StCRNut, 0, @640, $StCRYSet2, null, true);

}

================================================================================
.//エフェクト
================================================================================
=================================================
..RoadMove//バイク走行中の地面的な
=================================================

function RoadMove($RoadMove)
{
	CreateProcess("プロセス", 0, 0, 0, "RoadMoveAct");
	Request("プロセス", Start);
}

function RoadMoveAct()
{
	$ActionTime = 200;
	while(1)
	{
	Zoom($RoadMove, 0, 0, 0, null, true);
	Wait(32);

	$ATZ = $ActionTime*2;
	Zoom($RoadMove, $ATZ, 1000, 1000, Axl3, false);
	DrawTransition($RoadMove, $ActionTime, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", false);
	Wait($ActionTime);

	DrawTransition($RoadMove, $ActionTime, 1000, 0, 100, null, "cg/data/zzex_circle_01_00_1.png", false);
	Wait($ActionTime);


	}
}

=================================================
..BGPlainShake背景シェイク：仮想背景を生成し、アクション後削除
=================================================
function BGPlainShake(優先度, 時間, XStar, Ystar, XEnd, YEnd, 幅, テンポ, 待)
{
	CreatePlainSP("絵演背景自動生成振動", 優先度);
	Shake("絵演背景自動生成振動", 時間, XStar, Ystar, XEnd, YEnd, 幅, テンポ, 待);
	Request("絵演背景自動生成振動", Disused);
}

=================================================
..YurActionSakIkariゆる絵アニメ沙紅羅憤怒
=================================================
function YurActionSakIkariSet()
{
	CreateMask("絵緩覆", 0, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("絵緩覆","絵緩覆");
	CreateTextureEX("絵緩覆/絵緩背景", 50, Center, Middle, "cg/yur/yurIF背景01.png");
	CreateTextureEX("絵緩覆/絵緩絵一", 50, Center, Middle, "cg/yur/yur沙紅羅逆鱗a.png");
	CreateTextureEX("絵緩覆/絵緩絵二", 50, Center, Middle, "cg/yur/yur沙紅羅逆鱗b.png");
	CreateTextureEX("絵緩枠線", 51, Center, Middle, "cg/yur/yurIF枠.png");
	CreateSE("絵緩SE01","se擬音_ギャグ_ぴょこ");
	SetVolumeEX("絵緩SE01", 0, 700, null);
}

function YurActionSakIkari()
{
	CreateProcess("ProYur", 0, 0, 0, "YurActionSakIkariAct");
	SetAlias("ProYur","ProYur");
	Request("ProYur", Start);
}

function YurActionSakIkariAct()
{
	Fade("@絵緩覆", 0, 1000, null, true);
	Fade("@絵緩覆/絵緩背景", 0, 1000, null, true);
	Fade("@絵緩枠線", 0, 1000, null, true);
	Wait(16);

	while(1){
	Fade("@絵緩覆/絵緩絵二", 0, 0, null, true);
	Fade("@絵緩覆/絵緩絵一", 0, 1000, null, true);
	Request("@絵緩SE01", Play);
	Shake("@絵緩覆/絵緩絵一", 300, 0, 4, 0, 0, 500, null, true);
	Wait(300);
	Fade("@絵緩覆/絵緩絵一", 0, 0, null, true);
	Fade("@絵緩覆/絵緩絵二", 0, 1000, null, true);
	Request("@絵緩SE01", Play);
	Shake("@絵緩覆/絵緩絵二", 300, 0, 12, 0, 0, 500, null, true);
	Wait(300);
	}
}

function YurActionSakIkariDelete()
{
	Request("@ProYur", Stop);
	Delete("@絵緩*");
	Delete("@ProYur");

}

=================================================
..LcPro_b2120_Syokusyu
=================================================
function LcPro_b2120_Syokusyu($LcPro_b2120_SyokusyuA, $LcPro_b2120_SyokusyuB)
{
	CreateProcess("Pro", 0, 0, 0, "LcPro_b2120_SyokusyuAct");
	SetAlias("Pro","Pro");
	Request("Pro", Start);
}

function LcPro_b2120_SyokusyuAct()
{
	while(1)
	{
	Fade($LcPro_b2120_SyokusyuB, 1000, 1000, null, true);
	Wait(1500);
	Fade($LcPro_b2120_SyokusyuB, 1000, 0, null, true);
	Wait(1500);
	}
}

=================================================
..LcPro_b2120chiaki_Gokou
=================================================
function LcPro_b2120chiaki_Gokou()
{
	CreateProcess("Pro", 0, 0, 0, "LcPro_b2120chiaki_GokouAct");
	SetAlias("Pro","Pro");
	Request("Pro", Start);
}

function LcPro_b2120chiaki_GokouAct()
{
	while(1)
	{
	Fade("@Ｃ/絵背景後光一", 0, 1000, null, true);
	Wait(750);
	Fade("@Ｃ/絵背景後光二", 0, 1000, null, true);
	Wait(750);
	Fade("@Ｃ/絵背景後光二", 0, 0 null, true);
	}
}

=================================================
..LcPro_aa2050sakura_huuri_hutari
=================================================
function LcPro_aa2050sakura_huuri_hutari()
{
	CreateProcess("Pro", 0, 0, 0, "LcPro_aa2050sakura_huuri_hutariAct");
	SetAlias("Pro","Pro");
	Request("Pro", Start);
}

function LcPro_aa2050sakura_huuri_hutariAct()
{
	Wait(1400);
	Fade("@絵背景上", 300, 1000, null, false);
	Move("@StNameL/L*", 300, @-1024, @0, AxlDxl, false);
	Move("@絵背景", 300, -1024, @0, AxlDxl, false);
	Move("@絵背景上", 300, -1024, @0, AxlDxl, true);
	Move("@StNameR/R*", 200, @-512, @0, Dxl1, true);
}

=================================================
..LcPro_aa2110huuri
=================================================
function LcPro_aa2110huuri()
{
	CreateProcess("Pro", 0, 0, 0, "LcPro_aa2110huuriAct");
	SetAlias("Pro","Pro");
	Request("Pro", Start);
}

function LcPro_aa2110huuriAct()
{
	Wait(4000);

	$フウリ告白 = true;

	SetFrequency("@SEP01", 0, 1000, NULL);
	SetPan("@SEP01", 0, 0, NULL);
	SetLoop("@SEP01", false);
	SetVolume("@SEP01", 0, 500, null);
	Request("@SEP01", "Play");
	Request("@SEP01", Disused);

}

=================================================
..LcPro_ab2133otanukisama
=================================================
function LcPro_ab2133otanukisama()
{
	CreateProcess("Pro", 0, 0, 0, "LcPro_ab2133otanukisamaAct");
	SetAlias("Pro","Pro");
	Request("Pro", Start);
}

function LcPro_ab2133otanukisamaAct()
{
	Wait(2500);
	Move("@絵背景100_l", 0, 0, @0, null, true);
	Zoom("@絵背景100_l", 500, 2500, 2500, Axl3, false);
	Move("@絵背景100_l", 500, 950, @0, Axl3, false);
	Fade("@絵背景100_l", 500, 1000, null, true);
	Shake("@絵背景100_l", 300, 10, 10, 0, 0, 500, null, false);

}


=================================================
..LcPro_b2115kurimantower
=================================================
function LcPro_b2115kurimantower()
{
	$KuriCount=0;
	$ZoomCount=0;

	$栗変数=1.5*3*3;
	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, Center, Middle, "cg/obj/objクリマン.png");

	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, 2000, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, -17, -9, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 608, 278, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 612, -7, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, -17, 280, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 294, -153, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 295, 422, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 128, 210, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 445, 65, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 133, -81, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 446, 346, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 135, 59, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

//	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, 450, 201, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

//	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, false);
	Wait(150);


	$KuriCount++;
	$Kuri="絵クリマンタワー"+$KuriCount;
	CreateTextureSP($Kuri, 100, Center, Middle, "cg/obj/objクリマン.png");
	$KuriSe="SEkuri"+$KuriCount;
	CreateSE($KuriSe,"se擬音_ギャグ_ドーン");
	Zoom($Kuri, 0, 20000, 20000, null, true);

//	$ZoomCount++;
	$KuriZoomTime=2000-($ZoomCount*$栗変数*$栗変数);
	Zoom($Kuri, $KuriZoomTime, 1000, 1000, Axl1, true);
	MusicStart($KuriSe,0,700,0,1000,null,false);
	Shake($Kuri, 300, 4, 0, 0, 0, 500, null, true);

	CreatePlainSP("絵板写", 5000);
	Request("絵板写", AddRender);
	CreateSE("SE01","se擬音_ギャグ_爆発");
	Wait(16);
	Delete("絵クリマン*");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵板写", 300, 1200, 1200, Dxl2, false);
	Shake("絵板写", 500, 5, 15, 0, 0, 500, null, false);

	FadeDelete("絵板写", 300, null, true);
}

=================================================
..LcPro_b2050chiakiFlash
=================================================
function LcPro_b2050chiakiFlash($chiakiNut)
{
	CreateProcess("Pro", 0, 0, 0, "LcPro_b2050chiakiFlashAct");
	SetAlias("Pro","Pro");
	Request("Pro", Start);
}

function LcPro_b2050chiakiFlashAct()
{
	while(1){
	Zoom($chiakiNut, 0, 1000, 1000, null, false);
	Fade($chiakiNut, 500, 1000, null, true);

	Zoom($chiakiNut, 1600, 1100, 1100, null, false);
	Fade($chiakiNut, 1600, 0, null, true);
	}

}

=================================================
..LcPro_2020no-ko_erovoice
=================================================
function LcPro_2020no-ko_erovoice()
{
	CreateProcessEX("Pro", "LcPro_2020no-ko_erovoiceAct");
	Request("Pro", Start);
}

function LcPro_2020no-ko_erovoiceAct()
{
	while(1){
	Request("@ノーコプロセスボイス１", Play);
	WaitPlay("@ノーコプロセスボイス１", null);

	Request("@ノーコプロセスボイス２", Play);
	WaitPlay("@ノーコプロセスボイス２", null);

	Request("@ノーコプロセスボイス３", Play);
	WaitPlay("@ノーコプロセスボイス３", null);

	Request("@ノーコプロセスボイス４", Play);
	WaitPlay("@ノーコプロセスボイス４", null);

	Request("@ノーコプロセスボイス５", Play);
	WaitPlay("@ノーコプロセスボイス５", null);

	Request("@ノーコプロセスボイス６", Play);
	WaitPlay("@ノーコプロセスボイス６", null);

	Request("@ノーコプロセスボイス７", Play);
	WaitPlay("@ノーコプロセスボイス７", null);

	Request("@ノーコプロセスボイス８", Play);
	WaitPlay("@ノーコプロセスボイス８", null);

	Request("@ノーコプロセスボイス９", Play);
	WaitPlay("@ノーコプロセスボイス９", null);

	Request("@ノーコプロセスボイス１０", Play);
	WaitPlay("@ノーコプロセスボイス１０", null);

	Request("@ノーコプロセスボイス１１", Play);
	WaitPlay("@ノーコプロセスボイス１１", null);
	Wait(16);
	}
}

function LcPro_2020no-ko_erovoiceSet($NPV_Vol)
{
	CreateVOICE("ノーコプロセスボイス１","20/200200150nko");
	CreateVOICE("ノーコプロセスボイス２","20/200200160nko");
	CreateVOICE("ノーコプロセスボイス３","20/200200170nko");
	CreateVOICE("ノーコプロセスボイス４","20/200200180nko");
	CreateVOICE("ノーコプロセスボイス５","20/200200190nko");
	CreateVOICE("ノーコプロセスボイス６","20/200200200nko");
	CreateVOICE("ノーコプロセスボイス７","20/200200210nko");
	CreateVOICE("ノーコプロセスボイス８","20/200200220nko");
	CreateVOICE("ノーコプロセスボイス９","20/200200230nko");
	CreateVOICE("ノーコプロセスボイス１０","20/200200240nko");
	CreateVOICE("ノーコプロセスボイス１１","20/200200250nko");
	SetVolumeEX("ノーコプロセスボイス*", 0, $NPV_Vol, null);
}

=================================================
.//エフェクト：立ち絵登場演出【テスト】
=================================================
..TestStCMoveFade
function TestStCMoveFade($StCMoveFadeNut,$MoveSet)
{
	$MoveBeforeSet=$MoveSet*(-1);
	$MoveBefore = "@" + $MoveBeforeSet;
	Move($StCMoveFadeNut, 0, $MoveBefore, @0, null, true);

	$MoveAfter = "@" + $MoveSet;
	Move($StCMoveFadeNut, 300, $MoveAfter, @0, Dxl1, false);
	Fade($StCMoveFadeNut, 300, 1000, AxlAuto, false);
	Wait(384);
}

function TestStCMoveDelete($StCMoveDelNut,$MoveDelSet)
{
	//$MoveDelBeforeSet=$MoveDelSet*(-1);
	//$MoveDelBefore = "@" + $MoveDelBeforeSet;
	//Move($StCMoveDelNut, 0, $MoveDelBefore, @0, null, true);

	$MoveDelAfter = "@" + $MoveDelSet;
	Move($StCMoveDelNut, 300, $MoveDelAfter, @0, Dxl1, false);
	Fade($StCMoveDelNut, 300, 0, Dxl3, false);
	Request($StCMoveDelNut, Disused);
}

=================================================
.//エフェクト：サブタイトル表示【テスト】
=================================================
..SubTitleGo
function SubTitleGo($SubTitle)
{

	CreateProcess("SubTitleGo", 0, 0, 0, "SubTitleAct");
	SetAlias("SubTitleGo","SubTitleGo");
	Request("SubTitleGo", Start);
	Request("SubTitleGo", Disused);

}

function SubTitleAct()
{
	CreateName("サブタイトル");
	SetAlias("サブタイトル", "サブタイトル");

	SetFont("ＭＳ 明朝", 40, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("サブタイトル/SubTitle", 20010, 630, 40, 1024, 200, $SubTitle);
	Wait(32);
	Move("サブタイトル/SubTitle", 0, @0, @20, null, true);
	Fade("サブタイトル/SubTitle", 0, 0, null, true);

	Fade("サブタイトル/SubTitle", 200, 1000, null, false);
	Move("サブタイトル/SubTitle", 300, @0, @-20, DxlAuto, true);
	Wait(2000);
	Fade("サブタイトル/SubTitle", 500, 0, null, true);

}

