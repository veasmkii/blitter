# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Blit.delete_all

Blit.create(user: 'Ryan',
            message: 'I added a view to @YouTube about the RaspberryPi!',
            created: '01-Jan-2012 16:00')

Blit.create(user: 'Ryan',
            message: 'How do you people find time to code in the evenings after work?!',
            created: '01-Jan-2012 17:55')

Blit.create(user: 'Beth',
            message: 'Reading. Again.',
            created: '02-Jan-2012 14:00')

Blit.create(user: "Tim O'Reilly",
            message: 'RT @Ryan Civic systems, in my opinion should be open sourced.',
            created: '03-Jan-2012 12:23')

Blit.create(user: 'Stephen Fry',
            message: 'Too pro for twitter.',
            created: '03-Jan-2012 12:24')

Blit.create(user: 'Joshua Bloch',
            message: "Just to be clear, I'm merely hacking an Arduino; I don't work for them.",
            created: '04-Jan-2012 19:16')

Blit.create(user: 'Adafruit',
            message: "I finally booted up @adafruit's Raspberry Pi distro!",
            created: '04-Jan-2012 20:45')

Blit.create(user: 'Joshua Bloch',
            message: "Just to be clear, I'm merely hacking an Arduino; I don't work for them.",
            created: '04-Jan-2012 19:16')

Blit.create(user: 'Beth',
            message: "Ticket man looked like Hugh Laurie...",
            created: '05-Jan-2012 20:38')

Blit.create(user: "Tim O'Reilly",
            message: "Hack turns subtitled BBC iplayer programs into kindle.",
            created: '05-Jan-2012 22:39')
