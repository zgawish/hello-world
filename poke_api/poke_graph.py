import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import sqlalchemy
from sqlalchemy import create_engine

engine = create_engine('mysql://root:codio@localhost/poke_data')

data = pd.read_sql('SELECT name, height FROM poke_stats;', engine)

choices = ['red', 'blue', 'yellow', 'purple', 'green']
colors = [choices[i % 5] for i in range(26)]
data.plot(x="name", y="height", kind="bar", color=colors)
plt.show()