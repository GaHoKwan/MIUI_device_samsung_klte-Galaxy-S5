.class public Lcom/miui/internal/widget/ActionBarMovableLayout;
.super Lcom/miui/internal/widget/ActionBarOverlayLayout;
.source "ActionBarMovableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_SPRING_BACK_DURATION:I = 0x320

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mFlinging:Z

.field private mInitialMotionY:I

.field private mInitialMotionYSet:Z

.field private mIsBeingDragged:Z

.field private mIsSpringBackEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mMotionY:I

.field private mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

.field private mOverScrollDistance:I

.field private mScrollRange:I

.field private mScrollStart:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTabScrollView:Landroid/view/View;

.field private mTabViewVisibility:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/miui/internal/widget/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    .line 54
    iput v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 58
    iput v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 62
    const/16 v2, 0x8

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 66
    iput-boolean v6, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 90
    sget-object v2, Lcom/miui/internal/R$styleable;->ActionBarMovableLayout:[I

    sget v3, Lcom/miui/internal/R$attr;->actionBarMovableLayoutStyle:I

    invoke-virtual {p1, p2, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 95
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 96
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 98
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 99
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTouchSlop:I

    .line 101
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    .line 102
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    .line 103
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    .line 105
    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ActionBarMovableLayout;->setOverScrollMode(I)V

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 390
    if-nez p1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v5

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 395
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 396
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 397
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 399
    .local v3, "right":I
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 400
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarContainer;->getTop()I

    move-result v1

    .line 401
    .local v1, "containerTop":I
    add-int/2addr v4, v1

    .line 402
    add-int/2addr v0, v1

    .line 405
    .end local v1    # "containerTop":I
    :cond_2
    if-lt p3, v4, :cond_0

    if-ge p3, v0, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 418
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 420
    :cond_0
    return-void
.end method

.method private isTabViewVisibilityChanged()Z
    .locals 3

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 642
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 644
    .local v1, "newVisibility":I
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    if-eq v1, v2, :cond_0

    .line 645
    iput v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabViewVisibility:I

    .line 646
    const/4 v0, 0x1

    .line 650
    .end local v1    # "newVisibility":I
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 628
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 629
    .local v1, "pointerId":I
    iget v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 630
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 631
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 632
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 633
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 634
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 637
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 630
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 427
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTranslationY(F)V
    .locals 2
    .param p1, "motion"    # F

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result v0

    .line 608
    .local v0, "y":F
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 610
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 611
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 614
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget v11, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    .line 280
    .local v11, "oldMotionY":I
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 282
    .local v10, "motionY":I
    if-eq v11, v10, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 284
    .local v6, "range":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .line 285
    .local v8, "distance":I
    sub-int v2, v10, v11

    iget v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v9, 0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 288
    .end local v6    # "range":I
    .end local v8    # "distance":I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 295
    .end local v10    # "motionY":I
    .end local v11    # "oldMotionY":I
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mFlinging:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    .line 292
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mFlinging:Z

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 494
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 495
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method ensureTabScrollView()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    .line 432
    return-void
.end method

.method protected fling(I)V
    .locals 11
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 504
    .local v10, "distance":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 505
    .local v8, "range":I
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mFlinging:Z

    .line 508
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidate()V

    .line 509
    return-void
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    return v0
.end method

.method public getScrollRange()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    return v0
.end method

.method public getScrollStart()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 437
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    if-eq p1, v4, :cond_0

    .line 438
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 453
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 444
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 446
    .local v0, "actionBarViewlParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v4, v5}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 448
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v4, v5}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 452
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected motionToTranslation(F)F
    .locals 3
    .param p1, "motion"    # F

    .prologue
    .line 596
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 598
    .local v0, "translationY":F
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->ensureTabScrollView()V

    .line 599
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 603
    :cond_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    sget v4, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "contentMask":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 169
    :goto_0
    return v2

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 120
    .local v0, "action":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 121
    goto :goto_0

    .line 124
    :cond_1
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 169
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 128
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 130
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    .line 131
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 132
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 143
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 144
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 145
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_1

    .line 156
    :pswitch_3
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 157
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 158
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->recycleVelocityTracker()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_1

    .line 164
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    .line 457
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->onLayout(ZIIII)V

    .line 462
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->isTabViewVisibilityChanged()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    move v0, v1

    .line 463
    .local v0, "update":Z
    :goto_0
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-nez v2, :cond_2

    .line 464
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    if-gez v2, :cond_1

    .line 465
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 468
    :cond_1
    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    iput v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    .line 469
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionYSet:Z

    .line 472
    :cond_2
    if-eqz v0, :cond_3

    .line 473
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 475
    :cond_3
    return-void

    .line 462
    .end local v0    # "update":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 334
    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 336
    iput p2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    .line 342
    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .line 345
    .local v0, "velocity":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    neg-int v2, v0

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;->onFling(FI)V

    .line 351
    .end local v0    # "velocity":I
    :cond_0
    return-void
.end method

.method protected onScroll(F)V
    .locals 3
    .param p1, "motionY"    # F

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->applyTranslationY(F)V

    .line 582
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;->onScroll(IF)V

    .line 585
    :cond_0
    return-void
.end method

.method protected onScrollBegin()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v0}, Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;->onStartScroll()V

    .line 577
    :cond_0
    return-void
.end method

.method protected onScrollEnd()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    .line 590
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v0}, Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;->onStopScroll()V

    .line 593
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    .line 178
    .local v18, "action":I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 184
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 185
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    goto :goto_0

    .line 190
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_3

    .line 191
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .line 192
    .local v19, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    .line 193
    const/4 v2, 0x0

    goto :goto_1

    .line 195
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    .line 201
    .local v24, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    move/from16 v23, v0

    .line 202
    .local v23, "lastMotionY":F
    sub-float v2, v24, v23

    float-to-int v4, v2

    .line 203
    .local v4, "deltaY":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 204
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .line 205
    .local v10, "distance":I
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/miui/internal/widget/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v20

    .line 207
    .local v20, "clamped":Z
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 209
    if-eqz v20, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v2, :cond_2

    .line 211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 212
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 215
    invoke-virtual/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 220
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v10    # "distance":I
    .end local v19    # "activePointerIndex":I
    .end local v20    # "clamped":Z
    .end local v23    # "lastMotionY":F
    .end local v24    # "y":F
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScrollBegin()V

    goto/16 :goto_0

    .line 232
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsBeingDragged:Z

    .line 234
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v22

    .line 242
    .local v22, "initialVelocity":I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_4

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->fling(I)V

    goto/16 :goto_0

    .line 245
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .line 246
    .restart local v8    # "range":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->invalidate()V

    goto/16 :goto_0

    .line 249
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->springBack()V

    goto/16 :goto_0

    .line 260
    .end local v8    # "range":I
    .end local v22    # "initialVelocity":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 261
    .local v21, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 262
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    goto/16 :goto_0

    .line 267
    .end local v21    # "index":I
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollMode()I

    move-result v4

    .line 304
    .local v4, "overScrollMode":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result v7

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result v8

    if-le v7, v8, :cond_3

    const/4 v1, 0x1

    .line 306
    .local v1, "canScrollVertical":Z
    :goto_0
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    const/4 v5, 0x1

    .line 309
    .local v5, "overScrollVertical":Z
    :goto_1
    add-int v3, p4, p2

    .line 310
    .local v3, "newScrollY":I
    if-nez v5, :cond_1

    .line 311
    const/16 p8, 0x0

    .line 315
    :cond_1
    const/4 v6, 0x0

    .line 316
    .local v6, "top":I
    add-int v0, p8, p6

    .line 318
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 319
    .local v2, "clampedY":Z
    if-le v3, v0, :cond_5

    .line 320
    move v3, v0

    .line 321
    const/4 v2, 0x1

    .line 327
    :cond_2
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v3, v8, v2}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    .line 329
    return v2

    .line 304
    .end local v0    # "bottom":I
    .end local v1    # "canScrollVertical":Z
    .end local v2    # "clampedY":Z
    .end local v3    # "newScrollY":I
    .end local v5    # "overScrollVertical":Z
    .end local v6    # "top":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    .restart local v1    # "canScrollVertical":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 322
    .restart local v0    # "bottom":I
    .restart local v2    # "clampedY":Z
    .restart local v3    # "newScrollY":I
    .restart local v5    # "overScrollVertical":Z
    .restart local v6    # "top":I
    :cond_5
    if-gez v3, :cond_2

    .line 323
    const/4 v3, 0x0

    .line 324
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 490
    return-void
.end method

.method public setInitialMotionY(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mInitialMotionY:I

    .line 355
    return-void
.end method

.method public setMotionY(I)V
    .locals 1
    .param p1, "motionY"    # I

    .prologue
    .line 654
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    .line 655
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->onScroll(F)V

    .line 656
    return-void
.end method

.method public setOnScrollListener(Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    .line 375
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOverScrollDistance:I

    .line 359
    return-void
.end method

.method public setScrollRange(I)V
    .locals 0
    .param p1, "range"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollRange:I

    .line 367
    return-void
.end method

.method public setScrollStart(I)V
    .locals 0
    .param p1, "scrollStart"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScrollStart:I

    .line 379
    return-void
.end method

.method public setSpringBackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    .line 387
    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 512
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mActivePointerId:I

    .line 513
    .local v3, "activePointerId":I
    const/4 v13, -0x1

    if-ne v3, v13, :cond_1

    .line 514
    const/4 v9, 0x0

    .line 570
    :cond_0
    :goto_0
    return v9

    .line 517
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 518
    .local v8, "pointerIndex":I
    const/4 v13, -0x1

    if-ne v8, v13, :cond_2

    .line 519
    sget-object v13, Lcom/miui/internal/widget/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v14, "invalid pointer index"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v9, 0x0

    goto :goto_0

    .line 523
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 524
    .local v10, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 526
    .local v11, "y":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v13, v11, v13

    float-to-int v12, v13

    .line 527
    .local v12, "yDiff":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 528
    .local v2, "absYDiff":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v13, v10, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-int v1, v13

    .line 530
    .local v1, "absXDiff":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mContentView:Landroid/view/View;

    float-to-int v14, v10

    float-to-int v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/miui/internal/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v5

    .line 531
    .local v5, "fitContentView":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    float-to-int v14, v10

    float-to-int v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/miui/internal/widget/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v6

    .line 533
    .local v6, "fitTabScrollView":Z
    if-nez v5, :cond_3

    if-eqz v6, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 535
    .local v4, "fitContent":Z
    :goto_1
    const/4 v9, 0x0

    .line 536
    .local v9, "retval":Z
    if-eqz v4, :cond_4

    .line 537
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mTouchSlop:I

    if-le v2, v13, :cond_4

    if-le v2, v1, :cond_4

    .line 538
    const/4 v9, 0x1

    .line 539
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    if-nez v13, :cond_7

    .line 540
    if-gez v12, :cond_6

    .line 541
    const/4 v9, 0x0

    .line 554
    :cond_4
    :goto_2
    if-eqz v9, :cond_0

    .line 555
    move-object/from16 v0, p0

    iput v11, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionY:F

    .line 556
    move-object/from16 v0, p0

    iput v10, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mLastMotionX:F

    .line 558
    if-lez v12, :cond_8

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mState:I

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 561
    .local v7, "parent":Landroid/view/ViewParent;
    if-eqz v7, :cond_0

    .line 562
    const/4 v13, 0x1

    invoke-interface {v7, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 533
    .end local v4    # "fitContent":Z
    .end local v7    # "parent":Landroid/view/ViewParent;
    .end local v9    # "retval":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 543
    .restart local v4    # "fitContent":Z
    .restart local v9    # "retval":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v13}, Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;->onContentScrolled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 544
    const/4 v9, 0x0

    goto :goto_2

    .line 547
    :cond_7
    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v14

    if-lt v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mOnScrollListener:Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v13}, Lcom/miui/internal/widget/ActionBarMovableLayout$OnScrollListener;->onContentScrolled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 549
    const/4 v9, 0x0

    goto :goto_2

    .line 558
    :cond_8
    const/4 v13, 0x0

    goto :goto_3
.end method

.method protected springBack()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mIsSpringBackEnabled:Z

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .line 619
    .local v6, "range":I
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    div-int/lit8 v2, v6, 0x2

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    sub-int v4, v6, v0

    .line 620
    .local v4, "dy":I
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    const/16 v5, 0x320

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 621
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .line 623
    .end local v4    # "dy":I
    .end local v6    # "range":I
    :cond_0
    return-void

    .line 619
    .restart local v6    # "range":I
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarMovableLayout;->mMotionY:I

    neg-int v4, v0

    goto :goto_0
.end method
