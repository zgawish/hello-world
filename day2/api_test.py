import requests
# import spotipy

CLIENT_ID = ""
CLIENT_SECRET = ""

AUTH_URL = "https://accounts.spotify.com/api/token"

# POST

auth_response = requests.post(AUTH_URL, {
  'grant_type': 'client_credentials',
  'client_id': CLIENT_ID,
  'client_secret': CLIENT_SECRET,
})


auth_response_data = auth_response.json()


access_token = auth_response_data['access_token']

path = "https://api.spotify.com/v1/"

# Get Cole content
token = "Bearer {token}".format(token=access_token)
header = {
  "Authorization": token
}

artist_id = "6l3HvQ5sa6mXTsMTB19rO5"
cole_response = requests.get(path + "artists/" + artist_id, headers=header)
cole_data = cole_response.json()
artist = cole_data['name']
followers = cole_data['followers']['total']
popularity = cole_data['popularity']
msg = "{artist} has {followers} followers on Spotify and has a popularity score of {score}".format(artist=artist, followers=followers, score=popularity)


print(msg)
