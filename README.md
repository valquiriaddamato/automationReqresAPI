# Automation Reqres API Rest

#### Prerequisites
- Have node.js installed on the machine
- Have newman installed on the machine, just run the command in node.js cmd:
```sh
npm install -g newman
```
- Download the project to the machine in directory "C:"

#### Run project
1. Run the project open node.js cmd
2. Change directory to "C:\automationReqresAPI\collections"
3. Run the newman command:
```sh
newman run automationReqresAPI.postman_collection.json -e environmentAutomationReqresAPI.postman_environment.json --reporters cli,json --reporter-json-export C:\automationAPI\reports\reportsAutomationReqresAPI.json
```

#### View BDDS
Access the following path "C:\automationReqresAPI\features"
- BookTest.feature
- UserTest.feature

#### View logs
Access the following path "C:\automationReqresAPI\reports"
- reportsAutomationReqresAPI.json