This script aims to prevent an issue which came up after an update to MacOS High Sierra.
It causes random popping coming out of the speakers when coreaudiod decides to go to sleep. 

1. Get PID of coreaudiod process.
1. Get CPU usage of coreaudiod using the PID.
1. Prevent coreaudiod from going to sleep without producing a sound by executing `say ' '`.
1. Sleep for 1 second.
1. Repeat from step 2.

#### Instalation:

Copy `antipuk.plist` to `/Library/LaunchDaemons`.

