lizardchest = User.create(username: "lizardchest", password: "lizardword")
hunkMuffin = User.create(username: "HunkMuffin", password: "password")

hunkMuffin.created_entries.create(letter: Letter.create(symbol: "a") , word: "allerginate", description: "to make someone that was previously not allergic to something.. now allergic to that thing", example: "I really liked anchovies until doctor brett allerginated me to them. Now if I even smell them I'll drop dead. Wait, what was on that pizza?")
hunkMuffin.created_entries.create(letter: Letter.create(symbol:  "b"), word: "bastarmize", description: "Mideval term for having illegal sex with the bastard son of a duke", example: "Wait? Have I been bastarmizing with Godrick this whole time? May the everlords have mercy on me in the after realms.")

lizardchest.created_entries.create(letter: Letter.create(symbol:  "e"), word: "crustexema", description: "Do you know what exema is? Well, this is worse than that, and also has traces of an ancient strain of rabies.", example: "That girl had mad crustexema, so I gave her the number to my dermatologist.")
lizardchest.created_entries.create(letter: Letter.create(symbol: "c"), word: "elliuminagination", description: "The ability to make any idea sound like a good idea.",  
                                    example: "Stealing the president's daughter was a bad idea but because Daryl had a lot of elliuminagination we all went ahead and tried to do it any way." )
