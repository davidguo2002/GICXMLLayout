//
//  GICImageView.h
//  GDataXMLNode_GIC
//
//  Created by 龚海伟 on 2018/7/2.
//

#import <UIKit/UIKit.h>

@interface GICImageView : ASNetworkImageNode
//@property (nonatomic,strong)NSURL *imageUrl;
@property (nonatomic,copy)NSString *localImageName;
@property (nonatomic,copy)NSString *imagePath;
@end
