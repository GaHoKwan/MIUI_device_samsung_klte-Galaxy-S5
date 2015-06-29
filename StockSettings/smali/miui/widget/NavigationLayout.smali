.class public Lmiui/widget/NavigationLayout;
.super Landroid/view/ViewGroup;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NavigationLayout$ViewDragCallback;,
        Lmiui/widget/NavigationLayout$WidthDescription;,
        Lmiui/widget/NavigationLayout$LayoutParams;,
        Lmiui/widget/NavigationLayout$SavedState;,
        Lmiui/widget/NavigationLayout$NavigationListener;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field private static final DEFAULT_SCRIM_COLOR:I = -0x330a0809

.field public static final DRAWER_ENABLED_LANDSCAPE:I = 0x2

.field public static final DRAWER_ENABLED_NONE:I = 0x0

.field public static final DRAWER_ENABLED_PORTRAIT:I = 0x1

.field public static final DRAWER_MODE_OVERLAY:I = 0x0

.field public static final DRAWER_MODE_PUSHED_AWAY:I = 0x1

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0x96

.field public static final RELATIVE_TO_PARENT:I = 0x1

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mChildrenCanceledTouch:Z

.field private mContent:Landroid/view/View;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private final mDragger:Lcom/miui/internal/widget/ViewDragHelper;

.field private mDrawerEnabled:Z

.field private mDrawerEnabledOrientation:I

.field private mDrawerMode:I

.field private mFirstMeasure:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

.field private mListener:Lmiui/widget/NavigationLayout$NavigationListener;

.field private mLockMode:I

.field private mNavigation:Landroid/view/View;

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

.field private mScrimAnimationView:Landroid/view/View;

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimOpacityAnimatior:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 192
    sget v0, Lmiui/R$attr;->navigationLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v5, -0x330a0809

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lmiui/widget/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 147
    iput v5, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    .line 149
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 153
    iput-boolean v7, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    .line 155
    iput v6, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    .line 157
    new-instance v4, Lmiui/widget/NavigationLayout$1;

    invoke-direct {v4, p0}, Lmiui/widget/NavigationLayout$1;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v4, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    .line 197
    sget-object v4, Lmiui/R$styleable;->NavigationLayout:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_1
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 213
    .local v3, "dividerWidth":I
    if-eqz v3, :cond_2

    .line 214
    invoke-virtual {p0, v3}, Lmiui/widget/NavigationLayout;->setDividerWidth(I)V

    .line 217
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    .line 219
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    .line 222
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/widget/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/NavigationLayout;->mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    .line 225
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/widget/NavigationLayout$WidthDescription;->parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/NavigationLayout;->mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    .line 229
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v5, Lmiui/widget/NavigationLayout$ViewDragCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V

    invoke-static {p0, v4, v5}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    .line 235
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v4, v7}, Lcom/miui/internal/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 237
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 238
    .local v2, "density":F
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/high16 v5, 0x43c80000    # 400.0f

    mul-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/miui/internal/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 240
    invoke-virtual {p0, v7}, Lmiui/widget/NavigationLayout;->setFocusableInTouchMode(Z)V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/NavigationLayout;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->cancelChildViewTouch()V

    return-void
.end method

.method static synthetic access$400(Lmiui/widget/NavigationLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lmiui/widget/NavigationLayout;F)F
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    return p1
.end method

.method static synthetic access$700(Lmiui/widget/NavigationLayout;F)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;
    .param p1, "x1"    # F

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    return-void
.end method

.method static synthetic access$800(Lmiui/widget/NavigationLayout;)F
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NavigationLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelChildViewTouch()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 710
    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    if-nez v2, :cond_1

    .line 711
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 712
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 714
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getChildCount()I

    move-result v9

    .line 715
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 716
    invoke-virtual {p0, v10}, Lmiui/widget/NavigationLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 715
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 719
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    .line 721
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v9    # "childCount":I
    .end local v10    # "i":I
    :cond_1
    return-void
.end method

.method private closePeekingDrawer()V
    .locals 2

    .prologue
    .line 823
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 824
    .local v0, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    if-eqz v1, :cond_0

    .line 825
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 826
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    .line 828
    :cond_0
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 591
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 592
    .local v1, "dividerBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 597
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 599
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 600
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    return-void
.end method

.method private drawNavigationDisableScrim(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 568
    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 569
    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v7, v0, 0x18

    .line 570
    .local v7, "baseAlpha":I
    int-to-float v0, v7

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 571
    .local v6, "alpha":I
    shl-int/lit8 v0, v6, 0x18

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int v8, v0, v1

    .line 572
    .local v8, "color":I
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 573
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 576
    .end local v6    # "alpha":I
    .end local v7    # "baseAlpha":I
    .end local v8    # "color":I
    :cond_0
    return-void
.end method

.method private drawScrim(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 557
    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 558
    iget v0, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v7, v0, 0x18

    .line 559
    .local v7, "baseAlpha":I
    int-to-float v0, v7

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 560
    .local v6, "alpha":I
    shl-int/lit8 v0, v6, 0x18

    iget v1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int v8, v0, v1

    .line 561
    .local v8, "color":I
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 565
    .end local v6    # "alpha":I
    .end local v7    # "baseAlpha":I
    .end local v8    # "color":I
    :cond_0
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 579
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 588
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    .line 584
    .local v0, "navRight":I
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 585
    .local v1, "shadowWidth":I
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v0, v1

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 587
    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getNavigationOffset()F
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 740
    .local v0, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    return v1
.end method

.method private getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lmiui/widget/NavigationLayout$2;

    invoke-direct {v0, p0}, Lmiui/widget/NavigationLayout$2;-><init>(Lmiui/widget/NavigationLayout;)V

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 414
    :cond_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method private isDrawerPeeking()Z
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 725
    .local v0, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    iget-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    return v1
.end method

.method private pullChildren()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 419
    sget v0, Lmiui/R$id;->content:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    .line 420
    sget v0, Lmiui/R$id;->navigation:I

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    .line 422
    :cond_0
    return-void
.end method

.method private setChildViewEnabled(Landroid/view/View;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 340
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 344
    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v4, [F

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    aput v0, v4, v5

    if-eqz p2, :cond_4

    move v0, v2

    :goto_2
    aput v0, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 349
    :goto_3
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    .line 351
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    if-eqz p2, :cond_8

    :goto_4
    iput v1, p0, Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F

    .line 354
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 344
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    .line 346
    :cond_5
    new-array v3, v4, [F

    if-eqz p2, :cond_6

    move v0, v1

    :goto_5
    aput v0, v3, v5

    if-eqz p2, :cond_7

    move v0, v2

    :goto_6
    aput v0, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NavigationLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v1, v2

    .line 353
    goto :goto_4
.end method

.method private setNavigationOffset(F)V
    .locals 4
    .param p1, "slideOffset"    # F

    .prologue
    .line 744
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 745
    .local v0, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    iget v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 759
    :goto_0
    return-void

    .line 749
    :cond_0
    iput p1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    .line 750
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v1, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerSlide(F)V

    .line 754
    :cond_1
    iget v1, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    if-nez v1, :cond_2

    .line 755
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 533
    instance-of v0, p1, Lmiui/widget/NavigationLayout$LayoutParams;

    return v0
.end method

.method public closeNavigationDrawer(Z)V
    .locals 4
    .param p1, "smooth"    # Z

    .prologue
    .line 836
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    if-eqz v0, :cond_0

    .line 837
    const/4 p1, 0x0

    .line 839
    :cond_0
    if-eqz p1, :cond_3

    .line 840
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez v0, :cond_1

    .line 852
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 850
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 851
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 845
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    .line 846
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 730
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 732
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    iput v0, p0, Lmiui/widget/NavigationLayout;->mScrimOpacity:F

    .line 733
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->postInvalidateOnAnimation()V

    .line 736
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 540
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawScrim(Landroid/graphics/Canvas;)V

    .line 542
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawShadow(Landroid/graphics/Canvas;)V

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawDivider(Landroid/graphics/Canvas;)V

    .line 545
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout;->drawNavigationDisableScrim(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 865
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 876
    :goto_0
    return v0

    .line 869
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 871
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    .line 872
    .local v0, "handle":Z
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0

    .line 876
    .end local v0    # "handle":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 388
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 389
    .local v5, "y":I
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 390
    .local v1, "left":I
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v2

    .line 391
    .local v2, "right":I
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    .line 392
    .local v3, "top":I
    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 393
    .local v0, "bottom":I
    if-ge v1, v4, :cond_0

    if-ge v4, v2, :cond_0

    if-ge v3, v5, :cond_0

    if-ge v5, v0, :cond_0

    .line 394
    const/4 v6, 0x1

    .line 398
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :goto_0
    return v6

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 516
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 522
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 528
    new-instance v0, Lmiui/widget/NavigationLayout$LayoutParams;

    invoke-direct {v0, p1}, Lmiui/widget/NavigationLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    return v0
.end method

.method public getDrawerEnabledOrientation()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    return v0
.end method

.method public getDrawerLockMode()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    return v0
.end method

.method public isNavigationDrawerOpen()Z
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    iget v0, v0, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 427
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->pullChildren()V

    .line 428
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 605
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v5, p1}, Lcom/miui/internal/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 606
    .local v0, "interceptForDrag":Z
    iget-boolean v5, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez v5, :cond_1

    .line 607
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 640
    :cond_0
    :goto_0
    return v4

    .line 610
    :cond_1
    const/4 v1, 0x0

    .line 612
    .local v1, "interceptForTap":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 640
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->isDrawerPeeking()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    if-eqz v5, :cond_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 614
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 615
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 616
    .local v3, "y":F
    iput v2, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    .line 617
    iput v3, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    .line 618
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-ne v5, v6, :cond_4

    .line 619
    const/4 v1, 0x1

    .line 621
    :cond_4
    iput-boolean v4, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_1

    .line 626
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_1
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 634
    :pswitch_2
    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 635
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    .line 636
    iput-boolean v4, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
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
    const/4 v7, 0x0

    .line 484
    iget-boolean v4, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eqz v4, :cond_1

    .line 485
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v4, p2, p3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 489
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 490
    .local v3, "navWidth":I
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 491
    .local v1, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    neg-int v4, v3

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, v1, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 492
    .local v2, "navLeft":I
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    add-int v5, v2, v3

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v4, v2, p3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 494
    iget v4, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 495
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    neg-int v5, v3

    int-to-float v5, v5

    iget v6, v1, Lmiui/widget/NavigationLayout$LayoutParams;->offset:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setScrollX(I)V

    .line 512
    .end local v1    # "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    .end local v2    # "navLeft":I
    .end local v3    # "navWidth":I
    :goto_0
    return-void

    .line 497
    .restart local v1    # "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    .restart local v2    # "navLeft":I
    .restart local v3    # "navWidth":I
    :cond_0
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0

    .line 500
    .end local v1    # "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    .end local v2    # "navLeft":I
    .end local v3    # "navWidth":I
    :cond_1
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v4, p2, p3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 503
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p2

    iget v5, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int v0, v4, v5

    .line 506
    .local v0, "contentLeft":I
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-object v5, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v4, v0, p3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 510
    iget-object v4, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setScrollX(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    .line 433
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->pullChildren()V

    .line 435
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 436
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 438
    .local v6, "heightSize":I
    invoke-virtual {p0, v13, v6}, Lmiui/widget/NavigationLayout;->setMeasuredDimension(II)V

    .line 440
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 443
    .local v7, "isLandscape":Z
    :goto_0
    if-eqz v7, :cond_2

    iget-object v12, p0, Lmiui/widget/NavigationLayout;->mLandscapeWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    .line 445
    .local v12, "widthDescription":Lmiui/widget/NavigationLayout$WidthDescription;
    :goto_1
    const/4 v10, 0x0

    .line 446
    .local v10, "navigationWidth":I
    iget v0, v12, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 457
    .local v9, "navWidthSpec":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 459
    .local v8, "navHeightSpec":I
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {p0, v0, v9, v8}, Lmiui/widget/NavigationLayout;->measureChild(Landroid/view/View;II)V

    .line 462
    const/4 v11, 0x1

    .line 463
    .local v11, "swipeEnable":Z
    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    .line 464
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 473
    :goto_3
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-eq v0, v11, :cond_0

    .line 474
    iput-boolean v11, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    .line 475
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0, v11}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerEnableStateChange(Z)V

    .line 479
    :cond_0
    return-void

    .line 440
    .end local v7    # "isLandscape":Z
    .end local v8    # "navHeightSpec":I
    .end local v9    # "navWidthSpec":I
    .end local v10    # "navigationWidth":I
    .end local v11    # "swipeEnable":Z
    .end local v12    # "widthDescription":Lmiui/widget/NavigationLayout$WidthDescription;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 443
    .restart local v7    # "isLandscape":Z
    :cond_2
    iget-object v12, p0, Lmiui/widget/NavigationLayout;->mPortraitWidthDescription:Lmiui/widget/NavigationLayout$WidthDescription;

    goto :goto_1

    .line 448
    .restart local v10    # "navigationWidth":I
    .restart local v12    # "widthDescription":Lmiui/widget/NavigationLayout$WidthDescription;
    :pswitch_0
    iget v0, v12, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    float-to-int v10, v0

    .line 449
    goto :goto_2

    .line 451
    :pswitch_1
    iget v0, v12, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    int-to-float v1, v13

    mul-float/2addr v0, v1

    float-to-int v10, v0

    goto :goto_2

    .line 465
    .restart local v8    # "navHeightSpec":I
    .restart local v9    # "navWidthSpec":I
    .restart local v11    # "swipeEnable":Z
    :cond_3
    iget v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    if-nez v7, :cond_4

    .line 466
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_3

    .line 468
    :cond_4
    const/4 v11, 0x0

    .line 469
    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    add-int v3, v0, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/NavigationLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_3

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v3, 0x0

    .line 891
    move-object v0, p1

    check-cast v0, Lmiui/widget/NavigationLayout$SavedState;

    .line 892
    .local v0, "savedState":Lmiui/widget/NavigationLayout$SavedState;
    invoke-virtual {v0}, Lmiui/widget/NavigationLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 894
    iget v1, v0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    invoke-direct {p0, v1}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    .line 895
    iget v1, v0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 896
    invoke-virtual {p0, v3}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-virtual {p0, v3}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 881
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 882
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lmiui/widget/NavigationLayout$SavedState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/widget/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;Lmiui/widget/NavigationLayout$1;)V

    .line 884
    .local v0, "savedState":Lmiui/widget/NavigationLayout$SavedState;
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->getNavigationOffset()F

    move-result v2

    iput v2, v0, Lmiui/widget/NavigationLayout$SavedState;->offset:F

    .line 886
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 646
    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Lcom/miui/internal/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 647
    iget-boolean v9, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez v9, :cond_1

    .line 648
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 694
    :cond_0
    :goto_0
    return v8

    .line 651
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 652
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 653
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 655
    .local v7, "y":F
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 657
    :pswitch_1
    iput v6, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    .line 658
    iput v7, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    .line 659
    iput-boolean v10, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 664
    :pswitch_2
    iget v9, p0, Lmiui/widget/NavigationLayout;->mInitialMotionX:F

    sub-float v2, v6, v9

    .line 665
    .local v2, "dx":F
    iget v9, p0, Lmiui/widget/NavigationLayout;->mInitialMotionY:F

    sub-float v3, v7, v9

    .line 666
    .local v3, "dy":F
    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v9}, Lcom/miui/internal/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    .line 667
    .local v4, "slop":I
    const/4 v1, 0x1

    .line 669
    .local v1, "closePeekingDrawerOnly":Z
    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v9, v10, v11}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 670
    .local v5, "touchedView":Landroid/view/View;
    if-eqz v5, :cond_2

    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    if-ne v5, v9, :cond_2

    .line 671
    mul-float v9, v2, v2

    mul-float v10, v3, v3

    add-float/2addr v9, v10

    mul-int v10, v4, v4

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 672
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 673
    const/4 v1, 0x0

    .line 678
    :cond_2
    iget-object v9, p0, Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 679
    if-eqz v1, :cond_3

    .line 680
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    goto :goto_0

    .line 682
    :cond_3
    iget v9, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-nez v9, :cond_0

    .line 683
    invoke-virtual {p0, v8}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0

    .line 688
    .end local v1    # "closePeekingDrawerOnly":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "slop":I
    .end local v5    # "touchedView":Landroid/view/View;
    :pswitch_3
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    .line 689
    iput-boolean v10, p0, Lmiui/widget/NavigationLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openNavigationDrawer(Z)V
    .locals 4
    .param p1, "smooth"    # Z

    .prologue
    .line 805
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mFirstMeasure:Z

    if-eqz v0, :cond_0

    .line 806
    const/4 p1, 0x0

    .line 808
    :cond_0
    if-eqz p1, :cond_3

    .line 809
    iget-boolean v0, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabled:Z

    if-nez v0, :cond_1

    .line 820
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    iget-object v1, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 819
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    goto :goto_0

    .line 814
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V

    .line 815
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    goto :goto_1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 703
    :cond_0
    if-eqz p1, :cond_1

    .line 704
    invoke-direct {p0}, Lmiui/widget/NavigationLayout;->closePeekingDrawer()V

    .line 706
    :cond_1
    return-void
.end method

.method public setContentEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 372
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    .line 305
    :goto_0
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 306
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 307
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 308
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "dividerWidth"    # I

    .prologue
    .line 324
    iput p1, p0, Lmiui/widget/NavigationLayout;->mDividerWidth:I

    .line 325
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 326
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 327
    return-void
.end method

.method public setDrawerEnabledOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 270
    iput p1, p0, Lmiui/widget/NavigationLayout;->mDrawerEnabledOrientation:I

    .line 271
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 272
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 2
    .param p1, "lockMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 771
    iget v0, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    if-ne v0, p1, :cond_0

    .line 787
    :goto_0
    return-void

    .line 774
    :cond_0
    iput p1, p0, Lmiui/widget/NavigationLayout;->mLockMode:I

    .line 776
    if-eqz p1, :cond_1

    .line 777
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 779
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 784
    :pswitch_0
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->closeNavigationDrawer(Z)V

    goto :goto_0

    .line 781
    :pswitch_1
    invoke-virtual {p0, v1}, Lmiui/widget/NavigationLayout;->openNavigationDrawer(Z)V

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawerMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 379
    iput p1, p0, Lmiui/widget/NavigationLayout;->mDrawerMode:I

    .line 381
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->requestLayout()V

    .line 382
    return-void
.end method

.method public setNavigationEanbled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lmiui/widget/NavigationLayout;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 363
    return-void
.end method

.method public setNavigationListener(Lmiui/widget/NavigationLayout$NavigationListener;)V
    .locals 0
    .param p1, "listener"    # Lmiui/widget/NavigationLayout$NavigationListener;

    .prologue
    .line 251
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;

    .line 252
    return-void
.end method

.method public setNavigationShadow(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 290
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/NavigationLayout;->setNavigationShadow(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method

.method public setNavigationShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 280
    iput-object p1, p0, Lmiui/widget/NavigationLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 281
    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 282
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 553
    iput p1, p0, Lmiui/widget/NavigationLayout;->mScrimColor:I

    .line 554
    return-void
.end method
