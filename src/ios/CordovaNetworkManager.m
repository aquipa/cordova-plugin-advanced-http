#import "CordovaNetworkManager.h"

@implementation CordovaNetworkManager

@synthesize requestDictionary;

#pragma mark Singleton Methods

+ (id)sharedManager {
    static CordovaNetworkManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
  if (self = [super init]) {
      requestDictionary = [[NSMutableDictionary alloc] init];
  }
  return self;
}

- (void)dealloc {
  // Should never be called, but just here for clarity really.
}

@end
