#import <UIKit/UIKit.h>
#import <React/RCTView.h>
#import "WowzaGoCoder.h"

@class RCTEventDispatcher;

@interface RNWowzaPlayer : UIView <WOWZStatusCallback>

- (instancetype) initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;

@end
