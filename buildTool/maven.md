# Maven ビルドエラー

## Unable to read the metadata file for artifact ':project_name.jar'

**現象： **
jarファイルが読み取れないエラー  

**原因：** 
mvn compileでビルド実行失敗したことにより、  
Repository以下のproject_name.jarがクリアされ、ビルドが通らなくなった。

