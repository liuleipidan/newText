//
//  ViewController.m
//  uiwebview
//
//  Created by 李双 on 16/2/2.
//  Copyright © 2016年 YouKa. All rights reserved.
//

#import "ViewController.h"
static NSString* commonHtmlTitle = @"<font size=\"10\">";

@interface ViewController ()

@end

@implementation ViewController
//- (id)init{
//    if (self = [super initWithNibName:@"viewcontroller" bundle:nil]) {
//        
//    }
//    return self;
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = CGRectMake(50,50,300,300);
    NSLog(@"===---====");
//    frame.size = [UIImage imageNamed:@"guzhang.gif"].size;
    // 读取gif图片数据
    NSData *gif = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"guzhang" ofType:@"gif"]];
    // view生成
    UIWebView *webView = [[UIWebView alloc] initWithFrame:frame];
    webView.userInteractionEnabled = NO;//用户不可交互
    [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
//    [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    [self.view addSubview:webView];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"recogniseBtn");
    // Dispose of any resources that can be recreated.
}
- (IBAction)recognise:(UIButton *)sender {
//    NSMutableString* htmlString = [NSMutableString stringWithString:commonHtmlTitle];
//    [htmlString appendString:@""];
//    
//    [_webView loadHTMLString:htmlString baseURL:nil];
}
- (IBAction)clearView:(UIButton *)sender {
    NSLog(@"clearViewBtn");

}

@end
