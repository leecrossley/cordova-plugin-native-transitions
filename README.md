## Native Transitions Plugin for Apache Cordova

Emulating transitions are a thing of the past, you can now use real native page transitions directly from your JavaScript!

[![Video](http://ilee.co.uk/img/transition.png)](https://vimeo.com/81980283)

You can read the full blog post [here](http://ilee.co.uk/native-page-transitions-with-phonegap/).

## Install

```
cordova plugin add https://github.com/leecrossley/cordova-plugin-native-transitions.git
```

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a nativetransitions object to your root automatically when you build.

## Transitions

### Flip

```js
var duration = 0.5, // animation time in seconds
    direction = "right"; // animation direction - left || right
nativetransitions.flip(duration, direction, onComplete);
```

### Curl

```js
var duration = 0.5, // animation time in seconds
    direction = "down"; // animation direction - up || down
nativetransitions.curl(duration, direction, onComplete);
```

### Fade

```js
var duration = 0.5; // animation time in seconds
nativetransitions.fade(duration, onComplete);
```

## Example

Here's an example of how I suggest you use the plugin in your code, so that you get a realistic transition:

```js
setTimeout(function() {
    // Change your html here
}, 50);
nativetransitions.flip(duration, direction);
```

## Platform Support

Currently iOS only (version 4+ I think).

## License

[MIT License](http://ilee.mit-license.org)