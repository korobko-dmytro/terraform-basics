#/bin/bash
yum -y update
yum -y install httpd
myip = `curl http://169.254.169.254/latest/meta-data/local-ipv4`

cat <<EOF > /var/www/html/index.html
<html>
<h2>Built by Power of Terraform <font color="red"> v0.15 </font></h2><br>
Owner ${f_name} ${l_name} <br>
%{ for x in names ~}
Hello to ${x} from ${f_name} <br>
%{ endfor ~}
</html>
EOF

echo "<h2>WebServer with IP: $myip</h2><br>Build by Terraform!" > /var/www/html/index.html
sudo systemctl restart httpd
sudo systemctl enable httpd
