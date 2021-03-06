.class Lmiui/widget/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# static fields
.field private static final VALID_PINCH_IN_RATIO:F = 0.8f

.field private static final VALID_PINCH_OUT_RATIO:F = 1.2f

.field private static final VALID_PINCH_RATIO:F = 0.95f

.field private static final VALID_PINCH_TIME:F = 200.0f


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method private constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    .prologue
    .line 2267
    iput-object p1, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/ScreenView;
    .param p2, "x1"    # Lmiui/widget/ScreenView$1;

    .prologue
    .line 2267
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    .line 2287
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2288
    .local v0, "scale":F
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mTouchState:I
    invoke-static {v2}, Lmiui/widget/ScreenView;->access$1400(Lmiui/widget/ScreenView;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    const v2, 0x3f86bca2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 2292
    :cond_0
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    const/4 v3, 0x0

    const/4 v4, 0x4

    # invokes: Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v2, v3, v4}, Lmiui/widget/ScreenView;->access$1000(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V

    .line 2294
    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 2295
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 2302
    :goto_0
    return v1

    .line 2298
    :cond_2
    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 2299
    iget-object v2, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v2, p1}, Lmiui/widget/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    .line 2302
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2279
    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    # getter for: Lmiui/widget/ScreenView;->mTouchState:I
    invoke-static {v0}, Lmiui/widget/ScreenView;->access$1400(Lmiui/widget/ScreenView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 2283
    iget-object v0, p0, Lmiui/widget/ScreenView$ScaleDetectorListener;->this$0:Lmiui/widget/ScreenView;

    invoke-virtual {v0}, Lmiui/widget/ScreenView;->finishCurrentGesture()V

    .line 2284
    return-void
.end method
