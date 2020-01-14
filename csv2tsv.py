import pandas as pd

csvfile = pd.read_csv('comment_train.csv')
csvfile.to_csv('comment_train.tsv', sep='\t', index=None)