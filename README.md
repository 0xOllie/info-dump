# info-dump
A small, portable batch script that grabs various system information for diagnostics.
---
## Usage
Using this script is very easy, run it on a windows PC and a data directory will be created in the same place as the script.
The data directory will contain a number of files, below is a list of these files and their purpose.

* applicationLog.evtx - This file is the log for application errors and information
* installedPrograms.txt - A list of installed programs on the machine
* networkInfo.txt - This file contains network information, including ip info, active TCP connections and a list of running services
* setupLog.evtx - This is the setup log for the machine
* systemInfo.txt - Contains information about system hardware and its configuration in the OS
* systemLog.evtx - A system log that hold error information about the OS, very useful for troubleshooting
