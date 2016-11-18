def combine_dfs(data1, data2):    
    combined = data1.merge(data2, on = 'playerID', how = 'inner')
    return combined

batting_limited = combine_dfs(batting, batting_post)

batting_limited['AVG'] = batting_limited['H_x'] / batting_limited['AB_x']
batting_limited['AVGPOST'] = batting_limited['H_y'] / batting_limited['AB_y']

print batting_limited.columns
