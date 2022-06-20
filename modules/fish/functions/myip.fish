function myip
    set -l ip_address (curl -s ifconfig.me)"/32"
    echo $ip_address | pbcopy
    echo $ip_address
end
