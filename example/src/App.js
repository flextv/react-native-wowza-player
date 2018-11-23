import React from 'react'
import { StyleSheet, View } from 'react-native'
import config from '../wowzaConfig'
import GoCoder, { Config, Player } from 'react-native-wowza-player'

GoCoder.registerLicenseKey(config.sdkLicenseKey)

export default class App extends React.Component {
  constructor(props) {
    super(props)

    this.state = {}
  }

  render() {
    return (
      <View style={styles.container}>
        <Player config={new Config(config)} style={styles.player} />
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
    justifyContent: 'center',
    flexDirection: 'row',
    alignItems: 'flex-end',
  },
  player: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0,0,0,0.75)',
  },
})
