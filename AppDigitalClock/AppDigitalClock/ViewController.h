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

@end

