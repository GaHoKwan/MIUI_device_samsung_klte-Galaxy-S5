.class Lmiui/widget/DynamicListView$7;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->handleCellSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$deltaY:I

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$switchItemID:J

.field final synthetic val$switchViewStartTop:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 1

    .prologue
    .line 663
    iput-object p1, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$7;->val$observer:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lmiui/widget/DynamicListView$7;->val$switchItemID:J

    iput p5, p0, Lmiui/widget/DynamicListView$7;->val$deltaY:I

    iput p6, p0, Lmiui/widget/DynamicListView$7;->val$switchViewStartTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 665
    iget-object v4, p0, Lmiui/widget/DynamicListView$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 666
    iget-object v4, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    iget-wide v6, p0, Lmiui/widget/DynamicListView$7;->val$switchItemID:J

    invoke-virtual {v4, v6, v7}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, "switchView":Landroid/view/View;
    iget-object v4, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    iget v5, p0, Lmiui/widget/DynamicListView$7;->val$deltaY:I

    # += operator for: Lmiui/widget/DynamicListView;->mTotalOffset:I
    invoke-static {v4, v5}, Lmiui/widget/DynamicListView;->access$1812(Lmiui/widget/DynamicListView;I)I

    .line 668
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 669
    .local v3, "switchViewNewTop":I
    iget v4, p0, Lmiui/widget/DynamicListView$7;->val$switchViewStartTop:I

    sub-int v1, v4, v3

    .line 670
    .local v1, "delta":I
    int-to-float v4, v1

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 671
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 673
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lmiui/widget/DynamicListView$7;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mDuration:J
    invoke-static {v4}, Lmiui/widget/DynamicListView;->access$1900(Lmiui/widget/DynamicListView;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 674
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 675
    return v8
.end method
