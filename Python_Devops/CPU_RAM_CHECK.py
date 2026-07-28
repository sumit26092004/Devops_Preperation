############# psutil library is used to get the CPU usage in percentage ############\
import psutil


threshold = (psutil.cpu_percent(interval=1))

############## Conditional statement to check if CPU usage is above the threshold ############

if threshold > 10:
    print ("Warning: CPU usage is above the threshold!")

else:
    print ("CPU usage is within the threshold.")

############ Loop to check CPU usage every second for 5 seconds ############
for i in range(5):
    cpu = psutil.cpu_percent(interval=1)

print("CPU usage:", cpu , "%")

print (psutil.cpu_percent(interval=1))   ##############33 checking the CPU usage in percentage ############
#print(dir(psutil)) #### Dir is used to get the list of all the attributes and methods of any object (functions, variables, etc.)

memory = psutil.virtual_memory()   ######### checking the virtual memory of the system ########

print (memory.percent)
print (memory.total) 
print(f"{psutil.virtual_memory().total / (1024**3):.2f} GB")
print(f"{psutil.virtual_memory().used / (1024**3):.2f} GB")

