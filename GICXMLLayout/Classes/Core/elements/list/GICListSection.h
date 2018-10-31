//
//  GICListSection.h
//  GICXMLLayout
//
//  Created by 龚海伟 on 2018/9/28.
//

#import <Foundation/Foundation.h>
#import "GICListItem.h"
#import "GICCollectionView.h"
#import "GICListHeader.h"
#import "GICListFooter.h"

@interface GICListSection : NSObject
@property (nonatomic,readonly)NSInteger sectionIndex;
@property (nonatomic,readonly)NSMutableArray<GICListItem *> *items;

@property (nonatomic,readonly)GICListHeader *header;
@property (nonatomic,readonly)GICListFooter *footer;
-(id)initWithOwner:(GICCollectionView *)owner withSectionIndex:(NSInteger)sectionIndex;
@end