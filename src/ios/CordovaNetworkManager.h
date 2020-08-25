#import <foundation/Foundation.h>

@interface CordovaNetworkManager : NSObject {
    NSMutableDictionary *requestDictionary;
}

@property (nonatomic, retain) NSMutableDictionary<NSNumber*, NSURLSessionDataTask*> *requestDictionary;

+ (id)sharedManager;

@end
