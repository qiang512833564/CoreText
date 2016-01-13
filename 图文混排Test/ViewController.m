//
//  ViewController.m
//  图文混排Test
//
//  Created by lizhongqiang on 16/1/13.
//  Copyright © 2016年 lizhongqiang. All rights reserved.
//

#import "ViewController.h"
#import "MyLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#if 0
    // Do any additional setup after loading the view, typically from a nib.
    MyLabel *label = [[MyLabel alloc]initWithFrame:CGRectZero];
    label.lineSpacing = 5.0;
    label.textColor = [UIColor blackColor];
     NSString *text  = @"say:\n有人问一位登山家为什么要去登山——谁都知道登山这件事既危险，又没什么实际的好处。[haha][haha][haha][haha]他回答道：“因为那座山峰在那里。”我喜欢这个答案，因为里面包含着幽默感——明明是自己想要登山，偏说是山在那里使他心里痒痒。除此之外，我还喜欢这位登山家干的事，没来由地往悬崖上爬。[haha][haha][haha]它会导致肌肉疼痛，还要冒摔出脑子的危险，所以一般人尽量避免爬山。[haha][haha][haha]用热力学的角度来看，这是个反熵的现象，所发趋害避利肯定反熵。";
    NSArray *components = [text componentsSeparatedByString:@"[haha]"];
    NSUInteger count = [components count];
    for(NSUInteger i=0; i<count; i++){
//        [label appendText:[components objectAtIndex:i]];
    }
    label.frame     = CGRectInset(self.view.bounds,20,20);
    label.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:label];
#endif
    
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc]init];
    config.textColor = [UIColor redColor];
    config.width = self.ctView.width;
    
    CoreTextData *data = [CTFrameParser parseContent:@"按照以上原则，我们将`CTDisplayView`中的部分内容拆开。" config:config];
    self.ctView.data = data;
    self.ctView.height = data.height;
    self.ctView.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
