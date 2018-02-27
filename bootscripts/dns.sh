# this file modifies the resolv.conf file located in /etc/; if the usb stick is not inserted
# (and this file is hence unavailable, the dns in /etc/resolv.conf will be used instead.

+chattr -i /etc/resolv.conf
sed -i 's/???.???.?.?/input_your_new_IP_here/g' resolv.conf
+chattr +i /etc/resolv.conf
