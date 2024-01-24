import pandas as pd 

x = 'Ho LA'
print(x.upper())
print(x.replace('L', 'N'))
print(x.split(sep='L'))
print('-'.join(x))

# Indexation 
print(x[2:])
print(x[-1])
#y = input('donner une valeur :')
#print(type(y))

################################## List #######################################
# methode .extend()
l = [1,2,3]
#l.append([1,2,3])
print(len(l))
#.pop(possion de l element a supprimer)

######## max(l) et min(l) ################### 
############################# La bibloitheque statistics de python pour calculer la moyenne statistics.mean(l)  --- statistics.median(l) ...
l = l.sort()    # trier 

# Transformer un dictionnaire en data frame en utilisant pandas : pd.DataFrame(dict)
# Pour transposer un data frame df.T 

# LES FONCTIONS EN PYTHON / 
def somme(a,b):
    if type(a) == type(b):
        return a+b
    else:
        print('desole ????')

print(somme(2,'N'))

nombre = [1, 2, 3, 4, 5]
nombre_car = map(lambda x: x**2, nombre)

print(list(nombre_car))

######## NUMPY #############
#np.shape
#.mean .....

########## PANDAS ##################
# pd.DataFrame(tab, columns =[ , , , ], index = [ , , ])
# df.iloc[ligne]
# df.loc[nom_ligne (index)] 
# concatener deux data frame df1.append(df2)
# supprision des doublons : df.drop_duplicates()
# supprision des nulls : df.dropna()
# remplacer les nulls : df.fillna(valeur)
# supprimer une colonne : df.drop(['col1','col2', ...],axis = 1)



##################### PYSPARK ################################
import pyspark 
from pyspark.sql import SparkSession 

# Initialiser une session Spark
spark = SparkSession.builder.appName("ExemplePySpark").getOrCreate()
#df_spark = spark.read.csv('file', header = True, inferSchema = True)
# Ajouter une colonne df_pyspark.withColumn('new_name', values)
# df_spark.drop('nom_col')
# df_spark.withColumnRenamed('col', 'new.col')
# df_spark.na.drop() supprimer des nulls
# df.select('col1').show() selectionner la col1

