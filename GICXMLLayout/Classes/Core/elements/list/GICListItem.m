//
//  GICListItem.m
//  GICXMLLayout
//
//  Created by 龚海伟 on 2018/7/6.
//

#import "GICListItem.h"

#import "GICStringConverter.h"
#import "GICNumberConverter.h"
#import "GICEdgeConverter.h"
#import "GICPanel.h"

@implementation GICListItem
+(NSString *)gic_elementName{
    return @"list-item";
}

+(NSDictionary<NSString *,GICAttributeValueConverter *> *)gic_elementAttributs{
    return @{
             @"selection-style":[[GICNumberConverter alloc] initWithPropertySetter:^(NSObject *target, id value) {
                 GICListItem *item = (GICListItem *)target;
                 [item setValue:value forKey:@"selectionStyle"];
             } withGetter:^id(id target) {
                 GICListItem *item = (GICListItem *)target;
                 return @([item selectionStyle]);
             }],
             @"event-item-select":[[GICStringConverter alloc] initWithPropertySetter:^(NSObject *target, id value) {
                 GICListItem *item = (GICListItem *)target;
                 item.itemSelectEvent =  [GICEvent createEventWithExpresion:value withEventName:@"event-item-select" toTarget:target];
             } withGetter:^id(id target) {
                 return [target gic_event_findWithEventName:@"event-item-select"];
             }],
             @"separator-inset":[[GICEdgeConverter alloc] initWithPropertySetter:^(NSObject *target, id value) {
                 GICListItem *item = (GICListItem *)target;
                 [item setValue:value forKey:@"separatorInset"];
             } withGetter:^id(id target) {
                 GICListItem *item = (GICListItem *)target;
                 return [item valueForKey:@"separatorInset"];
             }],
             @"accessory-type":[[GICNumberConverter alloc] initWithPropertySetter:^(NSObject *target, id value) {
                 GICListItem *item = (GICListItem *)target;
                 [item setValue:value forKey:@"accessoryType"];
             } withGetter:^id(id target) {
                 GICListItem *item = (GICListItem *)target;
                 return @(item.accessoryType);
             }],
             };
}

-(id)init{
    self=[super init];
    self.automaticallyManagesSubnodes = YES;
    return self;
}

-(BOOL)gic_parseOnlyOneSubElement{
    return YES;
}

-(void)gic_parseSubElements:(NSArray<GDataXMLElement *> *)children{
    if(children.count==1){
        self.xmlDoc = [[GDataXMLDocument alloc] initWithRootElement:children[0]];
    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    [super setHighlighted:NO];
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize{
    ASStackLayoutSpec *spec= [ASStackLayoutSpec verticalStackLayoutSpec];
    spec.children = self.gic_displayNodes;
    return spec;
}

-(void)createContentView:(GDataXMLDocument *)xmlDoc{
    GICPanel *childElement = (GICPanel *)[NSObject gic_createElement:[xmlDoc rootElement] withSuperElement:self];
    [self gic_addSubElement:childElement];
}

-(void)prepareLayout{
    if(self.subnodes.count == 0){
        [self createContentView:self.xmlDoc];
    }
    self.gic_isAutoInheritDataModel = NO;
    [self gic_updateDataContext:self.gic_DataContext];
}
@end
