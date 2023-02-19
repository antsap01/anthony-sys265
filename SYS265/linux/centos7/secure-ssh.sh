
#secure-ssh.sh
#author antsap01
#creates a new ssh user using $1 parameter
read -p "Add user: " username
useradd -m -d /home/"${username}" -s /bin/bash "${username}"
mkdir /home/"${username}"/.ssh
cp /home/anthony/anthony-sys265/SYS265/linux/public-keys/id_rsa.pub /home/"${username}"/.ssh/authorized_keys
chmod 700 /home/"${username}"/.ssh
chmod 600 /home/"${username}"/.ssh/authorized_keys
chown -R "${username}":"${username}" /home/"${username}"/.ssh
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
echo "ALL YOUR CODE GOES HERE"
