#import "RNWowzaGoCoder.h"

#import <React/RCTBridge.h>
#import <React/RCTConvert.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTLog.h>

@implementation RNWowzaGoCoder

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

- (instancetype)init {
  self = [super init];
  return self;
}

- (NSDictionary *)constantsToExport {
  return @{
  };
}

- (NSArray<NSString *> *)supportedEvents {
  return @[
  ];
}

RCT_EXPORT_METHOD(registerLicenseKey: (NSString *) licenseKey
                  resolver: (RCTPromiseResolveBlock) resolve
                  rejecter: (RCTPromiseRejectBlock) reject) {
  NSError *goCoderLicensingError = [WowzaGoCoder registerLicenseKey:licenseKey];
  if (goCoderLicensingError != nil) {
    reject(@"licensing_error", @"GoCoder license error", goCoderLicensingError);
  } else {
    resolve(@(YES));
  }
}

@end
