GitHub Ping Pong TDD
===================

Cause that's how fancy we get!

Installation
------------

Fork this repository. Clone your fork to your computer.

I chose to write the code in coffeescript, and the tests with mocha.

You need node to start. I install node with nvm. Here's the nvm project page: https://github.com/creationix/nvm

Once you have node, install mocha, assert, and coffee-script modules

```
npm install -g mocha assert coffee-script
```

Running the tests
-----------------

Inside the root of the repository, run

```
mocha --compilers coffee:coffee-script/register
```
