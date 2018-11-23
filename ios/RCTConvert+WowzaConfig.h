#import <React/RCTConvert.h>
#import "WowzaConfig.h"

@interface RCTConvert (WowzaConfig)

+ (WowzaConfig *)WowzaConfig:(id)json;

@end
