import requests
url = 'http://text-processing.com/api/sentiment/'
myobj = {'text': input()}

response = requests.post(url, data = myobj)

print(response.json())