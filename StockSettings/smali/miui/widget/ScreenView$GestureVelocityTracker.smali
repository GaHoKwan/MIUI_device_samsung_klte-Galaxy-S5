.class Lmiui/widget/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# static fields
.field private static final mMinFoldDist:F = 3.0f


# instance fields
.field private mFoldX:F

.field private mPointerId:I

.field private mPrevX:F

.field private mStartX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1987
    iput-object p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 1995
    iput v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 1997
    iput v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    .line 1999
    iput v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/ScreenView;
    .param p2, "x1"    # Lmiui/widget/ScreenView$1;

    .prologue
    .line 1987
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$GestureVelocityTracker;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 2053
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    .line 2054
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2010
    iget-object v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 2011
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2013
    :cond_0
    iget-object v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2015
    .local v0, "curX":F
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    if-eq v2, v4, :cond_1

    .line 2016
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2017
    .local v1, "pIndex":I
    if-eq v1, v4, :cond_2

    .line 2018
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 2023
    .end local v1    # "pIndex":I
    :cond_1
    :goto_0
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 2024
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 2050
    :goto_1
    return-void

    .line 2020
    .restart local v1    # "pIndex":I
    :cond_2
    iput v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    goto :goto_0

    .line 2027
    .end local v1    # "pIndex":I
    :cond_3
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 2028
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    goto :goto_1

    .line 2031
    :cond_4
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 2032
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_5
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 2034
    :cond_6
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    .line 2035
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    .line 2049
    :cond_7
    :goto_2
    iput v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    goto :goto_1

    .line 2039
    :cond_8
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 2040
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_a

    :cond_9
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 2042
    :cond_a
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    .line 2043
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 2044
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    goto :goto_2
.end method

.method public getFlingDirection(F)I
    .locals 5
    .param p1, "velocity"    # F

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 2072
    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    .line 2073
    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2074
    iget v2, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 2090
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2074
    goto :goto_0

    .line 2076
    :cond_2
    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v4, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 2077
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v0

    iget-object v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v3}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 2078
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2080
    goto :goto_0

    .line 2082
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 2083
    iget-object v1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScreenView;->getScrollX()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v3}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    .line 2084
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2088
    goto :goto_0

    .line 2090
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getXVelocity(III)F
    .locals 2
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # I
    .param p3, "pointerId"    # I

    .prologue
    .line 2067
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2068
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public init(I)V
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 2057
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2058
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2062
    :goto_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 2063
    iput p1, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 2064
    return-void

    .line 2060
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2003
    iget-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2004
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2006
    :cond_0
    invoke-direct {p0}, Lmiui/widget/ScreenView$GestureVelocityTracker;->reset()V

    .line 2007
    return-void
.end method
