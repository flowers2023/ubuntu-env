# ubuntu-env
1.pip安装
sudo apt-get install python3-pip   

2.jupyter notebook  
cane@drunk:~$ sudo pip3 install jupyter  

3.按键替换(改变capslock为ctrl)  
sudo vim /etc/default/keyboard  
XKBOPTIONS="ctrl:nocaps"  
cane@drunk:~$ sudo dpkg-reconfigure keyboard-configuration 

4.添加ubuntu源  

5.添加maven，git源配置  
$ sudo apt install git  
$ sudo apt install vim  

6.
kane@ubuntu:~$ sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4  
kane@ubuntu:~$ im-config -s ibus  
kane@ubuntu:~$ sudo apt-get install ibus-pinyin   
kane@ubuntu:~$ ibus-setup    
in Text Entry add Chinese(Pinyin)(IBus)   

7.网络   
sudo apt-get install net-tools    

8.maven 常用命令   
http://wiki.jikexueyuan.com/project/maven/deployment-automation.html    
mvn release:clean   
mvn release:rollback   
mvn release:prepare   
mvn release:perform   


