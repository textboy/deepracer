auto-submit
===========
Auto-submit is used for evaluating auto submit in deepracer community races or virtual races.
1. Install AWS CLI, you can follow the [guide](https://aws.amazoncom/cli/) here.
2. Download the configured json file and auto-submit.sh script
3. Update auto-submit.sh script, replace model-arn, leaderboard-arn and sleep time with your setting
4. Run with command ```./auto-submit.sh```
5. Interrupt the script by ```^Z``` at any time

For the details, please refer to AWS blog - Rank Boosting in AWS DeepRacer by Evaluating Auto Submit.
