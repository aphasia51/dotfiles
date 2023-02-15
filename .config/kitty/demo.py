import psutil

# battery = psutil.sensors_battery()
# plugged = battery.power_plugged
# percent = battery.percent
# if plugged == False:
#     plugged = "Not Plugged In"
# else:
#     plugged = "Plugged In"
# battery_pct = percent
#
# if battery_pct < 0:
#     status = ""
# if plugged == False:
#     status = "demo"
# else:
#     status = f"{''[battery_pct // 10]}{battery_pct}"
#
# try:
#         # battery_pct = int(subprocess.getoutput("headsetcontrol -b -c"))
#     battery = psutil.sensors_battery()
#     battery_pct = battery.percent
# except Exception:
#     status = ""
# else:
#     if battery_pct < 0:
#         status = ""
#     else:
#         status = f"{battery_pct}% {''[battery_pct // 10]}"
#
# print(f"@{status}")


import subprocess

b = subprocess.getoutput("pmset -g batt")
bi = b.split()
print(bi)
num = bi[7][:-1]
flag = bi[8][:-1]
print(num, flag)
