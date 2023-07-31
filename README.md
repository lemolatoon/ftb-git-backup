# %Macの場合もLinuxの手順を踏んでください。
## 環境構築
```
git clone git@github.com:lemolatoon/ftb-docker.git
```
### windows
powershellを立ち上げ、マインクラフト用のディレクトなどに`cd`で移動。
```powershell
./scripts/win/installer.ps1
cd server
../serverinstall_90_2325.exe
./start.bat
```
### linux
```bash
./scripts/linux/installer.sh
cd server
../serverinstall_90_2325
./start.sh
```
(適宜`y`Enterや、`chmod +x`などしてください。)

Serverが起動してログが出なくなったら、一旦
```
stop
```
と打ちサーバーを止める。

一旦このリポジトリのルートに戻る。(`PS C:\******\ftb-docker> `や`~/******/ftb-docker>`の状態)
### windows
```
./scripts/win/whitelist.ps1
```
### linux
```
./scripts/win/whitelist.sh
```

そして再び起動
### windows
```
cd server
./start.bat
```
### linux
```
cd server
./start.sh
```
## 始めるとき
```
git fetch origin
git rebase origin/master
```
### windowsの場合
```powershell
./scripts/win/restore.ps1
```
### linuxの場合
```bash
./scripts/linux/restore.sh
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
./scripts/linux/backup.sh
```
Windows(Powershell)
```
./scripts/win/backup.ps1
```

```
git add .
git commit -m "なにかメッセージ"
git push origin master
```
