# Sain and Puffering
Switcharoo around letters just for fun!

## Why?
This thing was created for [togglebits](https://www.twitch.tv/togglebit) terminal code jam. The theme was *pain and suffering*, and all people suffer whenever I switch the letters of words arounds in my daily use of language, so you can now suffer aswell by using this handy little tool. The sad part is, english is not a very regular language so I just have a dictionary in the assets folder with around 1500 nouns. If you want to add one for yourself just add a new line with the noun, if the plural is irregular you have to add it aswell.

## Compile and Run
- Get `dub` for your system, not sure if you have to get `dmd` as a D compiler aswell, or if `dub` depends on it.
- 'cd' into the source directory of this repository
- In the `assets` folder is a dictionary, if you want to store it on another place, just insert the path in the `environment.env` file. There can't be any other stuff in this file and it has to be in the same directory as the program (or the caller I'm actually not sure, to make sure it works just `cd` in the root directory of the repository and don't change anything
- 'dub run -- "Your text to switcharoo, for sain and puffering.'
- You can also echo pipe from the terminal like this: `echo "Hello darkness my old friend!" | sainandpuffering` to sufferoni even more.
- You can also do `sainandpuffering` in your terminal and write whatever you want into stdin, after you finished you can do `ctrl+d` (or `C-d` for my EMACS peeps) to flush the input into the program.

## Usage
Please do not use this tool. There are only a fraction of a fraction of people who find this funny. It isn't even done that good because some letter combinations don't sound good after switching, for example *arity* and *function* would result in *frity* and *aunction* and they do not sound or read that good. But we probably just have to life with the fact that some words sound more like chants to the *Gld Oods*.

What I want to say is: USE AT OWN RISK

## Code Style
The code is a mess, because everytime I try to build a command line application my code for the front-end gets spaghettificated, nobody knows why. It just happens.
