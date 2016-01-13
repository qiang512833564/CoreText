//
//  CoreTextData.m
//  图文混排Test
//
//  Created by lizhongqiang on 16/1/13.
//  Copyright © 2016年 lizhongqiang. All rights reserved.
//

#import "CoreTextData.h"

@implementation CoreTextData
- (void)setCtFrame:(CTFrameRef)ctFrame{
    if(_ctFrame != ctFrame){
        if(_ctFrame != nil){
            CFRelease(_ctFrame);
        }
        CFRetain(ctFrame);
        _ctFrame = ctFrame;
    }
}
- (void)dealloc{
    if(_ctFrame != nil){
        CFRelease(_ctFrame);
        _ctFrame = nil;
    }
}
@end
