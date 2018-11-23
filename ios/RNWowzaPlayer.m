#import <React/RCTBridgeModule.h>
#import <React/RCTConvert.h>
#import <React/RCTEventDispatcher.h>
#import <React/UIView+React.h>
#import "WOWZPlayer.h"
#import "WowzaConfig.h"
#import "RCTConvert+WowzaConfig.h"
#import "RNWowzaPlayer.h"

@implementation RNWowzaPlayer {
  WowzaConfig *_config;
  WOWZPlayer *_player;
  RCTEventDispatcher *_eventDispatcher;
}

- (instancetype)init {
  NSLog(@"init");
  self = [super init];

  return self;
}

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher{
  self = [super init];
  
  _eventDispatcher = eventDispatcher;
    
  _player = [WOWZPlayer new];
    
  //Set default preroll buffer duration
//    _player.prerollDuration = [[NSUserDefaults standardUserDefaults] floatForKey:PlaybackPrerollKey];
  //Optionally set up data sink to handle in-stream events
//    [_player registerDataSink:self eventName:@"onTextData"];
    
  _player.syncOffset = -1.0;
  
  return self;
}

- (void)setConfig:(WowzaConfig *)config {
  _config = config;
  
  [_player play:_config callback:self];
}

- (void)setPaused:(BOOL)paused {
  if (!_player.playing) {
    [_player play:_config callback:self];
  }
  else {
    [_player stop];
  }
}

#pragma mark - WOWZStatusCallback Protocol Instance Methods

- (void) onWOWZStatus:(WOWZStatus *) goCoderStatus {
  // A successful status transition has been reported by the GoCoder SDK
  
  switch (goCoderStatus.state) {
      
    case WOWZStateIdle:
      break;
      
    case WOWZStateStarting:
      // A streaming broadcast session is starting up
      _player.playerView = self;
      
      break;
      
    case WOWZStateRunning:
      
      break;
      
    case WOWZStateStopping:
      break;
      
    case WOWZStateBuffering:
      break;
      
    default:
      break;
  }
}

- (void)onWOWZError:(WOWZStatus *)status {
  // 
}


#pragma mark - Lifecycle

- (void)removeFromSuperview {
  // TODO
  [super removeFromSuperview];
}

@end
