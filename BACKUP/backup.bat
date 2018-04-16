@echo off
echo shopapi
git clone http://gitlab.qiyunxin.com/qyxteam/shopapi.git
cd shopapi
git checkout hwl
git  pull
git submodule update --init --recursive
cd ../
echo "                        "
echo "                        "
echo "                        "

echo commuser
git clone http://gitlab.qiyunxin.com/qyxteam/commuser.git
cd commuser
git checkout hwl
git  pull
git submodule update --init --recursive
cd ../
echo "                        "
echo "                        "
echo "                        "


echo shopapi-notification
git clone http://gitlab.qiyunxin.com/qyxteam/shopapi-notification.git
cd shopapi-notification
git checkout hwl
git  pull
git submodule update --init --recursive
cd ../
echo "                        "
echo "                        "
echo "                        "


rem echo hwlmanager
rem git clone http://gitlab.qiyunxin.com/qyxteam/hwlmanager.git
rem cd hwlmanager
rem git checkout hwl
rem git  pull
rem git submodule update --init --recursive
rem cd ../
rem echo "                        "
rem echo "                        "
rem echo "                        "


echo couponapi
git clone http://gitlab.qiyunxin.com/qyxteam/couponapi.git
cd couponapi
git checkout hwl
git  pull
git submodule update --init --recursive
cd ../
echo "                        "
echo "                        "
echo "                        "

rem echo huwolai-iOS
rem git clone http://gitlab.qiyunxin.com/xuyujie/huwolai-iOS.git
rem cd huwolai-iOS
rem git checkout hwl
rem git  pull
rem git submodule update --init --recursive
rem cd ../
rem echo "                        "
rem echo "                        "
rem echo "                        "

rem echo utils
rem git clone http://gitlab.qiyunxin.com/tangtao/utils.git
rem cd utils
rem git checkout hwl
rem git  pull
rem git submodule update --init --recursive
rem cd ../


rem echo HuWoLai_Android_Project
rem git clone http://gitlab.qiyunxin.com/songlun/HuWoLai_Android_Project.git
rem cd HuWoLai_Android_Project
rem git checkout hwl
rem git  pull
rem git submodule update --init --recursive
rem cd ../
rem echo "                        "
rem echo "                        "
rem echo "                        "







pause





























