# Code Challenge Errors Documentation:

* Error: `./bin/shell.sh: line 15: $'\r': command not found`
    *  Solution: Navigate to the python folder, then run this command:  `sed -i 's/\r$//' bin/shell.sh`
 * Error: `jq command not found`
    *  Solution: install jq using the following command: `sudo apt install jq`
