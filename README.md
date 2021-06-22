# k9slogdump
This is a small plugin for the [k9s](https://github.com/derailed/k9s) tool which allows you to dump entire log files from a pod to your local machine.
Thanks for [@a-jackson](https://github.com/a-jackson) for his help with getting this working. 

## Setup
To setup this plugin you'll need to place the two provided files in the correct places and update their contents slightly.

1. **log-grab.ps1**: This file need to be placed anywhere it's executable by k9s. Inside here you'll need to update the dump path to be anywhere you'd like your logs dumped. The default is C:\logs
2. **plugin.yml**: This is the k9s plugin file and must go in the `.k9s` directory in your profile directoy (windows). In this file you can modify the keyboard shortcut (default Control+J) and the path to the shell of your choice (defaults to powershell 7 preview). You also need to make sure the argument in the arguments list at the bottom points to the grab file described above.

## Useage
When ever you have a pod selected in the `k9s` ui you can simply press to shortcut (deefaults: Control+J) to download the entire pod log to the local file system in the location specified in step 1 of the setup.
