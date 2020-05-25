### Review-Reminder
### Features
Set time and
- get review_request reminder alert sound + notification
- opens review-request page in chrome

### Dependencies Required
sudo apt install sox
sudo apt install libsox-fmt-mp3

### How to?
- clone repo
- cd Review-Reminder
- vi review_requested.sh
set your favorable time in REQUEST_TIME_ARRAY
- Before running the script you've to set two variables:
    - USERNAME i.e your github username
    - GIT_ACCESS_TOKEN i.e your personal access token for GitHub on the commandline
- run bash file using `nohup` as:
```sh
nohup bash review_requested.sh &
```
nohup is used because the bash file will continue running even if your terminal is closed
- to stop program running:
```sh
kill -9 %1 
```
