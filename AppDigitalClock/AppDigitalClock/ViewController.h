//
//  ViewController.h
//  AppDigitalClock
//
//  Created by Guest User on 25/09/25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColorSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColorSeg;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundImageSeg;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;

- (IBAction)clockColor:(id)sender;
- (IBAction)backgroundColor:(id)sender;
- (IBAction)backgroundImg:(id)sender;
- (IBAction)settings:(id)sender;



@end

