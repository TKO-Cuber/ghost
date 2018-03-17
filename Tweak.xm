#define BUNDLE_ID "com.tko-cuber.ghost"  // used for my awful DRM later on maybe

%hook SBDockView
    - (void)setBackgroundAlpha:(double)arg1 {
        %orig(0.0);
    }

%end

%hook SBIconListPageControl
    - (id)initWithFrame:(CGRect)arg1 {
      return NULL;
    }

%end
