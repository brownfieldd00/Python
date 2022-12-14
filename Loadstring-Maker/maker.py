base_url = 'https://raw.githubusercontent.com/brownfieldd00/Roblox/main/'

input_url = input('GitHub RAW URL: ')
game_link = input('Game link: ')

template = f'-- {game_link}\n' + f'loadstring(game:HttpGet("{input_url}"))()'

print()
print(template)