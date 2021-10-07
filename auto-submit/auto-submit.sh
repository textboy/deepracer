# 1. Configuration
aws configure add-model --service-model file://deepracer-model.json  --service-name deepracer

# 2. Model Submission
for i in {1..2};
do
    # (1) Community races
    #aws deepracer --endpoint-url https://deepracer-prod.us-east-1.amazonaws.com create-leaderboard-submission --model-arn "arn:aws:deepracer:us-east-1:<your account ID>:model/reinforcement_learning/d6d343f8-c142-470e-af76-260b91616aa4" --leaderboard-arn "arn:aws:deepracer::<your account ID>:leaderboard/0d546bd3-6181-42f4-abd2-f0381aa9d053"
    # (2) Virtual Circuit
    aws deepracer --endpoint-url https://deepracer-prod.us-east-1.amazonaws.com create-leaderboard-submission --model-arn "arn:aws:deepracer:us-east-1:<your account ID>:model/reinforcement_learning/6607ca7a-b616-4d62-ac77-c9e0b0362203" --leaderboard-arn "arn:aws:deepracer:::leaderboard/9f2d829b-888d-4fc1-ba83-215ce4c01851"
    echo $i
    # wait evaluation complete
    sleep 300
done
echo "Complete."