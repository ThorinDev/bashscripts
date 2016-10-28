echo "let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

# get the load averages
read one five fifteen rest < /proc/loadavg

echo "$(tput setaf 2)
   .~~.   .~~.    `date +"%A, %e %B %Y, %r"`
  '. \ ' ' / .'   `uname -srmo`$(tput setaf 1)
   .~ .~~~..~.
  : .~.'~'.~. :   Uptime.............: ${UPTIME}
 ~ (   ) (   ) ~  Memory.............: $((`cat /proc/meminfo | grep MemFree | awk {'print $2'}`/1024))MB (Free) / $((`cat /proc/meminfo | grep MemTotal | awk {'print $2'}`/1024))MB (Total)
( : '~'.~.'~' : ) Temperature........: `vcgencmd measure_temp | sed "s/temp=//"`
 ~ .~ (   ) ~. ~  Running Processes..: `ps ax | wc -l | tr -d " "`
  (  : '~' :  )   IP Addresses.......: `/sbin/ifconfig | /bin/grep "Bcast:" | /usr/bin/cut -d ":" -f 2 | /usr/bin/cut -d " " -f 1` / `wget -q -O - http://icanhazip.com/ | tail`
   '~ .~~~. ~'    Weather............: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=DERBY" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
       '~'
$(tput sgr0)"
#General
alias update='sudo apt-get update -y'
alias upgrade='sudo apt-get upgrade -y'
alias dist-upgrade='sudo apt-get dist-upgrade -y'
alias install='sudo apt-get install -y'
alias remove='sudo apt-get remove -y'
alias c='clear'
#CD
alias htmlserver='cd /var/www/html'";
