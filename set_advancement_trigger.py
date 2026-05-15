# A script writen by Ulraf for the Plunder-Pearl-Progress datapack
# When run: The script will add function file <function_value> to completion of every advancement

import os
import os.path as path
import json

DATA_PATH = path.join('data')

function_value = 'ppp:advancement_made'

print("Searching for any advancements in datapacks...")
advancement_paths = []
for datapack in os.listdir(DATA_PATH):
    possible_advancement_path = path.join(DATA_PATH, datapack, 'advancement')
    if path.isdir(possible_advancement_path):
        print(f" - \"{datapack}\" has an advancement folder")
        advancement_paths.append(possible_advancement_path)
    else:
        print(f" - \"{datapack}\" has no advancement folder, skipping")

for advancement_path in advancement_paths:
    print()
    print(f"Updating advancements in \"{advancement_path}\"...")
    for folder in os.listdir(advancement_path):
        folder_path = path.join(advancement_path, folder)
        if not path.isdir(folder_path):
            print(f" - \"{folder}\" is not a folder, skipping")
            continue
        if folder == 'recipes':
            print(f" - \"{folder}\" is the recipes folder, skipping")
            continue
        print(f" - Updating advancements in \"{folder}\"...")
        for advancement_file in os.listdir(folder_path):
            advancement_file_path = path.join(folder_path, advancement_file)
            if not path.isfile(advancement_file_path):
                print(f"   - \"{advancement_file}\" is not a file, skipping")
                continue
            print(f"   - Updating \"{advancement_file}\"...")
            data = {}
            with open(advancement_file_path, 'r') as json_file:
                data = json.load(json_file)
                if 'rewards' not in data:
                    data['rewards'] = {}

                rewards = data['rewards']
                rewards['function'] = function_value
                
            with open(advancement_file_path, 'w') as json_file:
                json.dump(data, json_file)
