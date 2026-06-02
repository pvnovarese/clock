# clock

Simple beacon, based on jpetazzo/clock, but I made the beacon a script so I can take an argument instead of just having a fixed interval.  

docker run -it --rm pvnovarese/clock:latest [INTERVAL] 

Default INTERVAL is 1 (second).

this also makes a good smoke test for CI pipelines, just check if we can build an image and then slap whatever else around it.
