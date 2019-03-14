#Create Project in Sonar Qube
curl -u admin:admin -X POST 'http://localhost:9000/api/projects/create?key=myKey&name=myProject' 

#Create quality gate in sonarqube
curl -u admin:admin -X POST "http://localhost:9000/api/qualitygates/create?name=QG1

#Add condition to qualitygate
curl -u admin:admin -X POST "http://localhost:9000/api/qualitygates/create_condition?gateId=2&metric=major_violations&op=GT&warning=0&error=5"

#Associate a project to quality gate
curl -u admin:admin -X POST "http://localhost:9000/api/qualitygates/select?gateId=2&projectKey=myKey"
