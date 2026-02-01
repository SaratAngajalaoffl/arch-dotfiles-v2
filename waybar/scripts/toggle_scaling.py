import subprocess
import json

SCALE_VALUES = [1, 1.6]

if __name__ == "__main__":
    result = subprocess.run(["hyprctl", "monitors", "-j"], capture_output=True)
    monitor_data = json.loads(str(result.stdout.decode()))[0]

    current_scale = monitor_data["scale"]

    curr_ind = SCALE_VALUES.index(current_scale)
    next_ind = (curr_ind + 1) % len(SCALE_VALUES)

    result = subprocess.run(["hyprctl", "monitors", "-j"], capture_output=True)

    subprocess.run(
        ["hyprctl", "keyword", "monitor", f",preferred, auto, {SCALE_VALUES[next_ind]}"]
    )
