#!/bin/bash
rsync -avz -e "ssh -p 9999" ~/myVault u0_a323@192.168.1.17:~/storage/documents/
