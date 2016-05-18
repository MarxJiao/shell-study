# 为配置文件批量生成md5文件
为当前目录下所有.conf文件生成.md5文件
# use
./md5sum.sh
# 语法简要分析
把当前路径缓存起来（然而并没有用到）
```
direc=$(pwd)
```   
在查找到的文件中循环
```
for xx in xxx
do
    some shell command
done 
```
把文件的md5存入.md5文件
```
md5sum $file > "$file".md5
```