//
//  ViewController.m
//  Image
//
//  Created by goldeneye on 2017/4/24.
//  Copyright © 2017年 goldeneye by smart-small. All rights reserved.
//

#import "ViewController.h"
#import "ResetSizeImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage * image = [UIImage imageNamed:@"before.jpg"];
    
    
    NSData * data =  [[ResetSizeImage alloc]resetSizeOfImageDataMethodTwo:image maxSize:80];
    

    UIImage * saveImage  = [UIImage  imageWithData:data];
    
    UIImageWriteToSavedPhotosAlbum(saveImage, nil, nil, nil);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
