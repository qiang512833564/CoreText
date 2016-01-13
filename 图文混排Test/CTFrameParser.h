//
//  CTFrameParser.h
//  图文混排Test
//
//  Created by lizhongqiang on 16/1/13.
//  Copyright © 2016年 lizhongqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreTextData.h"
#import "CTFrameParserConfig.h"
@interface CTFrameParser : NSObject
+ (CoreTextData *)parseContent:(NSString *)content config:(CTFrameParserConfig*)config;
@end
