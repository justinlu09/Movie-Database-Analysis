import pandas as pd
import numpy as np
import sqlalchemy

engine = sqlalchemy.create_engine('postgresql://justin:mypass@localhost:5432/movies')

data_movies = pd.read_excel('movies_sep.xlsx', sheet_name = 'Movies', index_col = None)
data_studios = pd.read_excel('movies_sep.xlsx', sheet_name = 'Studios', index_col = None)
data_directors = pd.read_excel('movies_sep.xlsx', sheet_name = 'Directors', index_col = None)
data_actors = pd.read_excel('movies_sep.xlsx', sheet_name = 'Actors', index_col = None)
data_writers = pd.read_excel('movies_sep.xlsx', sheet_name = 'Writers', index_col = None)
data_countries = pd.read_excel('movies_sep.xlsx', sheet_name = 'Countries', index_col = None)

data_movies.to_sql('movies', engine, index=False)
data_studios.to_sql('studios', engine, index=False)
data_directors.to_sql('directors', engine, index=False)
data_actors.to_sql('actors', engine, index=False)
data_writers.to_sql('writers', engine, index=False)
data_countries.to_sql('countries', engine, index=False)