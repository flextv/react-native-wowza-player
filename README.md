# react-native-wowza-player

React Native wrapper for the Wowza's GoCoder SDK Player (WOWZPlayer).

**Only iOS support has been added so far, feel free to contribute Android.**

For the Wowza GoCoder SDK Broadcaster functionality, please see [react-native-wowza-gocoder](https://github.com/medlmobileenterprises/react-native-wowza-gocoder).

## Getting started

`$ npm install react-native-wowza-player --save`

### Mostly automatic installation

`$ react-native link react-native-wowza-gocoder`

### Manual installation

#### iOS

1. Add `WowzaGoCoderSDK.framework` to the `ios/` directory in your project.
2. In Xcode, add `WowzaGoCoderSDK.framework` to the Embedded Binaries (this will also add it to Linked Frameworks and Libraries).
3. In Xcode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
4. Go to `node_modules` ➜ `react-native-wowza-player` and add `RNWowzaPlayer.xcodeproj`
5. In Xcode, in the project navigator, select your project. Add `libRNWowzaPlayer.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`

#### Android

**Not implemented yet**

## Usage

1. Import the module

```js
import Wowza, { Config, Player } from 'react-native-wowza-player'
```

2. Register you license key

```js
Wowza.registerLicenseKey('GO-MY-KEY')
```

3. Set a config

```js
const config = new Config({
  hostAddress: '',
  applicationName: '',
  streamName: '',
  username: null,
  password: null,
});
```

4. Render the player

```js
  <Player
    config={config}
    muted={false}
    style={styles.videoContainer}
  />
```

5. If you can't see the video, try using absolute positioning.

```js
const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  videoContainer:{
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 40
  }
})
```

## TODOS

- [X] iOS
- [ ] tvOS - [not yet supported by the native SDK](https://www.wowza.com/community/questions/49805/tvos-support.html)
- [ ] Android
- [ ] support all config parameters
- [ ] support all playback functionality

