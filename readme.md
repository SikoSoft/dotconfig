# dotconfig

My attempt at creating an easy to manage repository for (dot) config files, like .eslintrc.json, .bashrc, .gitignore, etc.

### usage

Clone repo. Push to your own personal origin, while placing all your configuration files in config/. Add windows/ to your system $PATH.

Then, from any directory you want to pull a config file, use the following command:

`dotconfig get .eslintrc.json`

Obviously, replace `.eslintrc.json` with the name of a real file you have placed in config/.

### cred

written by Aaron Wright <aaron@sikosoft.com>

http://www.sikosoft.com