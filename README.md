## 環境構築
## windowsの場合
powershellを立ち上げ、マインクラフト用のディレクトなどに`cd`で移動。
```powershell
./scripts/win/install.ps1
cd server
../serverinstall_90_2325.exe
./start.bat
```
(適宜`y`でEnterして進める)

Serverが起動してログが出なくなったら、一旦
```
stop
```
と打ちサーバーを止める。

一旦このリポジトリのルートに戻る。(`PS C:\******\ftb-docker> `の状態)
```
./scripts/win/whitelist.ps1
```

そして再び起動
```
cd server
./start.bat
```

## 始めるとき
## windowsの場合
```

```

## 終わるとき【重要！】
サーバーのコンソールで
```
ftbbackups start backup
stop
```
一旦このリポジトリのルートに戻る。(`PS C:\******\ftb-docker> `や`~/******/ftb-docker>`の状態)
Linux
```
rm -rf backups
cp -r server/backups backups
```
Windows(Powershell)
```
rm -Recurse -Force backups
cp -Recurse server/backups backups
```

