.class Lmiui/widget/NavigationLayout$1;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "drawer":Landroid/view/View;
    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/widget/ViewDragHelper;->getEdgeSize()I

    move-result v3

    .line 163
    .local v3, "peekDistance":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    :goto_0
    add-int v0, v4, v3

    .line 165
    .local v0, "childLeft":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ge v4, v0, :cond_0

    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v4}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmiui/widget/NavigationLayout$LayoutParams;

    .line 167
    .local v2, "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v1, v0, v5}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 168
    const/4 v4, 0x1

    iput-boolean v4, v2, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    .line 169
    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v4}, Lmiui/widget/NavigationLayout;->invalidate()V

    .line 171
    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # invokes: Lmiui/widget/NavigationLayout;->cancelChildViewTouch()V
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)V

    .line 173
    .end local v2    # "lp":Lmiui/widget/NavigationLayout$LayoutParams;
    :cond_0
    return-void

    .line 163
    .end local v0    # "childLeft":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
