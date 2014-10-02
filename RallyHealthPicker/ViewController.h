//
//  ViewController.h
//  RallyHealthPicker
//
//  Created by New on 9/30/14.
//
//

#import <UIKit/UIKit.h>
#import "CustomPicker.h"

@interface ViewController : UIViewController <CustomPickerDelegate>

// Label that the selected item will be shown on callback
@property (weak, nonatomic) IBOutlet UILabel *chosenWord;

@end

