# A script writen by Ulraf for the Plunder-Pearl-Progress datapack
# When run: The script will add function file <function_value> to completion of every advancement

import os
import os.path as path
import json

function_value = 'ppp:advancement_made'

for datapack in os.listdir('..'):
    datapack_path = path.join('..', datapack, 'data')
    if path.isdir(datapack_path):
        for namespace in os.listdir(datapack_path):
            namespace_path = path.join(datapack_path, namespace, 'advancements')
            if path.isdir(namespace_path):
                for namespace_group in os.listdir(namespace_path):
                    namespace_group_path = path.join(namespace_path, namespace_group)
                    if namespace_group != 'recipes' and path.isdir(namespace_group_path):
                        for advancement in os.listdir(namespace_group_path):
                            advancement_path = path.join(namespace_group_path, advancement)
                            data = {}
                            with open(advancement_path, 'r') as json_file:
                                data = json.load(json_file)
                                if 'rewards' not in data:
                                    data['rewards'] = {}

                                rewards = data['rewards']
                                rewards['function'] = function_value
                                
                            with open(advancement_path, 'w') as json_file:
                                json.dump(data, json_file)
                print('Updating [' + datapack + '/' + namespace + ']')
