.class Lmiui/widget/NavigationLayout$ViewDragCallback;
.super Lcom/miui/internal/widget/ViewDragHelper$Callback;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method private constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/NavigationLayout;
    .param p2, "x1"    # Lmiui/widget/NavigationLayout$1;

    .prologue
    .line 1041
    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 1082
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1050
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 1094
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$900(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1096
    :cond_0
    return-void
.end method

.method public onEdgeTouched(II)V
    .locals 4
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$900(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/NavigationLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1088
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 1065
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 1066
    .local v0, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 1067
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1101
    if-nez p1, :cond_0

    .line 1102
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    .line 1108
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    .line 1110
    :cond_1
    return-void

    .line 1105
    :cond_2
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 1055
    iget-object v2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1056
    iget-object v2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1057
    .local v0, "navWidth":I
    add-int v2, p2, v0

    int-to-float v2, v2

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 1058
    .local v1, "offset":F
    iget-object v2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # invokes: Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V
    invoke-static {v2, v1}, Lmiui/widget/NavigationLayout;->access$700(Lmiui/widget/NavigationLayout;F)V

    .line 1059
    iget-object v2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 1061
    .end local v0    # "navWidth":I
    .end local v1    # "offset":F
    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    .line 1071
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # invokes: Lmiui/widget/NavigationLayout;->getNavigationOffset()F
    invoke-static {v3}, Lmiui/widget/NavigationLayout;->access$800(Lmiui/widget/NavigationLayout;)F

    move-result v2

    .line 1072
    .local v2, "offset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1074
    .local v0, "childWidth":I
    cmpl-float v3, p2, v4

    if-gtz v3, :cond_0

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1076
    .local v1, "left":I
    :goto_0
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v3}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/miui/internal/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1077
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v3}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 1078
    return-void

    .line 1074
    .end local v1    # "left":I
    :cond_1
    neg-int v1, v0

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 1045
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
