#!/bin/bash

echo "Các công cụ hỗ trợ"
# Kiểm tra Python 2
if command -v python2 &>/dev/null; then
    printf "Python 2 "
fi

if dpkg -l | grep -q python-dev &>/dev/null; then
    printf "python-dev "
fi

if command -v mongo &>/dev/null; then
    printf "MongoDB "
fi

if command -v vboxmanage &>/dev/null; then
    printf "vboxmanage "
fi

if dpkg -l | grep -q build-essential &>/dev/null; then
    printf "build-essential "
fi

if dpkg -l | grep -q libffi-dev &>/dev/null; then
    printf "libffi-dev "
fi

if dpkg -l | grep -q libmagic-dev &>/dev/null; then
    printf "libmagic-dev "
fi

if dpkg -l | grep -q libjpeg-dev &>/dev/null; then
    printf "libjpeg-dev "
fi

if dpkg -l | grep -q libpng-dev &>/dev/null; then
    printf "libpng-dev "
fi

echo ""

# Kiểm tra nếu Cuckoo Sandbox đã được cài
if command -v cuckoo &>/dev/null; then
    echo "Đã cài đặt thành công Cuckoo SandBox"
fi
