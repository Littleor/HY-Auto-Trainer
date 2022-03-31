# 测试用
time=$(date "+%m%d-%H%M")
logPath="./result/logs"
file=$1;

if [ $3 ] ; then
  python ${file}
  /hy-tmp/end.sh $2
else
  ./stop.sh

  if [ ! $1 ] || [ ! $2 ] ; then
      echo "Usage: ./run.sh [file] [tag]"
      exit
  fi
  if [ ! -w "$logPath" ]; then
      mkdir $logPath
  fi

  nohup /hy-tmp/run.sh $1 $2 1 > ${logPath}/$2-${time}.log 2>&1 &

  echo ${logPath}/$2-${time}.log

  sleep 3

  tail -f ${logPath}/$2-${time}.log
fi