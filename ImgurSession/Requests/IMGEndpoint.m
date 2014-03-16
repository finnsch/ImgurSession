//
//  IMGEndpoint.m
//  ImgurKit
//
//  Created by Geoff MacDonald on 2014-03-12.
//  Copyright (c) 2014 GeoffMacDonald. All rights reserved.
//

#import "IMGEndpoint.h"

#import "IMGSession.h"


@implementation IMGEndpoint

+(NSString *)pathComponent{
    NSAssert(NO, @"Should be overridden by subclass");
    return nil;
}

+(NSString*)path{
    return [NSString stringWithFormat:@"%@/%@", IMGAPIVersion, [self pathComponent]];
}

+(NSString*)pathWithId:(NSString*)id1 {
    return [NSString stringWithFormat:@"%@/%@/%@", IMGAPIVersion, [self pathComponent], id1];
}

+(NSString*)pathWithId:(NSString*)id1 withOption:(NSString*)option{
    return [NSString stringWithFormat:@"%@/%@/%@/%@", IMGAPIVersion, [self pathComponent], id1, option];
}

+(NSString*)pathWithOption:(NSString*)option withId2:(NSString*)id2{
    return [NSString stringWithFormat:@"%@/%@/%@/%@", IMGAPIVersion, [self pathComponent], option, id2];
}

+(NSString*)pathWithId:(NSString*)id1 withOption:(NSString*)option withId2:(NSString*)id2{
    return [NSString stringWithFormat:@"%@/%@/%@/%@/%@", IMGAPIVersion, [self pathComponent], id1, option, id2];
}

@end
