# audit\_known\_hosts

This script reads a list of hostnames/IP addresses from `$list` and runs `ssh-keyscan` on them to determine the hosts - saving it in a new `known_hosts` file.

Why? Because often you end up connecting to a lot of temporary machines like VM's and the file gets cluttered very easily.
