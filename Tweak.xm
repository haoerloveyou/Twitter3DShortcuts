@interface SBUIAppIconForceTouchControllerDataProvider : NSObject
@property (nonatomic, readonly) NSString *applicationBundleIdentifier;
@property (nonatomic, readonly) NSArray *applicationShortcutItems;
@end


%hook SBUIAppIconForceTouchControllerDataProvider


- (id)applicationShortcutItems
{
	if ([self.applicationBundleIdentifier isEqualToString:@"com.atebits.Tweetie2"]) {
		NSArray *applicationShortcutItems = %orig;
		NSMutableArray *mutableItems = [NSMutableArray arrayWithArray:applicationShortcutItems];
		[mutableItems removeObjectAtIndex:4]; // Twitter Share
		[mutableItems removeObjectAtIndex:3]; // Then remove QRCode
		return mutableItems;
	}
	return %orig;
}

%end