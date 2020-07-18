
<h1 align="center">

<p align="center">
  <a href="https://www.npmjs.com/package/react-native-text-switch"><img src="http://img.shields.io/npm/v/react-native-text-switch.svg?style=flat" /></a>
  <a href="https://github.com/prscX/react-native-text-switch/pulls"><img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" /></a>
  <a href="https://github.com/prscX/react-native-text-switch#License"><img src="https://img.shields.io/npm/l/react-native-text-switch.svg?style=flat" /></a>
</p>


    ReactNative: Native Text Switch (Android/iOS): Deprecated

Due to time constraint, this library is deprecated and not maintained anymore, You can still use this library.

If this project has helped you out, please support us with a star 🌟
</h1>

This library is a React Native bridge around native text switch libraries. It allows show/guide beautiful text switch:


| **iOS: [rcgary/RCRunkeeperSwitch](https://github.com/rcgary/RCRunkeeperSwitch)**             |
| ----------------- |
| <img src="https://raw.githubusercontent.com/rcgary/RCRunkeeperSwitch/master/RCRunkeeperSwitch.gif" />                  |

| **Android: [polyak01/IconSwitch](https://github.com/polyak01/IconSwitch)**             |
| ----------------- |
|  |



## 📖 Getting started

`$ npm install react-native-text-switch --save`

`$ react-native link react-native-text-switch`

- **Android**

Please add below snippet into your app build.gradle

```

buildscript {
    repositories {
        jcenter()
        maven { url "https://maven.google.com" }
    }
    ...
}

allprojects {
    repositories {
        mavenLocal()
        jcenter()
        maven { url "https://maven.google.com" }
        ...
    }
}

dependencies {

}

```

> **Note:** This library is supported Android SDK 28 > above

- **iOS**
  - After `react-native link react-native-text-switch`, please verify `node_modules/react-native-text-switch/ios/` contains `Pods` folder. If does not exist please execute `pod install` command on `node_modules/react-native-text-switch/ios/`, if any error => try `pod repo update` then `pod install`

  - Now build your iOS app through Xcode


## 💻 Usage

```javascript
import { RNTextSwitch } from 'react-native-text-switch';

```

```javascript

<RNTextSwitch />

```

## 💡 Props

- **Props: Generic**

| Prop              | Type       | Default | Note                                                                                                       |
| ----------------- | ---------- | ------- | ---------------------------------------------------------------------------------------------------------- |
| `backgroundColor`       |   `string #HEX-COLOR`   |    `#DE6840`     | Specify background color
| `selectionBackgroundColor` | `string #HEX-COLOR` |    `#FFFFFF`     | Specify selected background color                                                   |  |
| `titleColor`    |   `string #HEX-COLOR`   |     `#FFFFFF`    | Specify title color                                        |  |
| `selectedTitleColor`    |   `string #HEX-COLOR`   |    `#DE6840`     | Specify selected title color                                        |  |
| `leftTitle`    | `string`     |    `YES`     | Specify left title                                        |  |
| `rightTitle`    | `string`     |     `NO`    | Specify right title                                        |  |
| `selectedIndex`      | `number`     |         | Specify selected index
| `onChange`    | `func`     |         | Specify color of highlighted text color                                        |  |



## ✨ Credits

- iOS: [rcgary/RCRunkeeperSwitch](https://github.com/rcgary/RCRunkeeperSwitch)
- Android: [polyak01/IconSwitch](https://github.com/polyak01/IconSwitch)


## 🤔 How to contribute
Have an idea? Found a bug? Please raise to [ISSUES](https://github.com/prscX/react-native-text-switch/issues).
Contributions are welcome and are greatly appreciated! Every little bit helps, and credit will always be given.

## 💫 Where is this library used?
If you are using this library in one of your projects, add it in this list below. ✨


## 📜 License
This library is provided under the Apache License.

RNTextSwitch @ [prscX](https://github.com/prscX)

## 💖 Support my projects
I open-source almost everything I can, and I try to reply everyone needing help using these projects. Obviously, this takes time. You can integrate and use these projects in your applications for free! You can even change the source code and redistribute (even resell it).

However, if you get some profit from this or just want to encourage me to continue creating stuff, there are few ways you can do it:
* Starring and sharing the projects you like 🚀
* If you're feeling especially charitable, please follow [prscX](https://github.com/prscX) on GitHub.

  <a href="https://www.buymeacoffee.com/prscX" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

  Thanks! ❤️
  <br/>
  [prscX.github.io](https://prscx.github.io)
  <br/>
  </ Pranav >
