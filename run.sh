#!/bin/bash
#docker run -d -p 5000:80 dotnethelloworld \

#[HELP]
#5000 คือ port ทางเครื่อง host
#80 คือ port ของ container ที่รันออกมา

#ทำการแชร์จาก docker volume ไปที่เป็น /app/wwwroot
#เนื่องจาก container|image docker ไม่สามารถ แก้ไขอะไรได้
#เราจึงใช้วิธีการแชร์จาก TestVol เข้าไปแทน
#และแน่นอนว่าการ build จะต้องมีการถ่ายโอนไฟล์เข้าไปที่ wwwroot ในขั้นตอนการ run

docker run -d \
-v TestVol:/app/wwwroot \
-p 5000:80 \
dotnethelloworld


#ต้องใช้คำสั่งนี้หลังจาก run แล้วเนื่องจากจะมีการสร้าง docker volume เมื่อ run ขึ้นในครั้งแรก
#copy file to TestVol(docker volume)
sh ./copyfiletocontainer.sh ./wwwroot/*
sh ./copyfiletocontainer.sh ./wwwroot/*.*



#--mount source=TestVol,target=/app
