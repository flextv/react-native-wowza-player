## Running the example project

Install dependencies

```sh
cd example && npm install
# or
cd example && yarn
```

### iOS

1. Download the GoCoder SDK - https://www.wowza.com/pricing/installer#gocodersdk-downloads
2. Unzip and add `WowzaGoCoderSDK.framework` to `example/ios/`
3. Open `example/ios/example.xcodeproj` in Xcode
4. From the Xcode Project Navigator, select the "example" project and the "example" target
5. On the "General" tab configure the "Identity" settings with your app bundle identifier (should match the bundleID tied to your GoCoder license)
    * If you don't have a license key you can register for a free trial: https://www.wowza.com/products/gocoder/sdk/trial
6. Configure your "Signing" settings with your provisioning profiles
7. Configure your GoCoder license key and Wowza server settings in `example/wowzaConfig.js`
8. Run your project on a device (will not work properly on simulator)
