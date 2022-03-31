# End
time=$(date "+%m%d-%H%M%S")

echo "Run End: $time"

# 压缩包名称
file="Result-$1-$time.zip"
resultPath="./result"

# 把 result 目录做成 zip 压缩包
zip -q -r "${file}" "$resultPath"

oss cp "${file}" oss://backup/


echo "Shutdown!"

shutdown