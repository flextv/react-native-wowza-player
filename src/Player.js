import React from 'react'
import { PropTypes } from 'prop-types'
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

Player.propTypes = {
  config: PropTypes.shapeOf({
    hostAddress: PropTypes.string.isRequired,
    port: PropTypes.number,
    applicationName: PropTypes.string.isRequired,
    streamName: PropTypes.string.isRequired,
    username: PropTypes.string,
    password: PropTypes.string,
  }).isRequired,
  muted: PropTypes.bool,
  ...View.propTypes,
}

const RNWowzaPlayer = requireNativeComponent('RNWowzaPlayer', Player)
