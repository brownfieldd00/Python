import json
from requests import get
with open('config.json') as f:
    config = json.load(f)

def get_messages():
    res = get('https://discord.com/api/v8/channels/1040506279115890728/messages', headers={'Authorization': config['token']})
    return res.json()

found = []
for message in get_messages():
    print(message['attachments'])
    if message['attachments'] and message['attachments'][0]:
        found.append(message['attachments'][0])

for message in found:
    data = get(url=message['url'], allow_redirects=True)
    file = open(file='./messages/' + message['filename'], mode='wb')
    file.write(data.content)
    file.close()

