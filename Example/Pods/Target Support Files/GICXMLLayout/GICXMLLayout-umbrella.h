#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GICNSObjectExtensionProperties.h"
#import "GICViewExtensionProperties.h"
#import "GICXMLParserContext.h"
#import "LayoutElementProtocol.h"
#import "NSObject+LayoutElement.h"
#import "UIView+GICExtension.h"
#import "UIView+LayoutView.h"
#import "GICDataBinding.h"
#import "NSObject+GICDataBinding.h"
#import "NSObject+GICDataContext.h"
#import "GICDirective.h"
#import "GICDirectiveFor.h"
#import "NSObject+GICDirective.h"
#import "GICImageView.h"
#import "GICInpute.h"
#import "GICPage.h"
#import "GICScrollView.h"
#import "GICLable.h"
#import "NSMutableAttributedString+GICLableSubString.h"
#import "GICListFooter.h"
#import "GICListHeader.h"
#import "GICListItem.h"
#import "GICListItemSelectedEvent.h"
#import "GICListTableViewCell.h"
#import "GICListView.h"
#import "GICDockPanel.h"
#import "GICPanel.h"
#import "GICStackPanel.h"
#import "UIScrollView+GICScrollView.h"
#import "GICEvent.h"
#import "GICEventInfo.h"
#import "GICTapEvent.h"
#import "UIView+GICEvent.h"
#import "GICXMLLayout.h"
#import "GICTemplate.h"
#import "GICTemplateRef.h"
#import "GICTemplates.h"
#import "NSObject+GICTemplate.h"
#import "GICUtils.h"
#import "UIColor+Extension.h"
#import "GICBoolConverter.h"
#import "GICColorConverter.h"
#import "GICDataContextConverter.h"
#import "GICEdgeConverter.h"
#import "GICFloatConverter.h"
#import "GICNumberConverter.h"
#import "GICStringConverter.h"
#import "GICTextAlignmentConverter.h"
#import "GICURLConverter.h"
#import "GICValueConverter.h"

FOUNDATION_EXPORT double GICXMLLayoutVersionNumber;
FOUNDATION_EXPORT const unsigned char GICXMLLayoutVersionString[];

