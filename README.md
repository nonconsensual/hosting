General Information:
--------------------

This is a setup for a TOR based onion shared hosting server similar to what freedom hosting used. I have made
the install basically copy and paste based, so the prerequisite is to install standard ubuntu 16.04 LTS or 17.04
I have tested the install on server / desktop additions, I have not bothered to correct any postfix / Email on this
production, however this is something you can do in your spare time if required. The step by step I have added, will
allow anyone with basic unix knowledge to create a working web-hosting server. The purpose of this project
is to allow anyone to have a functional onion hosting server up and running within a hour.

I would suggest running a copy of clonzilla and backing up your ubuntu installation prior to installing so you can easily
roll back to prior in case things do not got to plan. Totally optional step.

Also I would suggest if you are not locally at the terminal of the machine and using ssh to set this up that you first run 
the command screen so if you do lose connection you can log back in and resume where you left off.

This project is provided as is and before putting it into production you should make your own changes as needed.

Supports php 7.0 7.1 7.2 7.3

Includes new web layout design and nice landing page for new sites created.

Added contact form.

Modified the copy and paste process to simplify. 


Installation Instructions:
--------------------------
```
The configuration was designed for ubuntu 17.04 desktop 64 bit edition installation, 
but also works on ubuntu 16.04.04 LTS server. 

The following commands will install all required packages:

Prior To Installation Process: Remove Apache2 & apparmor to prevent any conflicts.
-----------------------------------------------------------------------------------

sudo apt-get purge apparmor

sudo service apache2 stop

sudo apt-get remove apache2*

sudo apt-get autoremove

sudo apt-get purge apache2*

sudo reboot


Installation Process: Copy and paste each line and wait for them to complete.
------------------------------------------------------------------------------


Make sure you are always sudo for all of this installation tutorial
--------------------------------------------------------------------
sudo -i
screen
Now begin installing.
---------------------
sudo apt-get install software-properties-common
sudo apt update && sudo apt upgrade
sudo apt-get install nano
sudo apt-get install apt-transport-https lsb-release ca-certificates
sudo apt update && sudo apt upgrade
sudo apt-get install python-software-properties software-properties-common
sudo apt --fix-broken install python-pycurl python-apt - Ubuntu 18.04 

sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt update && sudo apt upgrade
(If you have problems with dependancies I have included a /etc/apt/sources.list just update yours to match on ubuntu 16.04.LTS - It is located in optional directory then run sudo apt update && sudo apt upgrade, and continue to install)

apt-get --no-install-recommends install apt-transport-tor aspell curl dovecot-imapd dovecot-pop3d git dnsmasq haveged hunspell iptables locales-all logrotate mariadb-server nginx-light postfix postfix-mysql \
php7.0-bcmath php7.0-bz2 php7.0-cli php7.0-curl php7.0-dba php7.0-enchant php7.0-fpm php7.0-gd php7.0-gmp php7.0-imap php7.0-intl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-pspell php7.0-readline php7.0-recode php7.0-soap php7.0-sqlite3 php7.0-tidy php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip \
php7.1-bcmath php7.1-bz2 php7.1-cli php7.1-curl php7.1-dba php7.1-enchant php7.1-fpm php7.1-gd php7.1-gmp php7.1-imap php7.1-intl php7.1-json php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-opcache php7.1-pspell php7.1-readline php7.1-recode php7.1-soap php7.1-sqlite3 php7.1-tidy php7.1-xml php7.1-xmlrpc php7.1-xsl php7.1-zip \
php7.2-bcmath php7.2-bz2 php7.2-cli php7.2-curl php7.2-dba php7.2-enchant php7.2-fpm php7.2-gd php7.2-gmp php7.2-imap php7.2-intl php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-pspell php7.2-readline php7.2-recode php7.2-soap php7.2-sqlite3 php7.2-tidy php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-zip \
php7.3-bcmath php7.3-bz2 php7.3-cli php7.3-curl php7.3-dba php7.3-enchant php7.3-fpm php7.3-gd php7.3-gmp php7.3-imap php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-pspell php7.3-readline php7.3-recode php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xml php7.3-xmlrpc php7.3-xsl php7.3-zip \
phpmyadmin php-apcu php-gnupg php-imagick sasl2-bin ssh subversion tor vsftpd && apt-get --no-install-recommends install adminer

Optional If you want a more secure setup remove phpmyadmin / adminer from the list above.

Optional Experimental with php7.4
apt-get --no-install-recommends install apt-transport-tor aspell curl dovecot-imapd dovecot-pop3d git dnsmasq haveged hunspell iptables locales-all logrotate mariadb-server nginx-light postfix postfix-mysql \
php7.0-bcmath php7.0-bz2 php7.0-cli php7.0-curl php7.0-dba php7.0-enchant php7.0-fpm php7.0-gd php7.0-gmp php7.0-imap php7.0-intl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-pspell php7.0-readline php7.0-recode php7.0-soap php7.0-sqlite3 php7.0-tidy php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip \
php7.1-bcmath php7.1-bz2 php7.1-cli php7.1-curl php7.1-dba php7.1-enchant php7.1-fpm php7.1-gd php7.1-gmp php7.1-imap php7.1-intl php7.1-json php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-opcache php7.1-pspell php7.1-readline php7.1-recode php7.1-soap php7.1-sqlite3 php7.1-tidy php7.1-xml php7.1-xmlrpc php7.1-xsl php7.1-zip \
php7.2-bcmath php7.2-bz2 php7.2-cli php7.2-curl php7.2-dba php7.2-enchant php7.2-fpm php7.2-gd php7.2-gmp php7.2-imap php7.2-intl php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-pspell php7.2-readline php7.2-recode php7.2-soap php7.2-sqlite3 php7.2-tidy php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-zip \
php7.3-bcmath php7.3-bz2 php7.3-cli php7.3-curl php7.3-dba php7.3-enchant php7.3-fpm php7.3-gd php7.3-gmp php7.3-imap php7.3-intl php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-pspell php7.3-readline php7.3-recode php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xml php7.3-xmlrpc php7.3-xsl php7.3-zip \
php7.4-bcmath php7.4-bz2 php7.4-cli php7.4-curl php7.4-dba php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-imap php7.4-intl php7.4-json php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-pspell php7.4-readline php7.4-recode php7.4-soap php7.4-sqlite3 php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip \
phpmyadmin php-apcu php-gnupg php-imagick sasl2-bin ssh subversion tor vsftpd && apt-get --no-install-recommends install adminer

Accept default internet site settings for mail.

Do not select any webserver to configure!

For optimum spell checking capabilities you can optionally install the following packages:
apt-get install aspell-am aspell-ar aspell-ar-large aspell-bg aspell-bn aspell-br aspell-ca aspell-cs aspell-cy aspell-da aspell-de aspell-el aspell-en aspell-eo aspell-eo-cx7 aspell-es aspell-et aspell-eu aspell-eu-es aspell-fa aspell-fo aspell-fr aspell-ga aspell-gl-minimos aspell-gu aspell-he aspell-hi aspell-hr aspell-hsb aspell-hu aspell-hy aspell-is aspell-it aspell-kk aspell-kn aspell-ku aspell-lt aspell-lv aspell-ml aspell-mr aspell-nl aspell-no aspell-or aspell-pa aspell-pl aspell-pt aspell-pt-br aspell-pt-pt aspell-ro aspell-ru aspell-sk aspell-sl aspell-sv aspell-ta aspell-te aspell-tl aspell-uk aspell-uz \
hunspell-af hunspell-an hunspell-ar hunspell-be hunspell-bg hunspell-bn hunspell-br hunspell-bs hunspell-ca hunspell-cs hunspell-da hunspell-de-at hunspell-de-ch hunspell-de-de hunspell-el hunspell-en-au hunspell-en-ca hunspell-en-gb hunspell-en-med hunspell-en-us hunspell-en-za hunspell-es hunspell-eu hunspell-eu-es hunspell-fr hunspell-fr-comprehensive hunspell-gd hunspell-gl hunspell-gu hunspell-he hunspell-hi hunspell-hr hunspell-hu hunspell-is hunspell-it hunspell-kk hunspell-kmr hunspell-ko hunspell-lo hunspell-lt hunspell-ml hunspell-ne hunspell-nl hunspell-no hunspell-oc hunspell-pl hunspell-pt-br hunspell-pt-pt hunspell-ro hunspell-ru hunspell-se hunspell-si hunspell-sk hunspell-sl hunspell-sr hunspell-sv hunspell-sw hunspell-te hunspell-th hunspell-tools hunspell-uk hunspell-uz hunspell-vi

As we have upgraded hosting to v3 tor we need to make sure your running the correct tor version and not old version
--------------------------------------------------------------------------------------------------------------------
type tor -v
Version as of today should be Tor Version 0.4.3.5 anything less then this upgrade it.

Update Tor
1.) nano /etc/apt/sources.list
make sure you replace <DISTRIBUTION> with your build example for ubuntu 18.04
  
  deb https://deb.torproject.org/torproject.org bionic main
  deb-src https://deb.torproject.org/torproject.org bionic main
  

  
  Then make sure you add the key & install it:

  wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import

  gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
  

apt-get update && apt-get upgrade

Keep your locally installed files if asked important! [default=N] - press enter

now type tor -v
you should see Jul 06 16:09:22.187 [notice] Tor 0.4.3.5 running on Linux

Create a mysql user with all permissions for our hosting management: Change the password! CHANGE_TO_YOUR_PASSWORD 
------------------------------------------------------------------------------------------------------------------------------------
mysql

CREATE USER 'hosting'@'localhost' IDENTIFIED BY 'CHANGE_TO_YOUR_PASSWORD';

GRANT ALL PRIVILEGES ON *.* TO 'hosting'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

quit


Creating a clear-net name for the webserver files.
--------------------------------------------------

2.) Sign up with noip.me and get a free dynamic address to use for your .ddns.net address in the the following.

3.) Sign up and login in to noip.me and set the new dynamic host you created to match your server ip / ubuntu machine.


Now head over to github and pull my file to your server.
---------------------------------------------------------

cd /root/

wget https://github.com/nonconsensual/hosting/archive/master.zip

apt-get install zip
unzip master.zip

Quick dirty way to edit all the files instead of manually sifting through them all is as follows:
--------------------------------------------------------------------------------------------------

Go to your hosting-master folder in your home directory

cd /root/hosting-master/

make sure you have already issued the sudo -i command and are in the hosting-master directory

Then run the find commands as per examples but change them to your own names and onions like my examples.

HERE ARE THE ONES TO RUN ONCE YOU EDIT THEM!

find ./ -type f -readable -writable -exec sed -i "s/hosting.anonsite.org/CHANGE-THIS-TO-YOUR-OWN-ADDRESS/g" {} \;
find ./ -type f -readable -writable -exec sed -i "s/hostingmrnkolxhi.onion/CHANGE-THIS-TO-YOUR-OWN-ONION/g" {} \;

To get your own new onion address v3 you will need to download and compile cathugger available here:
https://github.com/cathugger/mkp224o you can do this on your local machine to get the name or the server your choice, then upload
the keys to the server in the steps later in /var/lib/tor/hidden_service/


NOW ZIP THE MODIFIED FILES & COPY THE NEW ZIP FILES TO ROOT / SO YOU CAN EASILY EXTRACT AND OVERWRITE FROM ROOT DIRECTORY
--------------------------------------------------------------------------------------------------------------------------
zip -r etc.zip etc/*

zip -r var.zip var/*

sudo cp var.zip /

sudo cp etc.zip /

cd /


Next deploy hosting system. (if you require the optional rc.local & ssh config file move to the directory /etc/)
----------------------------
make sure your still using sudo -i terminal 

sudo unzip etc.zip

use option - All overwite!

sudo unzip var.zip

use option - All overwite!

sudo reboot


Now we will display the new onion name that was just created and change it to our vannity address.
--------------------------------------------------------------------------------------------------

Now there should be an onion domain in /var/lib/tor/hidden_service/hostname:
----------------------------------------------------------------------------
cat /var/lib/tor/hidden_service/hostname


Now run all this from command line as root.
--------------------------------------------
Run terminal as root!

sudo -i

nano /etc/fstab

append to the end of file

tmpfs /tmp tmpfs defaults 0 0
tmpfs /var/log/nginx tmpfs rw,user 0 0

nano /etc/login.defs

append to end of file

SUB_GID_COUNT 1
SUB_UID_COUNT 1


As time syncronisation is important, you should configure ntp servers in /etc/systemd/timesyncd.conf and make them match with the entries in /etc/rc.local iptables configuration

To create all required tor and php instances run the following commands:
--------------------------------------------------------------------------
for instance in 2 3 4 5 6 7 a b c d e f g h i j k l m n o p q r s t u v w x y z; do(tor-instance-create $instance) done


for instance in default 2 3 4 5 6 7 a b c d e f g h i j k l m n o p q r s t u v w x y z; do(systemctl enable php7.0-fpm@$instance; systemctl enable php7.1-fpm@$instance; systemctl enable php7.2-fpm@$instance; systemctl enable php7.3-fpm@$instance;) done

Optional to get a list of all tor user ids to add in /etc/rc.local run the following:
---------------------------------------------------------------------------------
for instance in 2 3 4 5 6 7 a b c d e f g h i j k l m n o p q r s t u v w x y z; do(id "_tor-$instance") done && id debian-tor


NOW EDIT THE MAIN COMMON.PHP
-----------------------------
cd /var/www

nano common.php

Edit password only as this is all you really need to do.


Now run the setup script
-------------------------
sudo php /var/www/setup.php
get an error? Error: You need to install and enable the PDO php module
sudo apt-get install php-mysql
this will install the PDO module now try above command again.

Enable systemd timers to regularly run various managing tasks:
--------------------------------------------------------------
systemctl enable hosting-del.timer && systemctl enable hosting.timer

Reboot server:
---------------
Final step is to reboot wait about 5 minutes for all services to start and check if everything is working by creating a test account.
sudo reboot


Now you can edit the postfix - mail sections to your own needs or just leave them as if you are not using mail.
see optional steps - Read Me
------------------------------------------
Reboot server and all should be working.

Remember to open any ports needed for tor & tor instances web server etc.

```
Optional-
----------
Updates to uprgrade system components 
Update Tor
1.) nano /etc/apt/sources.list
make sure you replace <DISTRIBUTION> with your build example for ubuntu 18.04
  
  deb https://deb.torproject.org/torproject.org bionic main
  deb-src https://deb.torproject.org/torproject.org bionic main
  
```
  
  Then make sure you add the key & install it:

  wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import

  gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
  

apt-get update && apt-get upgrade

Keep your locally installed files important! [default=N] - press enter

now type tor -v 
---------------------------------------------------

Optional Tweaks Nginx & Cloudflare

cd /etc/nginx
nano nginx.conf
Add between block
        ##
        # Basic Settings
        ##
<ADD HERE>
        sendfile on;
  
Text to add:
  #Added
set_real_ip_from 103.21.244.0/22;
set_real_ip_from 103.22.200.0/22;
set_real_ip_from 103.31.4.0/22;
set_real_ip_from 104.16.0.0/12;
set_real_ip_from 108.162.192.0/18;
set_real_ip_from 131.0.72.0/22;
set_real_ip_from 141.101.64.0/18;
set_real_ip_from 162.158.0.0/15;
set_real_ip_from 172.64.0.0/13;
set_real_ip_from 173.245.48.0/20;
set_real_ip_from 188.114.96.0/20;
set_real_ip_from 190.93.240.0/20;
set_real_ip_from 197.234.240.0/22;
set_real_ip_from 198.41.128.0/17;
set_real_ip_from 2400:cb00::/32;
set_real_ip_from 2606:4700::/32;
set_real_ip_from 2803:f800::/32;
set_real_ip_from 2405:b500::/32;
set_real_ip_from 2405:8100::/32;
set_real_ip_from 2c0f:f248::/32;
set_real_ip_from 2a06:98c0::/29;

# use any of the following two
real_ip_header CF-Connecting-IP;
#real_ip_header X-Forwarded-For;
        ## Block spammers and other unwanted visitors  ##
        include blockips.conf;
        include useragent.rules;
        #end add
        
-----------------------------------------------------------        
Create Useragent block

map $http_user_agent $badagent {
     default 0;
     ~*(adbeat_bot|ahrefsbot|ahrefssiteaudit|alexibot|appengine|aqua_products|archive.org_bot|archive|asterias|attackbot|b2w|backdoorbot|becomebot|blackwidow|blekkobot) 1;
     ~*(blowfish|botalot|builtbottough|bullseye|bunnyslippers|ccbot|cheesebot|cherrypicker|chinaclaw|chroot|clshttp|collector) 1;
     ~*(control|copernic|copyrightcheck|zgrab|copyscape|cosmos|craftbot|crescent|curl|custo|demon) 1;
     ~*(disco|dittospyder|dotbot|download|downloader|dumbot|ecatch|eirgrabber|email|emailcollector) 1;
     ~*(emailsiphon|emailwolf|enterprise_search|erocrawler|eventmachine|exabot|express|extractor|extractorpro|eyenetie) 1;
     ~*(fairad|flaming|flashget|foobot|foto|gaisbot|getright|getty|getweb!|gigabot) 1;
     ~*(github|go!zilla|go-ahead-got-it|go-http-client|grabnet|grafula|grub|hari|harvest|hatena|antenna|hloader) 1;
     ~*(hmview|htmlparser|httplib|httrack|humanlinks|ia_archiver|indy|infonavirobot|interget|intraformant) 1;
     ~*(iron33|jamesbot|jennybot|jetbot|jetcar|joc|jorgee|kenjin|keyword|larbin|leechftp) 1;
     ~*(lexibot|library|libweb|libwww|linkextractorpro|linkpadbot|linkscan|linkwalker|lnspiderguy|looksmart) 1;
     ~*(lwp-trivial|mass|mata|midown|miixpc|mister|mj12bot|moget|msiecrawler|naver) 1;
     ~*(navroad|nearsite|nerdybot|netants|netmechanic|netspider|netzip|nicerspro|ninja|nutch) 1;
     ~*(octopus|offline|openbot|openfind|openlink|pagegrabber|papa|pavuk|pcbrowser|perl) 1;
     ~*(perman|picscout|propowerbot|prowebwalker|psbot|pycurl|pyq|pyth|python) 1;
     ~*(python-urllib|queryn|quester|radiation|realdownload|reget|retriever|rma|rogerbot|scan|screaming|frog|seo) 1;
     ~*(scooter|searchengineworld|searchpreview|semrush|semrushbot|semrushbot-sa|seokicks-robot|sitesnagger|smartdownload|sootle) 1;
     ~*(spankbot|spanner|spbot|spider|stanford|stripper|sucker|superbot|superhttp|surfbot|surveybot) 1;
     ~*(suzuran|szukacz|takeout|teleport|telesoft|thenomad|tocrawl|tool|true_robot|turingos) 1;
     ~*(twengabot|typhoeus|url_spider_pro|urldispatcher|urllib|urly|vampire|vci|voideye|warning) 1;
     ~*(webauto|webbandit|webcollector|webcopier|webcopy|webcraw|webenhancer|webfetch|webgo|webleacher) 1;
     ~*(webmasterworld|webmasterworldforumbot|webpictures|webreaper|websauger|webspider|webster|webstripper|webvac|webviewer) 1;
     ~*(webwhacker|webzip|webzip|wesee|wget|widow|woobot|www-collector-e|wwwoffle|xenu) 1;
  }

--------------------------------------------------------------------------------
create the ipblock section
nano blockips.conf


#hackers
#deny 2600:387::/27;
#deny  2405:8100:8000:5ca1:0:0:0:0;
#great china firewall
deny 2405:8100:8000:5ca1::/49;
#deny 2405:8100::/49;
#comcast block ipv6 - spammer
#deny 2601::/20;
-------------------------------------------------
add password protection to nginx
nano /etc/nginx/sites-enabled/default
add password text between the section of nginx default file:
        
        location / {
                try_files $uri $uri/ =404;
<Add Here>
                location ~ \.php$ {
  
 Text to add:
 
        auth_basic "Restricted Content";
        auth_basic_user_file /etc/nginx/.htpasswd3;

nano /etc/nginx/.htpasswd3
paste in your passwords or create them with a tool.

Certain software requires modification when using a tor socket example here:
Example
nano /etc/tor/instances/a/torrc
HiddenServiceDir /var/lib/tor-instances/a/hidden_service_axohim3ghxe6akvj.onion/
HiddenServiceNumIntroductionPoints 3
HiddenServiceVersion 2
HiddenServiceMaxStreamsCloseCircuit 1
HiddenServiceMaxStreams 20
HiddenServicePort 80 unix:/var/run/nginx/anonim2lxxe6akvj.onion
HiddenServicePort 25
-----------------------------------------------------

HiddenServiceDir /var/lib/tor-instances/a/hidden_service_axohim3ghxe6akvj.onion/
HiddenServiceNumIntroductionPoints 3
HiddenServiceVersion 2
HiddenServiceMaxStreamsCloseCircuit 1
HiddenServiceMaxStreams 20
HiddenServicePort 80 127.0.0.1:80   <<<<<change to this
HiddenServicePort 25 127.0.0.1:25
-----------------------------------------------
now change the nginx file
nano /etc/nginx/sites-enabled/axohim3ghxe6akvj.onion
this is how it should look after changes
server {
        listen [::]:80;
        listen unix:/var/run/nginx/axohim3ghxe6akvj;
#listen unix:/run/https+.pp proxy_protocol;
set_real_ip_from unix:;
real_ip_header proxy_protocol;
        root /home/example.com;
        server_name axohim3ghxe6akvj.onion;
        access_log /var/log/nginx/access_axohim3ghxe6akvj.onion.log custom;
        access_log /home/axohim3ghxe6akvj.onion/logs/access.log custom;
        error_log /var/log/nginx/error_axohim3ghxe6akvj.onion.log notice;
        error_log /home/axohim3ghxe6akvj.onion/logs/error.log notice;
#added redirect page not found to homepage
error_page 404 =200 https://example.com/?page_id=1704;
        disable_symlinks on from=/home/axohim3ghxe6akvj.onion/www;
        autoindex off;
        location / {
                try_files $uri $uri/ =404;
                location ~ [^/]\.php(/|$) {
                        include snippets/fastcgi-php.conf;
#                       fastcgi_pass unix:/run/php/axohim3ghxe6akvj;
                        fastcgi_pass unix:/var/run/php/php7.1-fpm.sock;
                }

        }
}

If you wish to create a email server on the system follow this guide. 
https://workaround.org/ispmail/wheezy/
Revision  24 Oct 2018 + Mods
Clear sockets command if nginx refuses to start
 rm -f /home/*/var/run/mysqld/mysqld.sock /run/nginx.sock /run/nginx/* /var/www/var/run/mysqld/mysqld.sock

If you get a map hash error add this code in nginx.conf
http {
map_hash_bucket_size 128;
        ##
        # Basic Settings
