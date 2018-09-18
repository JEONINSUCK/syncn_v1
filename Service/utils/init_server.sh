echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

projectname=syncn
# install erlang for rabbitmq
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb $ sudo dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get install erlang

# install rabbitmq
apt-get install rabbitmq-server
rabbitmq-plugins enable rabbitmq_management
service rabbitmq-server restart

# add user & remove default user
rabbitmqctl delete_user guest
rabbitmqctl add_user $projectname $projectname
rabbitmqctl add_vhost $projectname
rabbitmqctl set_user_tags $projectname administrator
rabbitmqctl set_permissions -p / $projectname ".*" ".*" ".*"


wget https://raw.githubusercontent.com/rabbitmq/rabbitmq-management/master/bin/rabbitmqadmin
chmod 755 rabbitmqadmin
cp rabbitmqadmin /usr/bin/
rm ./rabbitmqadmin

# rabbitmqadmin -u {$projectname} -p {$projectname} -V {$projectname} declare queue name={name}
rabbitmqadmin -u {$projectname} -p {$projectname} -V {$projectname} declare exchange name='cmd' type='topic'
rabbitmqadmin -u {$projectname} -p {$projectname} -V {$projectname} declare exchange name='msg' type='topic'
# rabbitmqadmin -u {$projectname} -p {$projectname} -V {$projectname} declare binding source={Exchange} destination={queue}
# rabbitmqadmin -u {$projectname} -p {$projectname} -V {$projectname} declare binding source="news" destination_type="queue" destination="tech" routing_key="tech.*"
# https://nixmash.com/post/installing-rabbitmqadmin-command-line-tool-in-ubuntu 이거보고 추가해주기

# install nodejs10.x
apt-get install -y nodejs

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 
apt-get update 
apt-get install yarn
apt autoremove

echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo

