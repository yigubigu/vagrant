# Copy key from Windows
copy %USERPROFILE%\.ssh\id_rsa .
copy %USERPROFILE%\.ssh\id_rsa.pub .

# Copy key to Linux

cp /vagrant/id_rsa .ssh/
cp /vagrant/id_rsa.pub  .ssh/
chmod 400 .ssh/id_rsa
 



