@echo off

set loopcount=1

for /l %%x in (1, 1, %loopcount%) do (

   @echo:
   echo start test%%x 

   ping localhost -n 5 -w 1000

   newman run "test_col.json" -e  "test_env.json" -r cli,htmlextra --reporter-htmlextra-export test-%%x.html --timeout-script 6000000

   echo end test%%x
   @echo:
 
)