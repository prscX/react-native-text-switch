
#import "RNTextSwitch.h"


@interface RNTextSwitch ()
@property (nonatomic, strong) UIView *_runkeeperSwitchView;
@property (nonatomic, strong) RCRunkeeperSwitch *_runkeeperSwitch;
@end

@implementation RNTextSwitch

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (void)action:(RCRunkeeperSwitch *)sender {
    NSInteger selection = sender.selectedIndex;

    NSDictionary *event = @{
                            @"target": self._runkeeperSwitchView.reactTag,
                            @"value": selection == 0 ? @"0" : @"1",
                            @"name": @"tap"
                            };

    [self.bridge.eventDispatcher sendInputEventWithName:@"topChange" body:event];
}

- (UIView *)view {
    self._runkeeperSwitch = [[RCRunkeeperSwitch alloc]init];
    self._runkeeperSwitch.titleFont = [UIFont fontWithName:@"HelveticaNeue-Medium" size:13];
    self._runkeeperSwitch.autoresizingMask = UIViewAutoresizingFlexibleWidth;

    self._runkeeperSwitchView = [[UIView alloc] init];
    [self._runkeeperSwitchView addSubview:self._runkeeperSwitch];
        self._runkeeperSwitch.frame = CGRectMake(50, 20, CGRectGetWidth(self._runkeeperSwitchView.bounds) - 100, 30);

    [self._runkeeperSwitch addTarget:self
                         action:@selector(action:)
               forControlEvents:UIControlEventValueChanged];

    return self._runkeeperSwitchView;
}

RCT_CUSTOM_VIEW_PROPERTY(backgroundColor, NSString *, UIView) {
    self._runkeeperSwitch.backgroundColor = [RNTextSwitch colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(selectedBackgroundColor, NSString *, UIView) {
    self._runkeeperSwitch.selectedBackgroundColor = [RNTextSwitch colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(titleColor, NSString *, UIView) {
    self._runkeeperSwitch.titleColor = [RNTextSwitch colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(selectedTitleColor, NSString *, UIView) {
    self._runkeeperSwitch.selectedTitleColor = [RNTextSwitch colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(leftTitle, NSString *, UIView) {
    self._runkeeperSwitch.leftTitle = json;
}

RCT_CUSTOM_VIEW_PROPERTY(rightTitle, NSString *, UIView) {
    self._runkeeperSwitch.rightTitle = json;
}

RCT_CUSTOM_VIEW_PROPERTY(selectedIndex, NSNumber *, UIView) {
    [self._runkeeperSwitch setSelectedIndex:[json intValue] animated:FALSE];
}

+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


@end
  
