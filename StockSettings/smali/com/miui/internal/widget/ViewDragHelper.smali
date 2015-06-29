.class public Lcom/miui/internal/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/miui/internal/widget/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/miui/internal/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/miui/internal/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/miui/internal/widget/ViewDragHelper$Callback;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    .line 329
    new-instance v2, Lcom/miui/internal/widget/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/ViewDragHelper$2;-><init>(Lcom/miui/internal/widget/ViewDragHelper;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 370
    if-nez p2, :cond_0

    .line 371
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_0
    if-nez p3, :cond_1

    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_1
    iput-object p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 378
    iput-object p3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    .line 380
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 381
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 382
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeSize:I

    .line 384
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    .line 385
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMaxVelocity:F

    .line 386
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    .line 387
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/miui/internal/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 388
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1216
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1217
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1219
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return v2

    .line 1225
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1226
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1229
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1243
    if-nez p1, :cond_1

    move v2, v3

    .line 1256
    :cond_0
    :goto_0
    return v2

    .line 1246
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1247
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1249
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1250
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    .line 1246
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1247
    goto :goto_2

    .line 1251
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_6

    .line 1252
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0

    .line 1253
    :cond_6
    if-eqz v1, :cond_8

    .line 1254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    move v2, v3

    .line 1256
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 663
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 664
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 666
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 665
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 666
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 646
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 647
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 649
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 648
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 649
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 770
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 771
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 772
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 773
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 774
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 775
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 776
    iput v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 784
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 785
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 786
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 787
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 788
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 789
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 790
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 614
    if-nez p1, :cond_0

    .line 615
    const/4 v6, 0x0

    .line 632
    :goto_0
    return v6

    .line 618
    :cond_0
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 619
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 620
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 621
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 625
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 626
    if-lez p2, :cond_1

    .line 627
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 632
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 629
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 630
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 593
    iget v12, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/miui/internal/widget/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 594
    iget v12, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/miui/internal/widget/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 595
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 596
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 597
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 598
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 599
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 600
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 602
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 604
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 607
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/miui/internal/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 608
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/miui/internal/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 610
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 602
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 604
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/miui/internal/widget/ViewDragHelper$Callback;

    .prologue
    .line 356
    invoke-static {p0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    .line 357
    .local v0, "helper":Lcom/miui/internal/widget/ViewDragHelper;
    iget v1, v0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    .line 358
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)Lcom/miui/internal/widget/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/miui/internal/widget/ViewDragHelper$Callback;

    .prologue
    .line 343
    new-instance v0, Lcom/miui/internal/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/internal/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 755
    iput-boolean v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 756
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 757
    iput-boolean v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 759
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 761
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    .line 763
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 670
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 671
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 672
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1364
    move v2, p1

    .line 1365
    .local v2, "clampedX":I
    move v3, p2

    .line 1366
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1367
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1368
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1370
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1372
    :cond_0
    if-eqz p4, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1374
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1377
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1378
    :cond_2
    sub-int v4, v2, v6

    .line 1379
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1380
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1383
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 794
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 795
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 796
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 797
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 798
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 799
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 800
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 801
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 803
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 804
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    :cond_1
    iput-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 814
    iput-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 815
    iput-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    .line 816
    iput-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    .line 817
    iput-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 818
    iput-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 819
    iput-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 821
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    .line 573
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 574
    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 575
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 576
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 578
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 580
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 581
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    .line 589
    :goto_0
    return v0

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 586
    .local v9, "duration":I
    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 588
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    .line 589
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1432
    const/4 v0, 0x0

    .line 1434
    .local v0, "result":I
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1435
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1437
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1439
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1353
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1354
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/internal/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1357
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/internal/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1360
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1361
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    or-int/lit8 v0, v0, 0x1

    .line 1199
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    or-int/lit8 v0, v0, 0x4

    .line 1202
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    or-int/lit8 v0, v0, 0x2

    .line 1205
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/miui/internal/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1206
    or-int/lit8 v0, v0, 0x8

    .line 1209
    :cond_3
    if-eqz v0, :cond_4

    .line 1210
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1211
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1213
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 824
    invoke-direct {p0, p3}, Lcom/miui/internal/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 825
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 826
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 827
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 828
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mPointersDown:I

    .line 829
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 833
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 834
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 835
    .local v2, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 836
    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 837
    .local v4, "y":F
    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 838
    iget-object v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 509
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 511
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 512
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 513
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 514
    .local v2, "newX":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 515
    .local v3, "newY":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 517
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    .line 518
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 904
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 905
    check-cast v9, Landroid/view/ViewGroup;

    .line 906
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 907
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 908
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 910
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 913
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 914
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    const/4 v1, 0x1

    .line 923
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :goto_1
    return v1

    .line 910
    .restart local v2    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 923
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v0, p4

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 494
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    .line 495
    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper;->clearMotionHistory()V

    .line 497
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 501
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 462
    iput p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    .line 463
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    .line 465
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1274
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1275
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1276
    invoke-virtual {p0, p1, v1}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    const/4 v2, 0x1

    .line 1280
    :goto_1
    return v2

    .line 1275
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1299
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1316
    :cond_0
    :goto_0
    return v4

    .line 1303
    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1304
    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 1306
    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1307
    .local v2, "dx":F
    iget-object v6, p0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1309
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1310
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    move v0, v5

    .line 1303
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    .line 1304
    goto :goto_2

    .line 1311
    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    .line 1312
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .line 1313
    :cond_5
    if-eqz v1, :cond_6

    .line 1314
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    .line 1316
    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 711
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_5

    .line 712
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    .line 713
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 714
    .local v2, "x":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 715
    .local v3, "y":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 716
    .local v4, "dx":I
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 718
    .local v5, "dy":I
    if-eqz v4, :cond_0

    .line 719
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 721
    :cond_0
    if-eqz v5, :cond_1

    .line 722
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 725
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 729
    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 732
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 733
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    .line 736
    :cond_4
    if-nez v6, :cond_5

    .line 737
    if-eqz p1, :cond_6

    .line 738
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 745
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_5
    :goto_0
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 740
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_6
    invoke-virtual {p0, v7}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    move v0, v7

    .line 745
    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1420
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1421
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1422
    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1423
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1428
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1421
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1428
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 696
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    .line 697
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1329
    iget-object v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .line 1330
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1331
    invoke-virtual {p0, p1, v1}, Lcom/miui/internal/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    const/4 v2, 0x1

    .line 1335
    :goto_1
    return v2

    .line 1330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1335
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1349
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 856
    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1408
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1043
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 1045
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 1051
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1052
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1054
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1056
    packed-switch v3, :pswitch_data_0

    .line 1192
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1058
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1059
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1060
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1061
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1063
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/miui/internal/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1071
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1078
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1079
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1080
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1082
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/miui/internal/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1088
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1089
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1092
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1095
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1106
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1108
    .local v12, "index":I
    if-ltz v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 1109
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1110
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1111
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1112
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1114
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/miui/internal/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1116
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1120
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 1121
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1122
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1123
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1124
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1125
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1126
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1128
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/miui/internal/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1140
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1134
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1135
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1121
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1146
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1147
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1149
    const/4 v13, -0x1

    .line 1150
    .local v13, "newActivePointer":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 1151
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1152
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1153
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1151
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1158
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1159
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1160
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1162
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    .line 1167
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1169
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1172
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/miui/internal/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1177
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1180
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1185
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1186
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1188
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 860
    iget v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 861
    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    .line 862
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 863
    if-nez p1, :cond_0

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 867
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    .line 434
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 397
    iput p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mMinVelocity:F

    .line 398
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 936
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 938
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    .line 944
    :cond_0
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 945
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    :cond_1
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 949
    packed-switch v0, :pswitch_data_0

    .line 1032
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 951
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 952
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 953
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 954
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lcom/miui/internal/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 956
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 959
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 960
    invoke-virtual {p0, v8, v7}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 963
    :cond_3
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 964
    .local v4, "edgesTouched":I
    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 965
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget v12, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 971
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 972
    .restart local v7    # "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 973
    .restart local v9    # "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 975
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lcom/miui/internal/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 978
    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 979
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 980
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 981
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    iget v12, p0, Lcom/miui/internal/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 983
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 985
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 986
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 987
    invoke-virtual {p0, v8, v7}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 995
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 996
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 997
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 998
    .restart local v7    # "pointerId":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 999
    .restart local v9    # "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1000
    .restart local v10    # "y":F
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 1001
    .local v2, "dx":F
    iget-object v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 1003
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lcom/miui/internal/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1004
    iget v11, p0, Lcom/miui/internal/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1015
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v7    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1009
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v7    # "pointerId":I
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_6
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/miui/internal/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1010
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_7

    invoke-direct {p0, v8, v2, v3}, Lcom/miui/internal/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, v8, v7}, Lcom/miui/internal/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 996
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1020
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1021
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcom/miui/internal/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1027
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1032
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 535
    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 536
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    .line 538
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/miui/internal/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 879
    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 888
    :goto_0
    return v0

    .line 883
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ViewDragHelper;->mCallback:Lcom/miui/internal/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    iput p2, p0, Lcom/miui/internal/widget/ViewDragHelper;->mActivePointerId:I

    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
