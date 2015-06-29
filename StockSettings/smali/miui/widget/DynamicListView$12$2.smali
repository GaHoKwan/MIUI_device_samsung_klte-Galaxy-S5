.class Lmiui/widget/DynamicListView$12$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView$12;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/DynamicListView$12;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView$12;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lmiui/widget/DynamicListView$12$2;->this$1:Lmiui/widget/DynamicListView$12;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1024
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1025
    iget-object v0, p0, Lmiui/widget/DynamicListView$12$2;->this$1:Lmiui/widget/DynamicListView$12;

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 1026
    return-void
.end method
