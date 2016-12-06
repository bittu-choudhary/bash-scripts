while IFS=, read title subtitle status_type response
do
    osascript -e "display notification \"$status_type, $response\" with title \"$title\" subtitle \"$subtitle\""
    sleep 900
done < workspace/bash-scripts/learn_notification/myfile.csv
