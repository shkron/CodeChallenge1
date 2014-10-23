//
//  WebViewController.m
//  CodeChallenge1
//
//  Created by Alex on 10/23/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation WebViewController


-(void)loadURL:(NSString *)theURL
{
    NSURL *url = [NSURL URLWithString:theURL];

    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [self.webView loadRequest:request];
}


- (void)viewDidLoad {
    [super viewDidLoad];
  [self loadURL:@"http://mobilemakers.co"];

}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activityIndicator startAnimating];
}


-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
}




@end
