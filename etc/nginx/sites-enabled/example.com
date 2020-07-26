server {
listen [::]:80;
        root /home/example.com;
        index index.html index.php;
        server_name example.com;
        access_log /var/log/nginx/access_example.com.log;
        error_log /var/log/nginx/error_example.com.log notice;
# perminant redirect
#        return 301 https://example.com$request_uri;
# perminant redirect
#added badagents nginx/
if ($badagent) {
        return 403;
    }
#added end badagents
        error_page 404 =200 https://example.com/;
        error_page 403      https://example.com/?page_id=1213;
       location / {
                try_files $uri $uri/ =404;
        }
        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php7.1-fpm.sock;
        }
}