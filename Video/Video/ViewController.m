//
//  ViewController.m
//  Video
//
//  Created by Jhon Wilfer Orrego on 24/09/14.
//  Copyright (c) 2014 Jhon Wilfer Orrego. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * ruta = [[NSBundle mainBundle]pathForResource:@"BigBuckBunny" ofType:@"mp4"];
    NSURL * url = [[NSURL alloc]initFileURLWithPath:ruta];
    _reproductor = [[MPMoviePlayerController alloc]initWithContentURL:url];
    _reproductor.view.frame =  CGRectMake(0, 0,_viewVideo.frame.size.width,_viewVideo.frame.size.height);
    [_viewVideo addSubview:_reproductor.view];
    [_reproductor play];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
