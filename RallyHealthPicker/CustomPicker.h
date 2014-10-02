//
//  CustomPickerViewController.h
//  RallyHealthPicker
//
//  Created by New on 10/1/14.
//
//

#import <UIKit/UIKit.h>

@class CustomPicker;

@protocol CustomPickerDelegate <NSObject>

// delegate method to be called in main ViewController
-(void)customPickerController:(CustomPicker *)controller didAddString:(NSString *)string;

@end

// required delegates for UIPickerView
@interface CustomPicker : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

// array to hold ArrayData model information
@property (nonatomic, retain) NSArray * arrayOfStrings;
@property (nonatomic, strong) UIPickerView * customPicker;
// string to be given to ViewController delegate
@property (nonatomic, strong) NSString * stringSelected;
@property (nonatomic, weak) id <CustomPickerDelegate> delegate;

-(IBAction)done:(id)sender;

@end