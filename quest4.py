import pandas as pd

# Data, kinda messy
state_names = ["SP", "RJ", "MG", "ES", "Outros"] 
state_values = [67836.43, 36678.66, 29229.88, 27165.48, 19849.53] 

# Make a dataframe, it's like a fancy table
data = {'State': state_names, 'Values': state_values} 
df = pd.DataFrame(data)

# Get the total, gotta add it all up
total = 0
for val in df['Values']:
    total += val 

# Calculate percentages, the important part
percentages = []
for val in df['Values']:
    percent = (val / total) * 100
    percentages.append(round(percent, 2)) # Round to 2 decimal places

# Add percentages to the dataframe
df['Percentage'] = percentages

# Show the results, tada!
print(df)