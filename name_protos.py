import sqlite3
import pandas as pd


# First make a dictionary with the prototypes and agent id
df_proto = pd.read_csv('prototypes.csv', usecols=['Prototype','AgentId'])
proto_dict = df_proto.to_dict(orient='Prototype')

