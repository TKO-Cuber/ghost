#define BUNDLE_ID "com.tko-cuber.ghost"  // used for my awful DRM later on maybe

%hook SBDockView  //hides the dock background
    - (void)setBackgroundAlpha:(double)arg1 {
        %orig(0.0);
    }
%end

%hook SBIconListPageControl //hide page dots
    - (id)initWithFrame:(CGRect)arg1 {
      return NULL;
    }
%end

%hook _UILegibilityImageView //hide app names on SB
    - (void)setImage:(id)arg1 {
        %orig(NULL)
    }
%end

%hook UIStatusBarServiceItemView //hide carrier name
    - (void)setVisible:(BOOL)arg1 {
        %orig(NO)
    }
%end

%hook SBDashBoardMainPageView //hide press home to unlock
    - (void)_layoutCallToActionLabel {
        $orig(NULL)
    }
%end
