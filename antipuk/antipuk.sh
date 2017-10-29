#This script aims to prevent an issue which campe up after an update to MacOS High Sierra.
#It causes random popping coming out of the speakers when coreaudiod decides to go to sleep. 


function getCoreaudiodPid() {
    local pid="$(ps aux | grep /usr/sbin/coreaudiod | head -1 | awk '{print $2}')"
    echo $pid
}

pid="$(getCoreaudiodPid)"
while true
do
    #get the cpu usage of coreaudiod
    usage=$(ps -p $pid -o %cpu | tail -1)

    #check if is higher than 0
    isActive="$(echo $usage'>'0 | bc)"
    if [ $isActive -eq 0 ]
    then
        #keep coreudiod active without procuding a sound
        say ' ' 
    fi
    
    sleep 2
done