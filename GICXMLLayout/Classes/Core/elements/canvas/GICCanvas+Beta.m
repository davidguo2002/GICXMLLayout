//
//  GICCanvas+Beta.m
//  GICXMLLayout
//
//  Created by 龚海伟 on 2018/8/3.
//

#import "GICCanvas+Beta.h"
#import "GICCanvasLine.h"
#import "GICCanvasRectangle.h"
#import "GICCanvasArc.h"

@interface GICCanvas (){
    NSMutableArray<GICCanvasPath *> *paths;
}
@end

@implementation GICCanvas
+(NSString *)gic_elementName{
    return @"canvas";
}

+ (void)drawRect:(CGRect)bounds withParameters:(GICCanvas *)parameters isCancelled:(asdisplaynode_iscancelled_block_t)isCancelledBlock isRasterizing:(BOOL)isRasterizing{
    for(GICCanvasPath *path in parameters->paths){
        [path draw:bounds];
    }
}

-(id)init{
    self = [super init];
    self.opaque = NO;
    paths = [NSMutableArray array];
    return self;
}

- (id<NSObject>)drawParametersForAsyncLayer:(_ASDisplayLayer *)layer{
    return self;
}

-(id)gic_addSubElement:(id)subElement{
    if([subElement isKindOfClass:[GICCanvasPath class]]){
        [paths addObject:subElement];
        return subElement;
    }
    return [super gic_addSubElement:subElement];
}

-(id)gic_parseSubElementNotExist:(GDataXMLElement *)element{
    if([element.name isEqualToString:[GICCanvasLine gic_elementName]]){
        return [GICCanvasLine new];
    }else if([element.name isEqualToString:[GICCanvasRectangle gic_elementName]]){
        return [GICCanvasRectangle new];
    }else if([element.name isEqualToString:[GICCanvasArc gic_elementName]]){
        return [GICCanvasArc new];
    }
    return [super gic_parseSubElementNotExist:element];
}
@end