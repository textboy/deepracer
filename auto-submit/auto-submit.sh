aws configure add-model --service-model file://deepracer-model.json  --service-name deepracer

for i in {1..2};
do
    aws deepracer --endpoint-url https://deepracer-prod.us-east-1.amazonaws.com create-leaderboard-submission --model-arn "arn:aws:deepracer:us-east-1:706815244402:model/reinforcement_learning/6607ca7a-b616-4d62-ac77-c9e0b0362203" --leaderboard-arn "arn:aws:deepracer:::leaderboard/9f2d829b-888d-4fc1-ba83-215ce4c01851"
    echo $i
    sleep 600
done