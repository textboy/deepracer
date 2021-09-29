aws configure add-model --service-model file://deepracer-model.json  --service-name deepracer

for i in {1..2};
do
    aws deepracer --endpoint-url https://deepracer-prod.us-east-1.amazonaws.com create-leaderboard-submission --model-arn "arn:aws:deepracer:us-east-1:<your account ID>:model/reinforcement_learning/<your model ID>" --leaderboard-arn "arn:aws:deepracer:::leaderboard/<your leaderboard ID>"
    echo $i
    sleep 600
done