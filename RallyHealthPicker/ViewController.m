//
//  ViewController.m
//  RallyHealthPicker
//
//  Created by New on 9/30/14.
//
//

#import "ViewController.h"
#import "CustomPicker.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // when button for CustomPicker is pressed, we check to see which button
    if ([segue.identifier isEqualToString:@"customPicker"])
    {
        // show where the path to the CustomPicker is so we can make it a delegate
        UINavigationController * navCon = segue.destinationViewController;
        CustomPicker * customPicker = [navCon viewControllers][0];
        customPicker.delegate = self;
    }
}

-(void)customPickerController:(CustomPicker *)controller didAddString:(NSString *)string
{
    // the chosen word variable from CustomPicker class is given to Label to display
    _chosenWord.text = string;
    
    // dismiss the CustomPicker, back to rootViewController
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
