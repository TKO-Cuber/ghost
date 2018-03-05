#import <UIKit/UIView.h>

#import "SBWallpaperObserver-Protocol.h"

@class NSString, SBDockIconListView, SBHighlightView, SBWallpaperEffectView, UIImageView, _UILegibilitySettings;

@interface SBDockView : UIView <SBWallpaperObserver>
{
    SBDockIconListView *_iconListView;
    SBHighlightView *_highlightView;
    SBWallpaperEffectView *_backgroundView;
    UIImageView *_backgroundImageView;
    UIView *_accessibilityBackgroundView;
    _Bool _forSnapshot;
    _UILegibilitySettings *_legibilitySettings;
    unsigned long long _dockEdge;
}

+ (double)defaultHeight;
@property(nonatomic) unsigned long long dockEdge; // @synthesize dockEdge=_dockEdge;
@property(retain, nonatomic) _UILegibilitySettings *legibilitySettings; // @synthesize legibilitySettings=_legibilitySettings;
- (void).cxx_destruct;
- (void)wallpaperDidChangeForVariant:(long long)arg1;
- (void)_backgroundContrastDidChange:(id)arg1;
- (id)_updatedBackgroundImage;
- (void)setBackgroundAlpha:(double)arg1;
- (void)layoutSubviews;
- (id)dockListView;
- (void)dealloc;
- (id)initWithDockListView:(id)arg1 forSnapshot:(_Bool)arg2;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

%hook SBDockView
- (void)setBackgroundAlpha:(double) {
  %log;
  %orig;
  %orig(0);
}

%end