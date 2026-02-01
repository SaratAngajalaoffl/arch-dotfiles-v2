import subprocess
import json

if __name__ == "__main__":
    result = subprocess.run(["hyprctl", "monitors", "-j"], capture_output=True)
    monitor_data = json.loads(str(result.stdout.decode()))[0]
    scale = int(float(monitor_data["scale"]) * 100)

    print(
        json.dumps(
            {
                "text": scale,
                "tooltip": "Current Scale",
                "class": "class",
                "percentage": 10,
            }
        )
    )
