#!/bin/bash



echo "total disk present :$(df -h | awk 'NR==3 {print $2}')"

echo "total mememory present :$(free -h | awk 'NR==2 {print $2}')"

echo "available disk:$(df -h | awk 'NR==3 {print $4}')"

echo "available memory:$(free -h | awk 'NR==2 {print $4}') "

