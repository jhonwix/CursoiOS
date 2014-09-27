//
//  ViewController.h
//  Mi reproductor
//
//  Created by Jhon Wilfer Orrego on 22/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageSong;
@property (strong, nonatomic) IBOutlet UILabel *timeSong;
@property (strong, nonatomic) IBOutlet UIProgressView *progresSong;
- (IBAction)playButton:(id)sender;
- (IBAction)pauseButton:(id)sender;
- (IBAction)stopButton:(id)sender;
- (IBAction)changeOptions:(id)sender;
- (IBAction)changeVolume:(id)sender;
- (IBAction)changeRate:(id)sender;


@property AVAudioPlayer * reproductor;

@property (strong, nonatomic) IBOutlet UIView *cointainerView;

@end

