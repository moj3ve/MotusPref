#include "MotusPrefsRootListController.h"

@implementation MotusPrefsRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
-(void)respring
{
    CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("com.simalary-midnightchips.auxiliumdevelopment.motusprefs/respring"), NULL, NULL, YES);
}
- (void)ContactmeTwitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/MidnightChip"]];
}

- (void)ContactsimTwitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/simalary_ch"]];
}

- (void)donate {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://paypal.me/AuxilumDevelopment"]];
}

- (void)patreon {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.patreon.com/auxiliumdev"]];
}

- (void)AuxiliumDiscord {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://discord.gg/E9T5gDF"]];
}

- (void)LuciTwitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/lucifers_circle"]];
}
@end
