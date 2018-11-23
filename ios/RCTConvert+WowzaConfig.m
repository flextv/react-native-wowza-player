#import <React/RCTConvert.h>
#import "WowzaConfig.h"
#import "RCTConvert+WowzaConfig.h"

@implementation RCTConvert(WowzaConfig)

+ (WowzaConfig *)WowzaConfig:(id)json {
  WowzaConfig *config = [WowzaConfig new];

  id null = [NSNull null];

  if (json[@"hostAddress"] != nil && json[@"hostAddress"] != null) {
    config.hostAddress = json[@"hostAddress"];
  }
  if (json[@"port"] != nil && json[@"port"] != null) {
    config.portNumber = [RCTConvert NSUInteger:json[@"port"]];
  }
  if (json[@"applicationName"] != nil && json[@"applicationName"] != null) {
    config.applicationName = json[@"applicationName"];
  }
  if (json[@"streamName"] != nil && json[@"streamName"] != null) {
    config.streamName = json[@"streamName"];
  }
  if (json[@"username"] != nil && json[@"username"] != null) {
    config.username = json[@"username"];
  }
  if (json[@"password"] != nil && json[@"password"] != null) {
    config.password = json[@"password"];
  }

  return config;
}

@end
