<?php
    if(isset($_POST['upload'])){
        //イメージ加工用のクラスライブラリの読み込み
        // require_once('class.image.php');
        //テンポラリーファイル（一時ファイル）の存在の有無のチェック
        if (is_uploaded_file( $_FILES['upload_file']['tmp_name'])){
        //ラージイメージを保存するためのファイルパス
        $strLarge="../image_size/size_max/".$_FILES["upload_file"]["name"];
        //スモールイメージを保存するためのファイルパス
        $strSmall="../image_size/size_min/".$_FILES["upload_file"]["name"];
        //アップしたファイル名の拡張子を取り出す。
        $extension = explode('.',$_FILES["upload_file"]["name"]);
        //ファイル名が「abc.xyz.jpg」になっている場合、最後の拡張子を取り出す
        $ext = ".".$extension[count($extension) - 1];
        //サーバのテンポラリーファイル（一時ファイル）を$strLargeで示すファイルパスに移動
        if(move_uploaded_file($_FILES["upload_file"]["tmp_name"],$strLarge)){
            //後でファイルを削除できるように、644 に設定
            //以下の処理は、Windowsでは、必要ありません。
            //chmod("../upImages/".$_FILES["upload_file"]["name"], 0644);
            //largeフォルダに移動したファイルをsmallフォルダにコピーする

            copy($strLarge,$strSmall);
            //copy 関数は $strlarnge をコピーしてから、$strSmallにする
            //データベースまたは、$_SESSION['']にあるユーザー名（abc@abc.ac.jp）または、ニックネーム
            //ユーザ名とニックネームは、同じものが存在しないものとする。

            $user = "ozone.compamy.co.jp";
            $nickName = "maria";

            //同じファイル名にならないようにアップロード時の日時をファイル名に追加する
            date_default_timezone_set('Asia/Tokyo');//タイムゾーンを日本時間に設定
            $date = date("YmdHis");

            //if($_FILES["upload_file"]["type"].'<br>';
            //同じファイル名が存在しないようにファイル名をリネームする（largeフォルダ内のイメージファイルのリネーム）
            if(rename("../image_size/size_max/".$_FILES["upload_file"]["name"],"../image_size/size_max/".$user.$date.$ext)){
            //イメージクラスのオブジェクト化
            $thumb = mime_content_type("../image_size/size_max/".$user.$date.$ext);
            //指定したイメージファイルのサイズ../を取得
            $ImageInfo = getimagesize("../image_size/size_max/".$user.$date.$ext);
            //イメージファイルの幅が600pxより大きい場合は、幅を150pxにする。
            //幅を指定すると高さは自動的にリサイズされる
            if($ImageInfo[0]>640){
                // $thumb->width(600); //リサイズ
                // $thumb->save(); //上書き保存
                $width = 640;
                $height = ($width * $ImageInfo[1]) / $ImageInfo[0];

                $thumb_nail = imagecreatetruecolor($width,$height);
                switch ($thumb) {
                case 'image/jpeg':
                    $baseImage = imagecreatefromjpeg("../image_size/size_max/".$user.$date.$ext);
                    break;
                case 'image/png':
                    $baseImage = imagecreatefrompng("../image_size/size_max/".$user.$date.$ext);
                    break;
                case 'image/gif':
                    $baseImage = imagecreatefromgif("../image_size/size_max/".$user.$date.$ext);
                    break;
                case 'image/webp':
                    $baseImage = imagecreatefromwebp("../image_size/size_max/".$user.$date.$ext);
                    break;
                default:
                    break;
                }
            }
            imagecopyresampled($thumb_nail, $baseImage, 0, 0, 0, 0, $width, $height, $ImageInfo[0], $ImageInfo[1]);
            imagejpeg($thumb_nail,"../image_size/size_max/".$user.$date.$ext,100);
            //メッセージの表示
            echo "写真へのメッセージ：{$_POST['massege']}<br>";
            //以下のパスとファイル名をデータベースに保存する。
            echo "../image_size/size_max/".$user.$date.$ext." ← このパスとファイル名をデータベースに保存<br>"."<img src=../image_size/size_max/".$user.$date.$ext."><br>";
            echo '<a href="./product_form.html">bcak to upload page</a><br>';
            }
            else echo "リネームに失敗しました。";
            //同じファイル名が存在しないようにファイル名をリネームする（smallフォルダ内のイメージファイルのリネーム）
            if(rename("../image_size/size_min/".$_FILES["upload_file"]["name"],"../image_size/size_min/".$user.$date.$ext)){
            //イメージクラスのオブジェクト化
            $thumb = mime_content_type("../image_size/size_min/".$user.$date.$ext);
            //指定したイメージファイルのサイズ../を取得
            $ImageInfo = getimagesize("../image_size/size_min/".$user.$date.$ext);
            //イメージファイルの幅が100pxより大きい場合は、幅を150pxにする。
            //幅を指定すると高さは自動的にリサイズされる
            if($ImageInfo[0]>150){
                // $thumb->width(100); //リサイズ
                // $thumb->save(); //上書き保存
                
                $width = 150;
                $height = ($width * $ImageInfo[1]) / $ImageInfo[0];

                $thumb_nail = imagecreatetruecolor($width,$height);
                switch ($thumb) {
                case 'image/jpeg':
                    $baseImage = imagecreatefromjpeg("../image_size/size_min/".$user.$date.$ext);
                    break;
                case 'image/png':
                    $baseImage = imagecreatefrompng("../image_size/size_min/".$user.$date.$ext);
                    break;
                case 'image/gif':
                    $baseImage = imagecreatefromgif("../image_size/size_min/".$user.$date.$ext);
                    break;
                case 'image/webp':
                    $baseImage = imagecreatefromwebp("../image_size/size_min/".$user.$date.$ext);
                    break;
                default:
                    break;
                }
            }
            imagecopyresampled($thumb_nail, $baseImage, 0, 0, 0, 0, $width, $height, $ImageInfo[0], $ImageInfo[1]);
            imagejpeg($thumb_nail,"../image_size/size_min/".$user.$date.$ext,100);
            
            //以下のパスとファイル名をデータベースに保存する。
            echo "../image_size/size_min/".$user.$date.$ext." ← このパスとファイル名をデータベースに保存<br>"."<img src=../image_size/size_min/".$user.$date.$ext."><br>";
            echo '<a href="./product_form.html">bcak to upload page</a><br>';
            }
            else echo "リネームに失敗しました。";
        }
        else{
            echo "パーミッションの設定が間違えていると思われます。確認してください。";
        }
        }
        else{
        echo "ファイルのアップロードができていません。";
        }
    }
    else{
        require_once('./product_form.html');
    }
?>