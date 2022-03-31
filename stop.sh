# Stop Python
pid=$(top -b -n1 | grep 'python' | head -1 | awk '{print $1}')
if [ $pid ]; then
  kill "$pid"
  echo "Killed $pid"
else
  echo "No Running Task"
fi
