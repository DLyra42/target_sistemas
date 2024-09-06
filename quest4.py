import pandas as pd

state_names = ["SP", "RJ", "MG", "ES", "Outros"] 
state_values = [67836.43, 36678.66, 29229.88, 27165.48, 19849.53] 

data = {'State': state_names, 'Values': state_values} 
df = pd.DataFrame(data)

total = 0
for val in df['Values']:
    total += val 

percentages = []
for val in df['Values']:
    percent = (val / total) * 100
    percentages.append(round(percent, 2))

df['Percentage'] = percentages

print(df)
