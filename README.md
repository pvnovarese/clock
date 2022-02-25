# clock

[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/novarese/default%2Fclock-test?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NjBiNmI3NmU2OTg1ODM3ZmU2ODZiNmE5.WZIffzq3OQPvPXy6pn1TbA4z9fMsdlS1U_cliZXbxKg)]( https://g.codefresh.io/pipelines/edit/new/builds?id=60b6b7fe4417e48416843d11&pipeline=clock-test&projects=default&projectId=60b6b7aa4417e4bd7d843d0f)

Simple beacon, based on jpetazzo/clock, but I made the beacon a script so I can take an argument instead of just having a fixed interval.  

docker run -it --rm pvnovarese/clock:latest [INTERVAL] 

Default INTERVAL is 1 (second).
