//
//  NHRequstVInfo.m
//  NHVersionTool
//
//  Created by neghao on 2017/8/4.
//  Copyright © 2017年 neghao. All rights reserved.
//

#import "NHRequstVInfo.h"
#import "NHAppinfo.h"

@implementation NHRequstVInfo

+ (void)RequestVinfoWithAppID:(NSString *)appID complete:(void(^)(NHAppinfo *appinfo, NSError *error))completeBlock {

    /* Configure session, choose between:
     * defaultSessionConfiguration
     * ephemeralSessionConfiguration
     * backgroundSessionConfigurationWithIdentifier:
     And set session-wide properties, such as: HTTPAdditionalHeaders,
     HTTPCookieAcceptPolicy, requestCachePolicy or timeoutIntervalForRequest.
     */
    NSURLSessionConfiguration* sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    /* Create session, and optionally set a NSURLSessionDelegate. */
    NSURLSession* session = [NSURLSession sessionWithConfiguration:sessionConfig delegate:nil delegateQueue:nil];
    
    /* Create the Request:
     Request (POST https://itunes.apple.com/lookup)
     */
    
    NSURL* URL = [NSURL URLWithString:@"https://itunes.apple.com/lookup"];
    NSDictionary* URLParams = @{
                                @"id": appID,
                                };
    URL = NSURLByAppendingQueryParameters(URL, URLParams);
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:URL];
    request.HTTPMethod = @"POST";
    
    /* Start a new Task */
    NSURLSessionDataTask* task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error == nil) {
            dispatch_async(dispatch_queue_create("model", NULL), ^{
                // Success
                NSError *error;
                NSDictionary *requltDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments | NSJSONReadingMutableLeaves error:&error];
                NSArray *results = [requltDict objectForKey:@"results"];
                NHAppinfo *appinfo;
                if (results.count > 0) {
                    appinfo = [[NHAppinfo alloc] initWithDictionary:results.firstObject];
                }
//                NSLog(@"URL Session Task Succeeded: HTTP %@--%@", @(((NSHTTPURLResponse*)response).statusCode),requltDict);
                dispatch_async(dispatch_get_main_queue(), ^{
                    if (completeBlock) {
                        completeBlock(appinfo, error);
                    }
                });
            });

        }
        else {
            // Failure
            NSLog(@"URL Session Task Failed: %@", [error localizedDescription]);
        }
    }];
    [task resume];
    [session finishTasksAndInvalidate];
}

/*
 * Utils: Add this section before your class implementation
 */

/**
 This creates a new query parameters string from the given NSDictionary. For
 example, if the input is @{@"day":@"Tuesday", @"month":@"January"}, the output
 string will be @"day=Tuesday&month=January".
 @param queryParameters The input dictionary.
 @return The created parameters string.
 */
static NSString* NSStringFromQueryParameters(NSDictionary* queryParameters)
{
    NSMutableArray* parts = [NSMutableArray array];
    [queryParameters enumerateKeysAndObjectsUsingBlock:^(id key, id value, BOOL *stop) {
        NSString *part = [NSString stringWithFormat: @"%@=%@",
                          [key stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding],
                          [value stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding]
                          ];
        [parts addObject:part];
    }];
    return [parts componentsJoinedByString: @"&"];
}

/**
 Creates a new URL by adding the given query parameters.
 @param URL The input URL.
 @param queryParameters The query parameter dictionary to add.
 @return A new NSURL.
 */
static NSURL* NSURLByAppendingQueryParameters(NSURL* URL, NSDictionary* queryParameters)
{
    NSString* URLString = [NSString stringWithFormat:@"%@?%@",
                           [URL absoluteString],
                           NSStringFromQueryParameters(queryParameters)
                           ];
    return [NSURL URLWithString:URLString];
}



@end
