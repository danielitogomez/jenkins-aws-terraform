#!/bin/sh

echo "Install apache"
sudo yum -y install httpd && sudo systemctl enable httpd && sudo systemctl start httpd.service

echo "Configuring VirtualHost"

sudo touch /etc/httpd/conf.d/00jenkins.conf && sudo chmod 766 /etc/httpd/conf.d/00jenkins.conf
echo "<Virtualhost *:80>
            ServerName        ec2-3-91-90-222.compute-1.amazonaws.com
            ProxyRequests     On
            ProxyPreserveHost On
            AllowEncodedSlashes NoDecode
        ProxyPass         /  http://localhost:8080/
</Virtualhost>" > /etc/httpd/conf.d/00jenkins.conf

if ! echo -e /etc/httpd/conf.d/00jenkins.conf; then
echo "Virtual host wasn't created !"
    else
echo "Virtual host created !"
sudo systemctl restart httpd.service && sudo systemctl status httpd.service
fi

