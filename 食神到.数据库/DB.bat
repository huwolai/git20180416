@echo off
cd "C:\Users\foory\Desktop\食神到.数据库"
oc login master.server:8443  -u admin -p 123456
oc project  databases
oc get pod 
pause