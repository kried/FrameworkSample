//
//  SampleView.h
//  FrameworkSample
//
//  Created by Nastassia Makaranka on 10/14/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SampleView : UIView

@property (nonatomic, weak) IBOutlet UILabel *label;

+ (SampleView *)nib;

+ (SampleView *)nibFromManagerBundle;

@end

NS_ASSUME_NONNULL_END
