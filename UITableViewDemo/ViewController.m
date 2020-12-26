//
//  ViewController.m
//  UITableViewDemo
//
//  Created by renjinwei on 2020/12/26.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "ViewController.h"
#import "HFTableViewCell.h"
#import "HFShopModal.h"
#import "HFXIBTableViewCell.h"

@interface ViewController ()
@property (strong, nonatomic)NSMutableArray<HFShopModal*>* dataArry;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.rowHeight = 75;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //code register
    [self.tableView registerClass:[HFTableViewCell class] forCellReuseIdentifier:@"HFCell"];
    // nib register
    [self.tableView registerNib:[UINib nibWithNibName:@"HFXIBTableViewCell" bundle:nil] forCellReuseIdentifier:@"HFXIBCell"];
    [self loadData];
}

- (void)loadData
{
    self.dataArry = [NSMutableArray array];
    NSArray* dataPlist = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil]];
    [dataPlist enumerateObjectsUsingBlock:^(NSDictionary*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        HFShopModal* model = [[HFShopModal alloc] initWithDic:obj];
        [_dataArry addObject:model];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataArry count];
}

//系统创建20个， 然后从cache里面取
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row %3 == 1) {
        // nib dequeue HFXIBCELL
        HFXIBTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"HFXIBCell"];
        NSLog(@"%ld: %p", indexPath.row, cell);
        cell.shop = _dataArry[indexPath.row];
        return cell;
    } else if (indexPath.row %3 == 2) {
        // code dequeue HFCELL
        HFTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"HFCell"];    NSLog(@"%ld: %p", indexPath.row, cell);
        cell.shop = _dataArry[indexPath.row];
        return cell;
    } else {
        // code dequeue HFCELL
        HFTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"HFSTORYBOARDCell"];    NSLog(@"%ld: %p", indexPath.row, cell);
        cell.shop = _dataArry[indexPath.row];
        return cell;
    }
 
}

- (void)injected {
    [self.tableView reloadData];
    self.tableView.rowHeight = 75;

}
@end
