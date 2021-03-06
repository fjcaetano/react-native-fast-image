#import "FFFastImageViewManager.h"
#import "FFFastImageView.h"

@implementation FFFastImageViewManager

RCT_EXPORT_MODULE(FastImageView)

- (FFFastImageView*)view {
  FFFastImageView* view = [[FFFastImageView alloc] init];
  view.contentMode = (UIViewContentMode) RCTResizeModeContain;
  view.clipsToBounds = YES;
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(source, FFFastImageSource);
RCT_EXPORT_VIEW_PROPERTY(resizeMode, RCTResizeMode);
RCT_EXPORT_VIEW_PROPERTY(onFastImageError, RCTDirectEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onFastImageLoad, RCTDirectEventBlock);

@end
