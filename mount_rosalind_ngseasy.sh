#!/bin/bash
sshfs ubuntu@10.200.100.40:/home /Users/sjnewhouse/mount \
-oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=Rosalind_Image,IdentityFile=~/sjn-rosalind-compbio.pem
