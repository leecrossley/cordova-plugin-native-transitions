## Native Transitions Plugin for Apache Cordova [![npm version](https://badge.fury.io/js/cordova-plugin-native-transitions.svg)](http://badge.fury.io/js/cordova-plugin-native-transitions)

Emulating transitions are a thing of the past, you can now use real native page transitions directly from your JavaScript!

[![Video](http://ilee.co.uk/img/transition.png)](https://vimeo.com/81980283)

You can read the full blog post [here](http://ilee.co.uk/native-page-transitions-with-phonegap/).

#### Live demo

See this plugin working in a live app: http://playadds.com

## Install

#### Latest published version on npm (with Cordova CLI >= 5.0.0)

```
cordova plugin add cordova-plugin-native-transitions
```

#### Latest version from GitHub

```
cordova plugin add https://github.com/leecrossley/cordova-plugin-native-transitions.git
```

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a nativetransitions object to your root automatically when you build.

#### PhoneGap build

Add the following to your `config.xml` to use version 0.1.4 (you can also omit the version attribute to always use the latest version). You should now use the npm source:

```
<gap:plugin name="cordova-plugin-native-transitions" version="0.2.3" source="npm" />
```

For more information, see the [PhoneGap build docs](http://docs.build.phonegap.com/en_US/configuring_plugins.md.html#Plugins).

## Transitions

### Flip

```js
var duration = 0.5, // animation time in seconds
    direction = "right"; // animation direction - left | right | top | bottom
nativetransitions.flip(duration, direction, onComplete);
```

### Curl

```js
var duration = 0.5, // animation time in seconds
    direction = "down"; // animation direction - up | down
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

Currently iOS only (version 5 and higher).

## License

[MIT License](http://ilee.mit-license.org)
