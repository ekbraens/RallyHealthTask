//
//  CustomPickerViewController.m
//  RallyHealthPicker
//
//  Created by New on 10/1/14.
//
//

#import "CustomPicker.h"
#import "ArrayData.h"

@interface CustomPicker ()

@end

@implementation CustomPicker

- (void)viewWillAppear:(BOOL)animated {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    ArrayData * arrayOfStrings = [[ArrayData alloc] init];
    
    // give the variable the model data from ArrayData class.
    _arrayOfStrings = [[NSArray alloc] initWithArray:arrayOfStrings.arrayOfStrings];
    // ensure if user does not select a string in the UIPickerView, a string will be returned
    _stringSelected = [_arrayOfStrings objectAtIndex:0];
    
    // get the screen width and height
    float screenWidth = [UIScreen mainScreen].bounds.size.width;
    float screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    _customPicker = [[UIPickerView alloc] initWithFrame:CGRectZero];
    [_customPicker setDataSource:self];
    [_customPicker setDelegate:self];
    // ensure the UIPickerView scales approperiately
    [_customPicker setFrame:CGRectMake(0, screenHeight/4, screenWidth, screenHeight/2)];
    
    _customPicker.showsSelectionIndicator = YES;
    
    [self.view addSubview:_customPicker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// only one component, the string, per wheel rotation
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// amount of strings in data array
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_arrayOfStrings count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_arrayOfStrings objectAtIndex:row];
}

// whichever string is selected by UIPickerView is sent to ViewController parent
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"%@", [_arrayOfStrings objectAtIndex:row]);
    _stringSelected = [_arrayOfStrings objectAtIndex:row];
}

// done button at top sends it to delegate, to then be dismissed
-(IBAction)done:(id)sender
{
    [self.delegate customPickerController:self didAddString:_stringSelected];
}

@end
