@echo off
cd "C:\Users\foory\Desktop\ʳ��.���ݿ�"
oc login master.server:8443  -u admin -p 123456
oc project  databases
oc port-forward  mysqlcouponapi-1-xhy0y 3306:3306
pause