//
//  GICCanvasPathPart.h
//  GICXMLLayout
//
//  Created by 龚海伟 on 2018/8/8.
//

#import <Foundation/Foundation.h>

@interface GICCanvasPathPart : NSObject<GICDisplayProtocol>
-(void)drawPartPath:(CGContextRef)ctx bounds:(CGRect)bounds;
@end
