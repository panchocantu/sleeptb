//
//  TabBarViewController.m
//  pruebas
//
//  Created by Barragan, Francisco on 5/14/15.
//  Copyright (c) 2015 Barragan, Francisco. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "StatsViewController.h"
#import "HistoryViewController.h"
#import "AlarmViewController.h"
#import "SettingsTableViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**
     *  Icons for the tab item
     */
    UIImage *homePic = [UIImage imageNamed:@"home.png"];
    UIImage *statsPic = [UIImage imageNamed:@"stats.png"];
    UIImage *histPic = [UIImage imageNamed:@"history.png"];
    UIImage *alarmPic = [UIImage imageNamed:@"alarm.png"];
    UIImage *settingsPic = [UIImage imageNamed:@"settings.png"];
    
    /**
     Assigning the title and the image for every tab item.
     */
    UITabBarItem *home = [[UITabBarItem alloc]initWithTitle:@"Home" image:homePic tag:0];
    UITabBarItem *stats = [[UITabBarItem alloc]initWithTitle:@"Stats" image:statsPic tag:0];
    UITabBarItem *history = [[UITabBarItem alloc]initWithTitle:@"History" image:histPic tag:0];
    UITabBarItem *alarm = [[UITabBarItem alloc]initWithTitle:@"Alarm" image:alarmPic tag:0];
    UITabBarItem *settings = [[UITabBarItem alloc]initWithTitle:@"Settings" image:settingsPic tag:0];
    
    /**
     *  Creating the instances for every  StoryBoard(tabs).
     */
    UIStoryboard *storyHome = [UIStoryboard storyboardWithName:@"Home" bundle:nil];
    UIStoryboard *storyStats = [UIStoryboard storyboardWithName:@"Stats" bundle:nil];
    UIStoryboard *storyHistory = [UIStoryboard storyboardWithName:@"History" bundle:nil];
    UIStoryboard *storyAlarm = [UIStoryboard storyboardWithName:@"Alarms" bundle:nil];
    UIStoryboard *storySettings = [UIStoryboard storyboardWithName:@"Settings" bundle:nil];
    /**
     *  Creating instances for the ViewController using the StoryBoard correspondient.
     *
     */
    HomeViewController *homeVC = (HomeViewController*)[storyHome instantiateViewControllerWithIdentifier:@"HomeViewController"];
    StatsViewController *statsVC = (StatsViewController*)[storyStats instantiateViewControllerWithIdentifier:@"StatsViewController"];
    HistoryViewController *histVC= (HistoryViewController*)[storyHistory instantiateViewControllerWithIdentifier:@"HistoryViewController"];
    AlarmViewController *alarmVC =(AlarmViewController*)[storyAlarm instantiateViewControllerWithIdentifier:@"AlarmViewController"];
    SettingsTableViewController *settingsVC = (SettingsTableViewController*)[storySettings instantiateViewControllerWithIdentifier:@"SettingsTableViewController"];
    
    /**
     *  Assigning the information to every tabItem.
     */
    homeVC.tabBarItem = home;
    statsVC.tabBarItem = stats;
    histVC.tabBarItem =history;
    alarmVC.tabBarItem = alarm;
    settingsVC.tabBarItem = settings;
    
    /**
     *  Assigning the VC to the TabBarController
     */
    [self setViewControllers:@[homeVC,statsVC,histVC,alarmVC,settingsVC]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
