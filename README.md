# Checkmarx Agent

Docker image name: `checkmarx-agent:latest`

Checkmarx script entry point location: `/opt/CxConsolePlugin/runCxConsole.sh`

To run:
1) Update the cmd:
    PROJECT_NAME: xxx
    PASSWORD: xxx
    LOCATION_PATH: repo path or folder path which you want to scan
    `/bin/bash runCxConsole.sh Scan -v -projectName CxServer/SP/News_UK/newsuk/{PROJECT_NAME} -CxServer https://sast.dowjones.com -CxUser service.account.05@news.uk -CxPassword {PASSWORD} -Locationtype folder -Locationpath {LOCATION_PATH} -preset Default -reportPDF results`
2) Add the above updated command in jenkins steps:
Example:
    /bin/bash runCxConsole.sh Scan -v -projectName CxServer/SP/News_UK/newsuk/nu-ecsplatform -CxServer https://sast.dowjones.com -CxUser service.account.05@news.uk -CxPassword {PASSWORD} -Locationtype folder -Locationpath ../ecsplatform -preset Default -reportPDF results
