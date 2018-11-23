#import "RNWowzaPlayerManager.h"
#import "RNWowzaPlayer.h"
#import "WowzaConfig.h"

@implementation RNWowzaPlayerManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (UIView *) view {
  return [[RNWowzaPlayer alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

- (dispatch_queue_t) methodQueue {
  return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(config, WowzaConfig);
RCT_EXPORT_VIEW_PROPERTY(sdkLicenseKey, NSString);

RCT_EXPORT_VIEW_PROPERTY(muted, BOOL);
RCT_EXPORT_VIEW_PROPERTY(playing, BOOL);
RCT_EXPORT_VIEW_PROPERTY(prerollDuration, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(syncOffset, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(useHLSFallback, BOOL);
RCT_EXPORT_VIEW_PROPERTY(volume, NSNumber);

- (NSDictionary *) constantsToExport {
  return @{
    @"ScaleAspectFit": @(UIViewContentModeScaleAspectFit),
    @"ScaleAspectFill": @(UIViewContentModeScaleAspectFill),
    @"ScaleToFill": @(UIViewContentModeScaleToFill)
  };
}

+ (BOOL) requiresMainQueueSetup {
  return YES;
}

@end
