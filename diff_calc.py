with open("Bloeddruk_en_muziek/data.csv") as file:
    file = file.readlines()
for line in file:
    if "id" in line:
        result = line
    else:
        boven_diff = int(line.split(',')[4]) - int(line.split(',')[2])
        onder_diff = int(line.split(',')[5]) - int(line.split(',')[3])
        bpm_diff = int(line.split(',')[7]) - int(line.split(',')[6])
        line = line.replace('\n','')
        result += f"{line}{boven_diff},{onder_diff},{bpm_diff},\n"
print(result)
