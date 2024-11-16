# switch to root
    su -
# to remove packages
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# ssh copy public key to authorized key file to remote host
ssh-copy-id ansible@ubuntu1 # copy public key to authorised_keys file on remote host, if first time then they check for fingerprint auth as well
ssh-copy-id -i ~/.ssh/id_rsa.pub user@server # with file for specific public key
ssh ansible@ubuntu1 # without password

# sshpass
# password.txt contain password
# for no fingerprint auth "StrictHostKeyChecking=no"
for user in ansible root
do
        for os in centos ubuntu
        do 
                for instance in 1 2 3
                do 
                        sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
                done 
        done 
done