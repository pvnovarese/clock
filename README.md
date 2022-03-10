# clock

[![Codefresh build status]( https://g.codefresh.io/api/badges/pipeline/novarese/default%2Fclock%20main%20test?type=cf-1&key=eyJhbGciOiJIUzI1NiJ9.NjBiNmI3NmU2OTg1ODM3ZmU2ODZiNmE5.WZIffzq3OQPvPXy6pn1TbA4z9fMsdlS1U_cliZXbxKg)]( https://g.codefresh.io/pipelines/edit/new/builds?id=622784c9fb8ec72efc8fdbbb&pipeline=clock%20main%20test&projects=default&projectId=60b6b7aa4417e4bd7d843d0f)

Simple beacon, based on jpetazzo/clock, but I made the beacon a script so I can take an argument instead of just having a fixed interval.  

docker run -it --rm pvnovarese/clock:latest [INTERVAL] 

Default INTERVAL is 1 (second).
