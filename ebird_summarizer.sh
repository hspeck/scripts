#! /bin/bash

# the next line will create a new file called formatted_eBird_data.csv
replace_newlines.sh eBird_data.csv

# the next line will replace all extra commas and will replace the contents of formatted_eBird_data.csv
sed 's/,\s/ /g` formatted_eBird_data.csv > formatted_eBird_data.csv

 read in the file
# Note: change this path to match <output_file> created above

in_file = open("/home/eeb177-student/Desktop/eeb-177/class-assignments/nature21074-f1.csv")

# get rid of the first line of the file
# the first line is the header- we don't want it to end up 
# in our dictionary!
in_file.readline()

# initialize an empty dictionary
my_dict = {}

# for each file in the dataset
for line in in_file:
    # print(line)
    
    # first, split up the full line into constituent parts
    split = line.split(",")
    
    # species is in the fourth column
    species = split[3]
    
    # family is in the eight family, but that family also 
    # includes a bunch of common names for the family
    # we can get rid of that stuff by splitting and capturing
    # just the first element
    
    family = split[7].split()[0]
    # TO DO for students:
    # As it stands, the `family` variable sometimes includes 
    # the quotation mark at the beginning 
    # for example:
    # "Anatidae
    # How can you modify `family` to not include the quotation mark?
   
    # populate the dictionary
    my_dict[species] = family

# You can print out the dictionary now:
# (commenting out to keep this file clean)

#for sp in my_dict:
#    print(sp + " is in the family " + my_dict[sp])
# close the file!
in_file.close()
