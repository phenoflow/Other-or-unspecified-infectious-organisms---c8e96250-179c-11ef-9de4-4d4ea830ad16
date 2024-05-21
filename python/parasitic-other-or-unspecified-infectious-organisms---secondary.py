# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"I98.1","system":"icd10"},{"code":"G02.8","system":"icd10"},{"code":"G94.0","system":"icd10"},{"code":"I43.0","system":"icd10"},{"code":"N77.1","system":"icd10"},{"code":"M01.8","system":"icd10"},{"code":"N08.0","system":"icd10"},{"code":"N77.0","system":"icd10"},{"code":"G63.0","system":"icd10"},{"code":"N29.1","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-or-unspecified-infectious-organisms-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["parasitic-other-or-unspecified-infectious-organisms---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["parasitic-other-or-unspecified-infectious-organisms---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["parasitic-other-or-unspecified-infectious-organisms---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
