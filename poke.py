import sqlalchemy
from sqlalchemy import create_engine
import requests
import pandas as pd

# use mysql to create schema first

def add_to_table(data, engine):
    print("adding to table")
    dataf = pd.DataFrame(data, index=[0])
    dataf.to_sql('poke_stats', con=engine, if_exists='replace', index=False)

    
def get_request(pokemon):
    return requests.get('https://pokeapi.co/api/v2/pokemon/{endpoint}/'.format(endpoint=pokemon))
    
    
def handle_request(pokemon):
    response = get_request(pokemon)
    if response.status_code == 200:
        print("Getting data for " + pokemon + "...")
        response_data = response.json()
        pid = response_data['id']
        n = response_data['name']
        h = response_data['height']
        exp = response_data['base_experience']
        weight = response_data['weight']
        order = response_data['order']
        data = {'id': pid, 'name': n, 'height': h, 'base_experience': exp, 'weight': weight, 'order': order}
        return data
    else:
        return {}
    
    
def main():
    # establish connection to db
    print("Creating engine...")
    print("Press enter to cancel")
    engine = create_engine('mysql://root:codio@localhost/poke_data')
    pokemon = input("ENTER A POKEMON NAME: ")
    while pokemon != "":
        data = handle_request(pokemon)

        if len(data) == 0:
            print("Invalid input")
            return
        try:
            add_to_table(data, engine)
        except:
            print("Engine cannot connect. Try checking database first.")

        pokemon = input("ENTER A POKEMON NAME: ")

    
if __name__ == '__main__':
    main()
