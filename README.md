> NOTE: Dont forget to install haxe and running `haxelib install hscript`

Starting point for a crossplatform app scripted in hscript (scripts embedded ):

```
$ run Standalone 
Standalone.hx:9: {bar: 123}

building..
+ haxe -D js-es=6 -D hscriptPos -lib hscript -lib hxnodejs -main Standalone --js out.js
+ haxe -D hscriptPos -lib hscript -main Standalone --lua out.lua
+ haxe -D hscriptPos -lib hscript -main Standalone --python out.py
```

A scripting language in your Scripting language (scripts from disk):

```
$ ./run
main!
foo!
bar! 123
App.hx:30: {x: 1, y: 2}

building..
+ haxe -D js-es=6 -D hscriptPos -lib hscript -lib hxnodejs -main App --js out.js
+ haxe -D hscriptPos -lib hscript -main App --lua out.lua
+ haxe -D hscriptPos -lib hscript -main App --python out.py
```

```
$ lua out.lua
main!
foo!
bar! 123
App.hx:30: {x: 1, y: 2}
```

```
$ python3 out.py
main!
foo!
bar! 123
App.hx:30: {x: 1, y: 2}
```

```
$ node out.js
main!
foo!
bar! 123
App.hx:30: {x: 1, y: 2}
```
