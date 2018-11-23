import React from 'react'
import {
  DeviceEventEmitter,
  NativeModules,
  Platform,
  requireNativeComponent,
  View,
  StyleSheet,
} from 'react-native'

const styles = StyleSheet.create({
  base: {
    overflow: 'hidden',
  },
})

export default class Player extends React.Component {
  setNativeProps(nativeProps) {
    this._root.setNativeProps(nativeProps)
  }

  componentWillMount() {}

  render() {
    const nativeProps = Object.assign({}, this.props)

    Object.assign(nativeProps, {
      style: [styles.base, nativeProps.style],
    })

    return <RNWowzaPlayer ref={ref => (this._root = ref)} {...nativeProps} />
  }
}

const RNWowzaPlayer = requireNativeComponent('RNWowzaPlayer', Player)
