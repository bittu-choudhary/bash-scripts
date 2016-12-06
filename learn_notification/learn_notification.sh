while IFS=, read title subtitle status response
do
    osascript -e "display notification \"$status, $response\" with title \"$title\" subtitle \"$subtitle\""
    sleep 900
done < workspace/bash-scripts/learn_notification/myfile.csv
