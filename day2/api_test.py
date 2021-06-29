import requests
import spotipy

CLIENT_ID = "6fb423d12fc4495998745bbd73900b72"
CLIENT_SECRET = "d4fd4f04fa4b4d9a9483a3d79d7075cf"

AUTH_URL = "https://accounts.spotify.com/api/token"

# POST

auth_response = requests.post(AUTH_URL, {
  'grant_type': 'client_credentials',
  'client_id': CLIENT_ID,
  'client_secret': CLIENT_SECRET,
})

print(auth_response.status_code)

auth_response_data = auth_response.json()

print(auth_response_data)

access_token = auth_response_data['access_token']

path = "https://api.spotify.com/v1/"

# Get Cole content
token = "Bearer {token}".format(token=access_token)
print(token)
header = {
  "Authorization": token
}

artist_id = "6l3HvQ5sa6mXTsMTB19rO5"
cole_response = requests.get(path + "artists/" + artist_id, headers=header)



print(cole_response.json())