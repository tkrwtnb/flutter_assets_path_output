# flutter_assets_path_output
Flutterプロジェクトにおけるアセットディレクトリのパスをすべて書き出します

## Discription
Flutterプロジェクトのアセットディレクトリパスをすべて書き出すDart製プログラムです。  
ルートディレクトリで実行するだけで`pubspec.yaml`に書くためのアセットディレクトリパスを書き出してくれます。  

まだパッケージ化をしていないので多少使いづらいかもしれません。

## Usage & Demo
ディレクトリ構造
```
ProjectRootDir
    |
    |-- assets
        |
        |-- foo
        |    |
        |    |-- foo.mp3    
        |    
        |-- bar
             |
             |-- bar.mp3
```


```bash
# cd your project root directory
dart run run.dart

# ===== Out put ======
- assets/
- assets/bar/
- assets/foo/
```


## Install
```bash
# cd your project root directory
git clone https://github.com/tkrwtnb/flutter_assets_path_output
mv flutter_assets_path_output/run.dart ../
```


## Todo
- [ ] パッケージ化
- [ ] pubspec.yamlに書き込む
- [ ] pubにデプロイ