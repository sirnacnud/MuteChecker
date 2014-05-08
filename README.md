MuteChecker
===========

Check if the mute button is on for iOS devices.

----

Up to iOS 7 there is no simple API to check whether the user switched on the mute button or not...

Sharkfood produced a [class](http://sharkfood.com/content/Developers/content/Sound%20Switch/) to constantly check if a user switched on the mute button.

The idea is playing a short(0.2 sec) muted sound file using AudioServices. If it takes longer then 0.2 sec to complete, mute button is off. Otherwise if it finished very soon, say shorter then 0.1 sec, mute button is on.

However, in most case I don't need to keep checking mute in the run loop. I just want to know if it is muted while the user start playing some audio. So I modified it and made a class, named MuteChecker, to check it on-demand.

Also, it will call a completion block after checking. So you can put whatever logic you like for the checking result.

To use it, you just simply initialise it with a completion block.

```objc
self.muteChecker = [[MuteChecker alloc] initWithCompletionBlk:^(NSTimeInterval lapse, BOOL muted) {
	//your logic here...
}];
```

The "lapse" parameter return the time used for playing the checking sound.

The "muted" parameter will return YES if the time lapse is &lt; 0.1 sec.


To start checking, call

```objc
[_muteChecker check];
```

and your result will be reflected by the completion block.
