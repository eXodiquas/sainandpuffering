# Sain and Puffering
Switcharoo around letters just for fun!

## Why?
This thing was created for [togglebits](https://www.twitch.tv/togglebit) terminal code jam. The theme was *pain and suffering*, and all people suffer whenever I switch the letters of words arounds in my daily use of language, so you can now suffer aswell by using this handy little tool. The sad part is, english is not a very regular language so I just have a dictionary in the assets folder with around 1500 nouns. If you want to add one for yourself just add a new line with the noun, if the plural is irregular you have to add it aswell.

## Compile and Run
- Get `dub` for your system, not sure if you have to get `dmd` as a D compiler aswell, or if `dub` depends on it.
- 'cd' into the source directory of this repository
- 'dub run -- "Your text to switcharoo, for sain and puffering.'
- You can also echo pipe from the terminal like this: `echo "Hello darkness my old friend!" | sainandpuffering` to do suffer even more.
- You can also just do `sainandpuffering` in your terminal and write whatever you want into stdin, after you finished you can just do `ctrl+d` (or `C-d` for my EMACS peeps) to flush the input into the program.

## Usage
Please do not use this tool. There are only a fraction of a fraction of people who find this funny. It isn't even done that good because some letter combinations don't switch that good, for example *shoe* and *room* would result in *rhoe* and *soom* and the first one doesn't read that good imo.

What I want to say is: USE AT OWN RISK

## Roadmap
I just realized the path to the dictionary is hardcoded, so I should probably fix this problem by introducing some kind of environment file.

- [ ] .env file 

## Code Style
The code is a mess, because everytime I try to build a command line application my code for the front-end gets spaghettificated, nobody knows why. It just happens.
