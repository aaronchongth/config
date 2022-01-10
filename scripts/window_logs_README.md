# Setup

```bash
sudo apt install xdotool
```

# Test run the script

```bash
python3 /path/to/window_logs.py
```

# Add to startup

If all works fine, add to Startup Applications: Dash > Startup Applications > Add
Add the command.

```bash
/bin/bash -c "sleep 15 && python3 /path/to/window_logs.py"
```

# Reverse the sorting order

To reverse the sorting order, simply change the argument in the head of the script:

```python
# -- set sorting order. up = most used first, use either "up" or "down"
order = "up"
```

# Credits

[source](https://askubuntu.com/questions/883557/how-can-i-make-this-window-application-time-track-script-produce-sorted-outpu/883747#883747)
