#!/bin/sh

sed -i 's/^#baseurl=http:\/\/download\.fedoraproject\.org\/pub\/fedora/baseurl=http:\/\/fedora\.is\.co\.za/' /etc/yum.repos.d/*
#sed -i 's/^#baseurl=http:\/\/download1\.rpmfusion\.org/baseurl=http:\/\/mirror\.wbs\.co\.za\/RPMFusion/' /etc/yum.repos.d/*
sed -i 's/^baseurl=http:\/\/mirror\.wbs\.co\.za\/RPMFusion/baseurl=http:\/\/download1\.rpmfusion\.org/' /etc/yum.repos.d/*
sed -i 's/^metalink/#metalink/' /etc/yum.repos.d/*
