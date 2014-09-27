//
//  ViewController.m
//  Mi reproductor
//
//  Created by Jhon Wilfer Orrego on 22/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>


@interface ViewController ()
{
    NSTimer * proggressTimer;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)loadSong:(NSString*)namesong andImage:(NSString*)image{
    NSString * ruta =[[NSBundle mainBundle]pathForResource:namesong ofType:@"mp3"];
    NSLog(@"%@", ruta);
    NSURL * url = [[NSURL alloc]initFileURLWithPath:ruta];
    NSLog(@"%@", url);
    NSError * error;
    _reproductor = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    
    _reproductor.volume = 1;
    _reproductor.pan = 0.5;
    _reproductor.rate = 1;
    _reproductor.enableRate = YES;
    _reproductor.numberOfLoops = -1;
    _reproductor.delegate = self;
    [_reproductor prepareToPlay];
    
    _imageSong.image = [UIImage imageNamed:image];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButton:(id)sender {
    [self loadSong:@"demo" andImage:@"imagen.jpg"];
    [_reproductor play];
    proggressTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateProgressBar) userInfo:nil repeats:YES];
}

- (IBAction)pauseButton:(id)sender {
    [_reproductor pause];

}

- (IBAction)stopButton:(id)sender {
    _reproductor.currentTime = 0;
    [_reproductor stop];

}

- (IBAction)changeOptions:(id)sender {
    UISwitch * control = sender;
    if (control.on){
        _cointainerView.hidden = NO;
    }else {
        _cointainerView.hidden = YES;
    }
}

- (IBAction)changeVolume:(id)sender {
    _reproductor.volume = ((UISlider *)sender).value;
}

- (IBAction)changeRate:(id)sender {
    _reproductor.rate = ((UISlider *)sender).value;
}

- (IBAction)backSong:(id)sender {
    [_reproductor stop];
    [self loadSong:@"demo" andImage:@"imagen.jpg"];
    [_reproductor play];
}

- (IBAction)nextSong:(id)sender {
    [_reproductor stop];
    [self loadSong:@"NY NY USA" andImage:@"imagen.jpg"];
    [_reproductor play];
}



-(void)updateProgressBar{
    _progresSong.progress = _reproductor.currentTime/_reproductor.duration;
    _timeSong.text = [self timeconverter:_reproductor.currentTime];
    
}

-(NSString*)timeconverter:(float)value{
    int minuts = (int)(value/60)%60;
    int seconds = (int)value % 60;
    return [NSString stringWithFormat:@"%02i:%02i",minuts,seconds];
}
@end
