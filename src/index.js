import { NativeModules } from 'react-native'

const { RNWowzaGoCoder } = NativeModules

import Config from './Config'
import Player from './Player'

export { Config, Player }

export default {
  registerLicenseKey(licenseKey) {
    return RNWowzaGoCoder.registerLicenseKey(licenseKey)
  }
}
