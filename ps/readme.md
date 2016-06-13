# 批量结束进程命令
```
ps aux| grep xxx | cut -c 3-15 | xargs kill -9 
```

|命令|功能|
|----|----|
|ps aux |查看进程详情|
|grep xxx |过滤xxx进程|
|cut -c 3-15 |获取进程id,3-15是要剪出的字符数，视具体情况而定|
|xargs kill -9| 使用kill -9来强制结束进程|