#  Steps / Info

1. Add a new Property List file
	1. A good way to name the file is <Name of the API>-Info.plist
1. Set the key/value pair for actual API key
	1. We'll set the key as "API_KEY"
	1. The value will be the api key itself
	1. The data type will be `String` since most api keys are strings
1. Write some code to read the api key from the plist file
	1. For this project, I made a `TMDBServiceConstants.swift` file
1. If there is a `.gitignore` file, add the plist created to the gitignore file
	1. If there isn't one, create it and add the plist to that file
	1. Add the the plist file to the `.gitignore` file in this format: `/TMDB-Info.plist`
1. Provide a sample file that other devs can use
	1. Remember to remove the sample file from any build targets
	1. Don't want it in the app's binary — only relevant when checking out the project from the repo

## Bonus
We can actually have our TMDB-Info.plist file created automatically after the project is checked out from the repo using Xcode build phases.

1. Select your target in the Xcode project editor
1. Navigate to _Build Phases_
1. Add a new _Run Script_ build phase, making sure it is the first build phase in your target. Name this new phase _Copy sample API Key_.
1. I marked it as "For install builds only". This is something I will need to look into further. Leaving it the way the article does, a warning is created saying that it will run during every build because no outputs are specified. I feel like setting it to "install builds only" makes sense though.

---

## Links
I learned this from [this article](https://peterfriese.dev/posts/reading-api-keys-from-plist-files/). 
