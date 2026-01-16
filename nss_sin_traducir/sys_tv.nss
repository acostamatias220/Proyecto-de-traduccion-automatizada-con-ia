$Revision: $

#include "nss/function_select.nss"

//=============================================================================//
.//■ラテ欄■
//=============================================================================//

chapter main
{
	SetFont("ＭＳ ゴシック", 30, FF0000, 000000, 500, RIGHTDOWN);
	CreateText("テキスト０", 200, 30, 20, Auto, Auto, "ラテ欄");

	SetFont("ＭＳ ゴシック", 14, FFFFFF, 000000, 500, RIGHTDOWN);
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "ラテ欄置き場です");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "①新規の場合はGameNameに値を入れて呼び出し元に戻してください");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "ロードの場合はそのままそこからロードしてください");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "②右クリックからラテ欄を呼び出す際は「GameTV」をtrueにして、タイトルに戻しています");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "現状「選択肢に戻る」に当てはめています");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "③どのキャラルートを現在進行しているかのフラグを立ててください");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "同じファイル名でもキャラルートによりその後のスクリプトファイルが違います");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "フラグ名は「CharaName」としています");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "④GameMainSet2の中でそのスクリプトファイルを全て読んだフラグを立てています。");
	WaitKey();
	CreateText("テキスト１", 200, Center, Middle, Auto, Auto, "⑤「フラグ名」+_Select、でセレクト状態がONにしています");
	WaitKey();



//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義


//■選択肢
	SetChoice06("沙紅羅","富士見恵那","小碓千秋","ノーコ","似鳥戴斗","綿抜フウリ");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA06();
				//◆沙紅羅
				$CharaName="沙紅羅";
				$GameName="1800沙紅羅.nss";
		}
		case @選択肢２
		{
			ChoiceB06();
				//◆富士見恵那
				$CharaName="恵那";
				$GameName="1800恵那.nss";
		}
		case @選択肢３
		{
			ChoiceC06();
				//◆小碓千秋
				$CharaName="千秋";
				$GameName="1800千秋.nss";
		}
		case @選択肢４
		{
			ChoiceD06();
				//◆ノーコ
				$CharaName="ノーコ";
				$GameName="1800ノーコ.nss";
		}
		case @選択肢５
		{
			ChoiceE06();
				//◆似鳥戴斗
				$CharaName = "似鳥";
				$GameName="1800似鳥.nss";
		}
		case @選択肢６
		{
			ChoiceF06();
				//◆綿抜フウリ
				$CharaName = "フウリ";
				$GameName="1800フウリ.nss";
		}
	}

}

