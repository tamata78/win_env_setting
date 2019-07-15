REM +---------------------------------
REM | DynamoDbを起動するバッチ
REM +---------------------------------

cd C:\Users\sh.tezuka\Desktop\work\app\dynamodb_local_latest
java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
