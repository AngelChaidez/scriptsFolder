#!/usr/bin/sudo bash
# By adding the /usr/bin/sudo bash command we are allowing our script to run in 
# root.
# Using yum package manager to update the system
sudo yum update -y
# Install Apache
sudo yum install httpd -y
# Starting our apache service
sudo systemctl start httpd
# Enabling the apache service
sudo systemctl enable httpd
# Change mode for the directory hmtl giving us permissio to edits its contents
sudo chmod 777 /var/www/html
# Changing ingot the directory where are index.html file is located
cd /var/www/html
# Editing the html file to display a simple web page
sudo echo "<!DOCTYPE html>
<html>
<body>

<h1>Welcome to the LUIT</h1>

<p>Hello Gold Team.</p>

</body>
</html>" > index.html


