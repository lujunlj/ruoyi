#!/bin/bash
# -i 不区分大小写
# -r --recursive 递归
# -l --file-with-matches
old_string=ruoyi
new_string=sgnbs

sedfuc(){
g=`grep $old_string -rl . --exclude-dir={target,.idea,.git,logs} --exclude=*.{bak~,bak,iml,class,md,bat,gitignore,sql,sh}`
echo '根据'$new_string'替换'$old_string 相关文件内容
sed -i "s/$old_string/$new_string/g" $g
}
sedfuc

old_string=Ruoyi
new_string=Sgnbs
sedfuc

old_string=RuoYi
new_string=Sgnbs
sedfuc


