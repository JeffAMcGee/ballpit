import json
import csv


keys={
    "pl_hostname", 'pl_disc', 'pl_status', 'pl_discmethod', 'pl_pnum',
    'pl_orbper', 'pl_orbsmax', 'pl_radj', 'pl_massj', 'st_dist', 'st_mass',
    'st_rad', 'ra', 'dec'
     }

with open('planets.csv') as f:
    lines = (line for line in f if line and line[0]!='#')
    reader = csv.reader(lines)
    first_row = next(reader)
    key_map = {
        key:index
        for index,key in enumerate(first_row)
        if key in keys
    }
    planets = [
        { key:row[index] for key, index in key_map.iteritems() }
        for row in reader
    ]

with open('planets.json','w') as outf:
    print>>outf, json.dumps({'planets':planets})
