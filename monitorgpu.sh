#!/bin/bash -i
resize -s 50 60
sudo watch -n 0.5 cat /sys/kernel/debug/dri/0/amdgpu_pm_info
