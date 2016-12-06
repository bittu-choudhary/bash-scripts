while IFS=, read col1 col2 col3 col4
do
    osascript -e "display notification \"$col3, $col4\" with title \"$col1\" subtitle \"$col2\""
    sleep 900
done < workspace/bash-scripts/learn_notification/myfile.csv
