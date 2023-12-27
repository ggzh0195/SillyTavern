
#!/bin/bash

# 脚本开始时的声明
echo "                                              
安卓自动部署酒馆
作者：慢性鼻炎
版本：Ver2.3.7
来自：Claude2.0先行破限组
群号：704819371             
Discord群组链接：https://discord.gg/HWNkueX34q 

注意：
1、此程序是完全免费的！严禁任何形式的倒卖。
2、除了本群外，其他地方的转发需得到授权。
3、需要一个稳定的霍格沃兹（魔法）网络环境。
4、全程都要挂梯子，不仅仅是安装，玩的时候也要！
5、关于cookie的获取，请参考其他相关教程。
"

# 如果SillyTavern和Clewd都未安装，则更新pkg和npm
if [[ ! -d "SillyTavern" ]]; then
    echo "正在更新pkg..."
    yes | pkg update
    yes | pkg upgrade
fi

# 检查并安装必要的软件包
if ! command -v git &> /dev/null; then
	echo "正在安装git..."
    yes | pkg install git
fi

if ! command -v node &> /dev/null; then
	echo "正在安装nodejs..."
    yes | pkg install nodejs
fi

echo "准备开始检测文件完整性"
echo "注：文件完整性只能检测部分关键文件是否存在"

# 循环检查并拉取SillyTavern
while true; do
    echo "正在检查SillyTavern文件完整性..."
    if [ ! -f "SillyTavern/start.sh" ]; then
        echo "SillyTavern文件不完整，将进行拉取。"
        rm -rf SillyTavern
        git clone https://github.com/SillyTavern/SillyTavern
    else
        break
    fi
done

# 后台启动SillyTavern
cd 
cd SillyTavern
bash start.sh &
