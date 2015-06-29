.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$ScaleDetectorListener;,
        Lmiui/widget/ScreenView$SliderTouchListener;,
        Lmiui/widget/ScreenView$SlideBar;,
        Lmiui/widget/ScreenView$SeekBarIndicator;,
        Lmiui/widget/ScreenView$ArrowIndicator;,
        Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;,
        Lmiui/widget/ScreenView$GestureVelocityTracker;,
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$Indicator;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x12c

.field public static final FLING_ALIGN:I = 0x4

.field public static final FLING_CANCEL:I = 0x3

.field public static final FLING_LEFT:I = 0x1

.field public static final FLING_RIGHT:I = 0x2

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field private static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3

.field private static final ViewClass:Lcom/miui/internal/variable/Android_View_View_class;


# instance fields
.field private final DEFAULT_CAMERA_DISTANCE:F

.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field private mAutoHideTimer:Ljava/lang/Runnable;

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field private mFirstLayout:Z

.field private mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

.field private mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field private mIsSlideBarAutoHide:Z

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field private mScreenPaddingBottom:I

.field private mScreenPaddingTop:I

.field private mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field private mScreenWidth:I

.field private mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

.field private mScrollLeftBound:I

.field private mScrollOffset:I

.field private mScrollRightBound:I

.field private mScrollWholeScreen:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field private mSlideBar:Lmiui/widget/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVisibleExtentionRatio:F

.field protected mVisibleRange:I

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 58
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    .line 161
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 207
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 211
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 213
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 215
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 217
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 219
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 237
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 255
    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 260
    iput v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 269
    iput v5, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 275
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 281
    iput v4, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    .line 283
    iput v2, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 292
    iput v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 298
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 304
    iput v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 310
    iput v4, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 312
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 316
    iput v2, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 318
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 322
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 332
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 207
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 211
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 213
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 215
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 217
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 219
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 237
    new-instance v0, Lmiui/widget/ScreenView$1;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$1;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 255
    iput v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 260
    iput v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 269
    iput v5, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 275
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 281
    iput v4, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    .line 283
    iput v2, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 292
    iput v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 298
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 304
    iput v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 310
    iput v4, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 312
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 316
    iput v2, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 318
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 322
    new-instance v0, Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    .line 356
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 357
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ScreenView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/ScreenView;

    .prologue
    .line 56
    invoke-direct {p0}, Lmiui/widget/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/ScreenView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/ScreenView;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/ScreenView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/ScreenView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ScreenView;

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/ScreenView;II)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/ScreenView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$1400(Lmiui/widget/ScreenView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ScreenView;

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$SlideBar;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ScreenView;

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/ScreenView;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ScreenView;

    .prologue
    .line 56
    iget v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$800()Lcom/miui/internal/variable/Android_View_View_class;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ScreenView;

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1613
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1614
    .local v0, "seekPoint":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1615
    iget v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1616
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 424
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 425
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    .line 426
    new-instance v1, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 427
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 428
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 429
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 430
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 431
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    .line 432
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 434
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1122
    iget-object v0, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1123
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_1

    .line 1125
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1127
    :cond_1
    return-void
.end method

.method private refreshScrollBound()V
    .locals 3

    .prologue
    .line 818
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    .line 820
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 821
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 829
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    goto :goto_0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1115
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1116
    .local v0, "dx":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1117
    .local v1, "dy":F
    iget v3, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setCurrentScreenInner(I)V
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1360
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    .line 1361
    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1362
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1363
    return-void
.end method

.method private setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1037
    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 1038
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1040
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 1041
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1042
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1043
    iget-object v1, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1065
    :cond_0
    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 1066
    return-void

    :cond_1
    move v1, v3

    .line 1038
    goto :goto_0

    .line 1045
    :cond_2
    if-eqz p1, :cond_3

    .line 1046
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1047
    iget v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1050
    :cond_3
    iget-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 1051
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1055
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1056
    .local v0, "currentScreen":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1060
    .end local v0    # "currentScreen":Landroid/view/View;
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    .line 1061
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 1062
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method private showSlideBar()V
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 567
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 568
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAlpha(F)V

    .line 569
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    .line 570
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lmiui/widget/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lmiui/widget/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private snapByVelocity(I)V
    .locals 5
    .param p1, "pointerId"    # I

    .prologue
    .line 1189
    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v2, v3, v4, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v2

    float-to-int v1, v2

    .line 1194
    .local v1, "velocityX":I
    iget-object v2, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    .line 1196
    .local v0, "flingDirection":I
    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    goto :goto_0
.end method

.method private startHideSlideBar()V
    .locals 4

    .prologue
    .line 576
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$2;-><init>(Lmiui/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 782
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_0

    .line 783
    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-gtz p1, :cond_1

    iget v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 787
    iget-object v1, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 793
    :cond_0
    return-void

    .line 783
    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 787
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateChildStaticTransformation(Landroid/view/View;)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const v13, 0x459c4000    # 5000.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1749
    instance-of v9, p1, Lmiui/widget/ScreenView$Indicator;

    if-eqz v9, :cond_0

    .line 1878
    :goto_0
    :pswitch_0
    return-void

    .line 1752
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    .line 1753
    .local v1, "childW":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    .line 1754
    .local v0, "childH":F
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    .line 1755
    .local v4, "halfScreenW":F
    div-float v3, v1, v10

    .line 1756
    .local v3, "halfChildW":F
    div-float v2, v0, v10

    .line 1757
    .local v2, "halfChildH":F
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    div-float v5, v9, v1

    .line 1760
    .local v5, "interpolation":F
    iget v9, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1762
    :pswitch_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1765
    :pswitch_2
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1768
    :pswitch_3
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_2

    .line 1769
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1772
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1773
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1774
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1775
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1776
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1777
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1778
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1779
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1780
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1781
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1782
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1785
    :pswitch_4
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_4

    .line 1786
    :cond_3
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1789
    :cond_4
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1790
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1791
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1792
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1793
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1794
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1795
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1796
    neg-float v9, v5

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1797
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1798
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1799
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1802
    :pswitch_5
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_6

    .line 1803
    :cond_5
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1806
    :cond_6
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1807
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1808
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1809
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1810
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1811
    cmpg-float v9, v5, v8

    if-gez v9, :cond_7

    move v1, v8

    .end local v1    # "childW":F
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1812
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1813
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1814
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1815
    const/high16 v8, -0x3d4c0000    # -90.0f

    mul-float/2addr v8, v5

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1816
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1819
    .restart local v1    # "childW":F
    :pswitch_6
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_9

    .line 1820
    :cond_8
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1823
    :cond_9
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1824
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1825
    mul-float v9, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1827
    mul-float v9, v11, v5

    add-float v6, v12, v9

    .line 1828
    .local v6, "scale1":F
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1829
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1830
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1831
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1832
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1833
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1834
    const/high16 v8, 0x42340000    # 45.0f

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1835
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1840
    .end local v6    # "scale1":F
    :pswitch_7
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_a

    .line 1841
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1844
    :cond_a
    sub-float v9, v12, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1845
    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3ecccccd    # 0.4f

    sub-float v11, v12, v5

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1846
    .local v7, "scale2":F
    sub-float v9, v12, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1847
    sub-float v9, v12, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1848
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1849
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1850
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1851
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1852
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1853
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1854
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1855
    iget v8, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1858
    .end local v7    # "scale2":F
    :pswitch_8
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_c

    .line 1859
    :cond_b
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1862
    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1863
    mul-float v9, v1, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1864
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1865
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1866
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1867
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1868
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1869
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1870
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1871
    const/high16 v8, 0x42b40000    # 90.0f

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1872
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1875
    :pswitch_9
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1760
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 17
    .param p1, "scrollX"    # I
    .param p2, "requestLayout"    # Z

    .prologue
    .line 693
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_3

    .line 694
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 695
    .local v4, "indexOffset":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v12

    .line 696
    .local v12, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v11

    .line 697
    .local v11, "screenHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_3

    .line 698
    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 699
    .local v5, "indicator":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 702
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 703
    .local v9, "indicatorWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 704
    .local v6, "indicatorHeight":I
    const/4 v7, 0x0

    .line 705
    .local v7, "indicatorLeft":I
    const/4 v8, 0x0

    .line 706
    .local v8, "indicatorTop":I
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 707
    .local v1, "gravity":I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 708
    and-int/lit8 v2, v1, 0x7

    .line 710
    .local v2, "horizontalGravity":I
    and-int/lit8 v13, v1, 0x70

    .line 712
    .local v13, "verticalGravity":I
    packed-switch v2, :pswitch_data_0

    .line 725
    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 727
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 740
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 743
    .end local v2    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_0
    :goto_2
    if-nez p2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_2

    move-object v14, v5

    .line 745
    check-cast v14, Lmiui/widget/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lmiui/widget/ScreenView$Indicator;->fastOffset(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 747
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 697
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 714
    .restart local v2    # "horizontalGravity":I
    .restart local v13    # "verticalGravity":I
    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 715
    goto :goto_1

    .line 717
    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 719
    goto :goto_1

    .line 721
    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 723
    goto :goto_1

    .line 729
    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 730
    goto :goto_2

    .line 732
    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 734
    goto :goto_2

    .line 736
    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 738
    goto :goto_2

    .line 750
    .end local v2    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_2
    add-int v14, p1, v7

    add-int v15, p1, v7

    add-int/2addr v15, v9

    add-int v16, v8, v6

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 758
    .end local v1    # "gravity":I
    .end local v3    # "i":I
    .end local v4    # "indexOffset":I
    .end local v5    # "indicator":Landroid/view/View;
    .end local v6    # "indicatorHeight":I
    .end local v7    # "indicatorLeft":I
    .end local v8    # "indicatorTop":I
    .end local v9    # "indicatorWidth":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "screenHeight":I
    .end local v12    # "screenWidth":I
    :cond_3
    return-void

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 727
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 689
    :goto_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    .line 690
    return-void

    .line 677
    :pswitch_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 680
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 683
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 686
    :pswitch_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1620
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_1

    .line 1621
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1622
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    if-ge v2, v0, :cond_0

    .line 1623
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    if-ge v2, v0, :cond_1

    .line 1628
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1627
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1631
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .param p1, "scrollX"    # I

    .prologue
    .line 762
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 763
    .local v0, "screenCount":I
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 764
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 765
    .local v2, "slideBarWidth":I
    div-int v5, v2, v0

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 768
    .local v3, "slidePointWidth":I
    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 769
    .local v1, "screenViewContentWidth":I
    if-gt v1, v2, :cond_1

    const/4 v4, 0x0

    .line 774
    .local v4, "slidePointX":I
    :goto_0
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    .line 775
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->invalidate()V

    .line 779
    .end local v1    # "screenViewContentWidth":I
    .end local v2    # "slideBarWidth":I
    .end local v3    # "slidePointWidth":I
    .end local v4    # "slidePointX":I
    :cond_0
    return-void

    .line 769
    .restart local v1    # "screenViewContentWidth":I
    .restart local v2    # "slideBarWidth":I
    .restart local v3    # "slidePointWidth":I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 1478
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1479
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    return-void
.end method

.method protected addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "index"    # I

    .prologue
    .line 1492
    const/4 v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1493
    if-ltz p3, :cond_0

    .line 1494
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1496
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1497
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1399
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1400
    .local v0, "currentCount":I
    if-gez p2, :cond_1

    .line 1401
    move p2, v0

    .line 1405
    :goto_0
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1410
    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    .line 1411
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    return-void

    .line 1403
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const v6, 0x4e6e6b28    # 1.0E9f

    .line 854
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 856
    sget-object v3, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    iget v4, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int v4, v4

    invoke-virtual {v3, p0, v4}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    .line 857
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v6

    iput v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 858
    sget-object v3, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    iget-object v4, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollYDirectly(Landroid/view/View;I)V

    .line 859
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidateOnAnimation()V

    .line 880
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    .line 881
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateSlidePointPosition(I)V

    .line 882
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateArrowIndicatorResource(I)V

    .line 883
    return-void

    .line 860
    :cond_1
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    if-eq v3, v5, :cond_2

    .line 861
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 863
    iput v5, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 864
    iget-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v3, :cond_0

    .line 865
    iget-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v3, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    .line 866
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_0

    .line 868
    :cond_2
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 869
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float v2, v3, v6

    .line 870
    .local v2, "now":F
    iget v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 872
    .local v1, "e":F
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 873
    .local v0, "dx":F
    sget-object v3, Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, p0, v4}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    .line 874
    iput v2, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 876
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 877
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1017
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1018
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 1019
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1028
    :goto_0
    return v0

    .line 1022
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1023
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1024
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 1028
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 997
    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 998
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 1913
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1914
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1334
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 1322
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1323
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1325
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    goto :goto_0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1373
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1374
    :cond_0
    const/4 v0, 0x0

    .line 1376
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1313
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .prologue
    .line 1660
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    return v0
.end method

.method public getSeekPointView(I)Landroid/widget/ImageView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1609
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 1388
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 887
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 888
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    .line 889
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 890
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1105
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 1107
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1109
    :cond_1
    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v2, :cond_3

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eq v2, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 1072
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1073
    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1074
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1080
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1081
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1082
    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 1083
    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    .line 1087
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1088
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 1095
    :cond_4
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1096
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1102
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1070
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 974
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lmiui/widget/ScreenView;->updateIndicatorPositions(IZ)V

    .line 976
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    .line 977
    .local v2, "count":I
    const/4 v1, 0x0

    .line 978
    .local v1, "childLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 979
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 981
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 987
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 978
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 990
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 991
    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 993
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 902
    move/from16 v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    .line 903
    move/from16 v0, p2

    iput v0, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    .line 904
    const/4 v9, 0x0

    .line 905
    .local v9, "maxHeight":I
    const/4 v10, 0x0

    .line 906
    .local v10, "maxWidth":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    .line 908
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v11, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v5, v11, :cond_0

    .line 909
    add-int v11, v5, v4

    invoke-virtual {p0, v11}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 910
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 911
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v11, v12}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v3

    .line 914
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v11

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v11, v12

    iget v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v11, v12}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 919
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 920
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 921
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 908
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 924
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v7, 0x0

    .line 925
    .local v7, "maxChildHeight":I
    const/4 v8, 0x0

    .line 926
    .local v8, "maxChildWidth":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 927
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 928
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 929
    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v11, v12}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v3

    .line 932
    .restart local v3    # "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v11

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v11, v12

    iget v12, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v11, v12}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 937
    .restart local v2    # "childHeightMeasureSpec":I
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 938
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 939
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 926
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 942
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 943
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 945
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    .line 946
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingTop()I

    move-result v11

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 948
    move/from16 v0, p1

    invoke-static {v10, v0}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v11

    move/from16 v0, p2

    invoke-static {v9, v0}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    .line 951
    if-lez v4, :cond_3

    .line 952
    iput v8, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 953
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 955
    invoke-direct {p0}, Lmiui/widget/ScreenView;->updateScreenOffset()V

    .line 956
    iget v11, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v11, :cond_2

    .line 957
    const/4 v11, 0x1

    iget v12, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v13, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v13, v13

    iget v14, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    iget v13, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 961
    :cond_2
    iget v11, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v11}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 963
    :cond_3
    iget-boolean v11, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-eqz v11, :cond_4

    iget v11, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez v11, :cond_4

    .line 964
    const/4 v11, 0x0

    iput-boolean v11, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 965
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 966
    iget v11, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 967
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 969
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1645
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1646
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1649
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1651
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1897
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1906
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1924
    move-object v0, p1

    check-cast v0, Lmiui/widget/ScreenView$SavedState;

    .line 1925
    .local v0, "savedState":Lmiui/widget/ScreenView$SavedState;
    invoke-virtual {v0}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1926
    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1927
    iget v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1929
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1638
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1917
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1918
    .local v0, "state":Lmiui/widget/ScreenView$SavedState;
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    .line 1919
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1131
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v6, :cond_0

    .line 1185
    :goto_0
    return v5

    .line 1134
    :cond_0
    iget-boolean v6, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v6, :cond_1

    .line 1135
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1137
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 1184
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v5, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    goto :goto_0

    .line 1141
    :pswitch_1
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1142
    invoke-direct {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1144
    :cond_3
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_2

    .line 1146
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1147
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1148
    invoke-direct {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1149
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1151
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1152
    .local v4, "x":F
    iget v6, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v6, v4

    .line 1153
    .local v0, "deltaX":F
    iput v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1154
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_5

    .line 1155
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 1157
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 1163
    .end local v0    # "deltaX":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    :pswitch_2
    iget v6, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_6

    .line 1164
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v6}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 1166
    :cond_6
    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1169
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    .line 1172
    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1173
    .local v2, "pointerId":I
    iget v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v2, v6, :cond_2

    .line 1177
    if-nez v3, :cond_7

    move v1, v5

    .line 1178
    .local v1, "newPointerIndex":I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 1179
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 1180
    iget-object v6, p0, Lmiui/widget/ScreenView;->mGestureVelocityTracker:Lmiui/widget/ScreenView$GestureVelocityTracker;

    iget v7, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Lmiui/widget/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_1

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1549
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 1550
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1551
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1466
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1467
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1468
    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .locals 3
    .param p1, "indicator"    # Landroid/view/View;

    .prologue
    .line 1507
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1508
    .local v0, "index":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1509
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1512
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1513
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1514
    return-void
.end method

.method public removeScreen(I)V
    .locals 2
    .param p1, "screenIndex"    # I

    .prologue
    .line 1523
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1524
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1527
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1528
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_3

    .line 1529
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1537
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1538
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewAt(I)V

    .line 1540
    :cond_2
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1541
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1542
    return-void

    .line 1531
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1533
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1561
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1565
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1566
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1568
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenCounter:I

    .line 1569
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1450
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1440
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1004
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1005
    .local v0, "screen":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1006
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 1008
    const/4 v1, 0x1

    .line 1012
    :goto_0
    return v1

    .line 1010
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1012
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1730
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1731
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1732
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1733
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1734
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1735
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1736
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1737
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1738
    iget v0, p0, Lmiui/widget/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1739
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1740
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1741
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 846
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 847
    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 848
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 849
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 850
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 837
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 838
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 840
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->measure(II)V

    .line 841
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 842
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 1584
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1585
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "margin"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 444
    if-eqz p1, :cond_2

    .line 447
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-nez v2, :cond_1

    .line 448
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 452
    .local v0, "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 453
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 454
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 455
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 459
    .local v1, "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$ArrowIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 460
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 461
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 468
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 470
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 478
    .end local v0    # "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 463
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v2}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    .restart local v0    # "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {v2}, Lmiui/widget/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1    # "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 472
    .end local v0    # "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 474
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 475
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowLeft:Lmiui/widget/ScreenView$ArrowIndicator;

    .line 476
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowRight:Lmiui/widget/ScreenView$ArrowIndicator;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0
    .param p1, "leftOn"    # I
    .param p2, "leftOff"    # I
    .param p3, "rightOn"    # I
    .param p4, "rightOff"    # I

    .prologue
    .line 487
    iput p1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 488
    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 489
    iput p3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 490
    iput p4, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 491
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 388
    iput p1, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 389
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .param p1, "screenIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1341
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_2

    .line 1342
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1344
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 1349
    :goto_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 1350
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 1351
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1354
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->scrollToScreen(I)V

    .line 1355
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1357
    :cond_1
    return-void

    .line 1346
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 599
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 600
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .prologue
    .line 407
    iput p1, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    .line 408
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 1595
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1596
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1597
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1599
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 803
    iput p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 804
    invoke-direct {p0}, Lmiui/widget/ScreenView;->refreshScrollBound()V

    .line 805
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1
    .param p1, "tension"    # F

    .prologue
    .line 365
    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 366
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    # setter for: Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F
    invoke-static {v0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->access$202(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 369
    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0
    .param p1, "alignment"    # I

    .prologue
    .line 657
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 658
    return-void
.end method

.method public setScreenOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 669
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 670
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 671
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 672
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 638
    if-nez p1, :cond_0

    .line 639
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    .line 643
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    .line 644
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    .line 645
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 397
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 398
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x10e

    const/16 v3, 0x14a

    const v2, 0x3fa66666    # 1.3f

    const/4 v1, 0x0

    .line 1679
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    if-eq p1, v0, :cond_0

    .line 1680
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 1681
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1722
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1683
    :pswitch_1
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1684
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1688
    :pswitch_2
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1689
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1693
    :pswitch_3
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1694
    invoke-virtual {p0, v5}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1697
    :pswitch_4
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1698
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1702
    :pswitch_5
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1703
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1709
    :pswitch_6
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1710
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1714
    :pswitch_7
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1715
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    .line 1681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0
    .param p1, "wholeScreen"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    .line 418
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 508
    if-eqz p1, :cond_3

    .line 509
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v1, :cond_2

    .line 510
    new-instance v1, Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$SeekBarIndicator;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    .line 511
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$SeekBarIndicator;->setGravity(I)V

    .line 512
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 514
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lmiui/widget/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_0
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v1, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 524
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 518
    :cond_2
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v1, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 520
    :cond_3
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 522
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    goto :goto_1
.end method

.method public setSeekBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Lmiui/widget/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SeekBarIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeekPointResource(I)V
    .locals 0
    .param p1, "seekPointResId"    # I

    .prologue
    .line 498
    iput p1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 499
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 533
    sget v0, Lcom/miui/internal/R$drawable;->screen_view_slide_bar:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_slide_bar_bg:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 535
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 3
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "slideDrawableId"    # I
    .param p3, "backgroundDrawableId"    # I
    .param p4, "isAutoHide"    # Z

    .prologue
    const/4 v2, 0x0

    .line 545
    iput-boolean p4, p0, Lmiui/widget/ScreenView;->mIsSlideBarAutoHide:Z

    .line 546
    if-eqz p1, :cond_2

    .line 547
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_1

    .line 548
    new-instance v0, Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    .line 550
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    new-instance v1, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 551
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 552
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 558
    iput-object v2, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "slop"    # I

    .prologue
    .line 378
    iput p1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 379
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 894
    if-nez p1, :cond_0

    .line 895
    invoke-direct {p0}, Lmiui/widget/ScreenView;->showSlideBar()V

    .line 897
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 898
    return-void
.end method

.method public setVisibleExtentionRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 814
    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleExtentionRatio:F

    .line 815
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 5
    .param p1, "velocity"    # I
    .param p2, "flingDirection"    # I

    .prologue
    const/4 v3, 0x1

    .line 1206
    if-ne p2, v3, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_0

    .line 1207
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1220
    :goto_0
    return-void

    .line 1208
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 1210
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1211
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 1212
    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v2, p1, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1214
    :cond_2
    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v0, v4, v2

    .line 1216
    .local v0, "snapUnit":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int v1, v2, v4

    .line 1218
    .local v1, "whichScreen":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v0    # "snapUnit":I
    .end local v1    # "whichScreen":I
    :cond_3
    move v2, v3

    .line 1214
    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 1228
    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 1229
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    .line 1304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1305
    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 9
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z
    .param p4, "notification"    # Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1252
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_6

    .line 1256
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1258
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1263
    :goto_1
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1265
    .local v7, "screenDelta":I
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1266
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_2

    .line 1267
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    .line 1269
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1271
    :cond_3
    iput-object p4, p0, Lmiui/widget/ScreenView;->mSnapScreenOnceNotification:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .line 1272
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1273
    if-eqz p3, :cond_7

    .line 1274
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    .line 1278
    :goto_2
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    .line 1279
    .local v6, "newX":I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 1280
    .local v3, "delta":I
    if-eqz v3, :cond_0

    .line 1283
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    div-int v5, v0, v1

    .line 1284
    .local v5, "duration":I
    if-lez p2, :cond_4

    .line 1285
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000    # 2500.0f

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1288
    :cond_4
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1289
    if-gt v7, v8, :cond_5

    .line 1290
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1292
    :cond_5
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1293
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1260
    .end local v3    # "delta":I
    .end local v5    # "duration":I
    .end local v6    # "newX":I
    .end local v7    # "screenDelta":I
    :cond_6
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    goto/16 :goto_1

    .line 1276
    .restart local v7    # "screenDelta":I
    :cond_7
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_2
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 1
    .param p1, "whichScreen"    # I
    .param p2, "notification"    # Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    .prologue
    const/4 v0, 0x0

    .line 1239
    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    .line 1240
    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "interpolation"    # F

    .prologue
    .line 1888
    return-void
.end method
