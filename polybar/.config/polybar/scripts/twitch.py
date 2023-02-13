#!/usr/bin/env python3
import requests
import time
import itertools
import urllib.parse

# BEARER TOKEN aalfnq77cxljdjx6mz69835dlprvxu

# GET https://id.twitch.tv/oauth2/authorize
#     ?client_id=<your client ID>
#     &redirect_uri=<your registered redirect URI>
#     &response_type=<type>
#     &scope=<space-separated list of scopes>

def getID(client, user):
    '''
    Get the user id from the twitch login username
    '''
    r = requests.get('https://api.twitch.tv/helix/users?login=' + user, \
            headers = client)
    data = r.json()
    reqID = data['data'][0]['id']
    return reqID

def getBearerToken():
    API_ENDPOINT = 'https://api.twitch.tv/helix/users?login=tuteaz'
    TWITCH_OAUTH_URL = 'https://id.twitch.tv/oauth2/authorize'
    CLIENT_ID = 'idc4m5c4igsgrclj6tkkdowbracg9l'
    CLIENT_SECRET = '7zz8ke35c0qsvgpjhy0dpw466vnt0n'
    REDIRECT_URI = 'https://localhost'
    RESPONSE_TYPE = 'token'
    SCOPE = 'user:read:follows user:read:broadcast channel:read:subscriptions channel:read:stream_key'

    params = {
            'client_id': CLIENT_ID,
            'redirect_uri': REDIRECT_URI,
            'response_type': RESPONSE_TYPE,
            'scope': SCOPE
    }

    print(TWITCH_OAUTH_URL + '?' + urllib.parse.urlencode(params))

def getFollowedChans(client, user):
    '''
    return a list of all the user id's followed by the given user id
    '''
    r = requests.get('https://api.twitch.tv/helix/users/follows?from_id=' \
            + user, headers = client)
    data = r.json()
    # look into this with mpas
    followedChans = list()
    for i in data['data']:
        followedChans.append(i['to_login'])
    return ['thefishougo', 'theprimeagen', 'bashbunni'] #followedChans


def getOnlineChans(channels, headers):
    '''
    Check followed channels to see which are streaming, make a dict with the
    channel name, containing the game name
    '''
    for stream in channels:
        r = requests.get('https://api.twitch.tv/helix/streams?user_login=' + stream, \
                headers = headers)
        streamer = r.json()
        if streamer['data']:
            print(stream)
        #     # onlineChans[stream] = {'name': \
        #     #         online['stream']['channel']['display_name'], \
        #     #         'game': online['stream']['game']}
        #     # printStreams(onlineChans.items())
            time.sleep(5)


def printStreams(dic):
    for chan, info in dic:
        print('{}: {}'.format(info.get('name'), info.get('game')))

headers = {'Client-ID': 'idc4m5c4igsgrclj6tkkdowbracg9l',
        'Authorization': 'Bearer gr8c06npmu2w80pv6udkf5fap9h7jm'}

if __name__ == "__main__":
    username = 'tuteaz'
    while True:
        if username:
            userID = getID(headers, username)
            onlineChans = getOnlineChans(getFollowedChans(headers, userID), headers)
        else:
            print('Invalid or empty Twitch username.\nWrite your username in the '
            'settings.py file')
