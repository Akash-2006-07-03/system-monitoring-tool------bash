# system-monitoring-tool------bash

<h3> System Monitor:</h3>

A simple Bash script to monitor CPU, RAM, and Disk usage in real-time with color-coded output.

<h3> Features:</h3>

Shows CPU, RAM, and Disk usage

<h3>Color codes:</h3>

Green → <50%

Yellow → 50–79%

Red → 80%+

Updates every 5 seconds

<h3>Requirements:</h3>

Linux with mpstat, free, df, awk, bc

<h3>Install (if needed):</h3>

sudo apt install sysstat bc   # Ubuntu/Debian

<h3>Usage:</h3>
chmod +x monitor.sh

./monitor.sh

<h3>Example:</h3>
2025-08-16 15:42:10: CPU: 23% | RAM: 45% | DISK: 61%
