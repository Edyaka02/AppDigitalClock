//
//  ViewController.m
//  AppDigitalClock
//
//  Created by Guest User on 25/09/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.4;
    
}

-(void)updateTimer{
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    self.label.text = [timeFormat stringFromDate:[NSDate date]];
    
}


- (IBAction)settings:(id)sender {
    if(self.settingsView.hidden == YES){
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    } else {
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.4;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
    }
}

- (IBAction)backgroundImg:(id)sender {
    self.backgroundImage.hidden = NO;
    if(self.backgroundImageSeg.selectedSegmentIndex == 0){
        self.backgroundImage.image = [UIImage imageNamed:@"Background1"];
        
    } else if(self.backgroundImageSeg.selectedSegmentIndex == 1){
        self.backgroundImage.image = [UIImage imageNamed:@"Background2"];
        
    } else if(self.backgroundImageSeg.selectedSegmentIndex == 2){
        self.backgroundImage.image = [UIImage imageNamed:@"Background3"];
        
    } else if(self.backgroundImageSeg.selectedSegmentIndex == 3){
        self.backgroundImage.image = [UIImage imageNamed:@"Background4"];
        
    }
}

- (IBAction)backgroundColor:(id)sender {
    self.backgroundImage.hidden = YES;
    if(self.backgroundColorSeg.selectedSegmentIndex == 0){
        self.view.backgroundColor = [UIColor whiteColor];
        
    } else if(self.backgroundColorSeg.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor blackColor];
        
    } else if(self.backgroundColorSeg.selectedSegmentIndex == 2){
        self.view.backgroundColor = [UIColor blueColor];
        
    } else if(self.backgroundColorSeg.selectedSegmentIndex == 3){
        self.view.backgroundColor = [UIColor yellowColor];
        
    }
    
}

- (IBAction)clockColor:(id)sender {
    
    if(self.clockColorSeg.selectedSegmentIndex == 0){
        self.label.textColor = [UIColor whiteColor];
        
    } else if(self.clockColorSeg.selectedSegmentIndex == 1){
        self.label.textColor = [UIColor blackColor];
        
    } else if(self.clockColorSeg.selectedSegmentIndex == 2){
        self.label.textColor = [UIColor blueColor];
        
    } else if(self.clockColorSeg.selectedSegmentIndex == 3){
        self.label.textColor = [UIColor yellowColor];
        
    }
}
@end
