for i in `seq 1 50`;
do
  echo "$i""th call"
  curl -s http://localhost:3000/api/v1/respond.json  > /dev/null;
  # curl -s http://localhost:3000/api/v1/users.json  > /dev/null;
  # curl -s http://localhost:3000/colleges.json  > /dev/null;
done
