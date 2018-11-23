import * as React from 'react';
import { ViewStyle } from 'react-native';

declare class Config {
  // from WOWZStreamConfig
  hostAddress: string;
  portNumber: ?number;
  applicationName: string;
  streamName: string;
  username: ?string;
  password: ?string;

  // from WOWZMediaConfig
  audioEnabled: ?boolean;
  videoEnabled: ?boolean;
}

export interface PlayerProps {
  config: Config;
  style?: ViewStyle;
}

export class Player extends React.Component<PlayerProps, {}> {}
