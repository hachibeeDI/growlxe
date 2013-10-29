# growlxe

This is library for growlnotify that make growl callable from Haxe.

This repository is also test for how to use haxelib.


### Usage

```bash
$ haxelib git growlxe https://github.com/hachibeeDI/growlxe.git
```

in build.hxml

```
-lib growlxe
-main Main
-neko main.n
```

```haxe
import growl.Growl;
var g = new Growl();
g.notify('title', 'text for message');
```
