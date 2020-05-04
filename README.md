### Review-Reminder
### Features
Set time and
- get review_request reminder alert sound + notification
- opens review-request page in chrome

### Dependencies Required
```sh
sudo apt install sox
sudo apt install libsox-fmt-mp3
```

### How to?
- clone repo 
```sh
git clone https://github.com/kiranparajuli589/Review-Reminder.git
```
- change directory 
```sh
cd Review-Reminder
```
- Set your time 
```sh
vi review_requested.sh
```
set your favorable time in REQUEST_TIME_ARRAY
- run bash file using `nohup` as:
```sh
nohup bash review_requested.sh &
```
`nohup` is used because the bash file will continue running even if your terminal is closed
- to stop program running:
```sh
kill -9 %1 
```
