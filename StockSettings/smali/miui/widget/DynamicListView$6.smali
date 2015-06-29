.class Lmiui/widget/DynamicListView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->makeScalingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lmiui/widget/DynamicListView$6;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 406
    iget-object v0, p0, Lmiui/widget/DynamicListView$6;->this$0:Lmiui/widget/DynamicListView;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lmiui/widget/DynamicListView;->access$1702(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 407
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 412
    iget-object v0, p0, Lmiui/widget/DynamicListView$6;->this$0:Lmiui/widget/DynamicListView;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lmiui/widget/DynamicListView;->access$1702(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 413
    return-void
.end method
