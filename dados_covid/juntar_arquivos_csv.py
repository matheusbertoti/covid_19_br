#ANTES DE EXECUTAR, CADA ARQUIVO CSV DEVE TER O SIMBOLO "," SUBSTITUIDO POR "-".


import os
import glob
import pandas as pd
#set working directory
os.chdir("D:\Documentos\Projetos\Painel_Covid_BR\dados")

#find all csv files in the folder
#use glob pattern matching -> extension = 'csv'
#save result in list -> all_filenames
extension = 'csv'
all_filenames = [i for i in glob.glob('*.{}'.format(extension))]
#print(all_filenames)

#combine all files in the list
dados = pd.concat([pd.read_csv(f) for f in all_filenames ])
#export to csv
dados.to_csv( "combined_csv.csv", index=False, encoding='utf-8-sig')

