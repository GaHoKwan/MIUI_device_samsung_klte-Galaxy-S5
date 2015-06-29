.class Lmiui/widget/DynamicListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 176
    iget-object v0, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lmiui/widget/DynamicListView;->access$402(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DynamicListView$2;->mCanceled:Z

    .line 178
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 156
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    iget-object v2, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "mobileView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mAboveItemId:J
    invoke-static {v1, v4, v5}, Lmiui/widget/DynamicListView;->access$102(Lmiui/widget/DynamicListView;J)J

    .line 161
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v1, v4, v5}, Lmiui/widget/DynamicListView;->access$002(Lmiui/widget/DynamicListView;J)J

    .line 162
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mBelowItemId:J
    invoke-static {v1, v4, v5}, Lmiui/widget/DynamicListView;->access$202(Lmiui/widget/DynamicListView;J)J

    .line 163
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1, v6}, Lmiui/widget/DynamicListView;->access$302(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 164
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 165
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v1}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 166
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v1, v6}, Lmiui/widget/DynamicListView;->access$402(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 168
    iget-boolean v1, p0, Lmiui/widget/DynamicListView$2;->mCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;
    invoke-static {v1}, Lmiui/widget/DynamicListView;->access$500(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;
    invoke-static {v1}, Lmiui/widget/DynamicListView;->access$500(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;

    move-result-object v1

    invoke-interface {v1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragEnd()V

    .line 171
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lmiui/widget/DynamicListView$2;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 151
    iput-boolean v1, p0, Lmiui/widget/DynamicListView$2;->mCanceled:Z

    .line 152
    return-void
.end method
