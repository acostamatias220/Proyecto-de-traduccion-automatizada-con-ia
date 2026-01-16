
//=============================================================================//
//■リセット確認■
//=============================================================================//
chapter main
{
	Wait(16);

	if(IsInterrupt()){
		CreateTexture("video",1010000,center,middle,"VIDEO");
	}

	//★ロックの場合
	if($SYSTEM_twitter_lock){
		return;
	}

	//■文章作成
	if($SYSTEM_last_text==0){$LOCAL_last_text=" ";}
	else{$LOCAL_last_text=$SYSTEM_last_text;}

	if($GameCircle){
		if($NowOclock!=0){
			$TwiterTime1=String("%02d",Integer($Oclock_half/100));
			$TwiterTime2=String("%02d",Integer($Oclock_half%100));
	
			$最初の文字=Substr($LOCAL_last_text,1,1);
			if($最初の文字=="「"||$最初の文字=="（"||$最初の文字=="『"){
				if(Strlen(Twitter_Person())==0){
					$SYSTEM_twitter_message=" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
				}else{
					$SYSTEM_twitter_message=$LOCAL_last_text+" "+Twitter_Person()+" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
				}
			}else{
				if($LOCAL_last_text==" "){
					$SYSTEM_twitter_message=" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
				}else{
					$SYSTEM_twitter_message=$LOCAL_last_text+" "+$TwitterZone+$TwiterTime1+":"+$TwiterTime2+" #axlnitro";
				}
			}
		}else{
			$最初の文字=Substr($LOCAL_last_text,1,1);
			if($最初の文字=="「"||$最初の文字=="（"||$最初の文字=="『"){
				if(Strlen(Twitter_Person())==0){
					$SYSTEM_twitter_message=" #axlnitro";
				}else{
					$SYSTEM_twitter_message=$LOCAL_last_text+" "+Twitter_Person()+" #axlnitro";
				}
			}else{
				if($LOCAL_last_text==" "){
					$SYSTEM_twitter_message=" #axlnitro";
				}else{
					$SYSTEM_twitter_message=$LOCAL_last_text+" #axlnitro";
				}
			}
		}
	}else{
		if($LOCAL_last_text==" "){
			$SYSTEM_twitter_message=" #axlnitro";
		}else{
			$SYSTEM_twitter_message=$LOCAL_last_text+" #axlnitro";
		}
	}


	//twiiter
	//▼アカウント判別
	if(Twitter_CheckAcount()==0){
		//アカウント設定済み
		//▼呟き画面表示へ
		TwitterOn();
	}else{
		//アカウント未設定
		//▼アカウント入力画面表示
		if(Twitter_InputAcount()){
			//アカウント設定「ＯＫ」
			//▼アカウントTwitterへチェック。
			if(Twitter_SetAcount()<0){
				//確認エラー
				Message("エラー","Twitterアカウントを確認できませんでした。",OK,STOP);
			}else{
				//確認ＯＫ：レジストリに追加
				//▼呟き画面表示へ
				TwitterOn();
			}
		}else{
			//アカウント設定「キャンセル」

		}
	}

	$SYSTEM_keydown_e=false;
}

function TwitterOn()
{
	//▼呟き画面表示
	if(Twitter_InputTweet()){
		//▼入力内容を投稿
		if(!Twitter_Tweet()){
			//エラー！
			Message("呟き中エラーが発生しました。","正常に投稿ができませんでした。\nAPIが混雑している、インターネットに接続されていない、\n設定が正しくおこなわれていないなどの可能性があります。\nまた、短い間隔で同じ投稿内容は呟けません。\nパソコン環境や設定画面をご確認のうえ、改めて投稿してください。",OK,EXCLAMATION);
		}else{
			//★呟かれました！
		}
	}else{
		//キャンセル
	}
}

//コンフィグの「Twitterの設定」ボタンからコール（仮入れ→不要の場合は削除してください（千代子）
function CfgOpenTwitterSetting()
{
	//twiiter
	//アカウント未設定
	//▼アカウント入力画面表示
	if(Twitter_InputAcount()){
		//アカウント設定「ＯＫ」
		//▼アカウントTwitterへチェック。
		if(Twitter_SetAcount()<0){
			//確認エラー
			Message("エラー","Twitterアカウントを確認できませんでした。",OK,STOP);
		}else{
			//確認ＯＫ：レジストリに追加
			//▼呟き画面表示へ
			//TwitterOn();
		}
	}else{
		//アカウント設定「キャンセル」

	}
}









