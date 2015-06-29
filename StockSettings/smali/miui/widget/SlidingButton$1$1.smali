.class Lmiui/widget/SlidingButton$1$1;
.super Ljava/lang/Object;
.source "SlidingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/SlidingButton$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/SlidingButton$1;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lmiui/widget/SlidingButton$1;Z)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lmiui/widget/SlidingButton$1$1;->this$1:Lmiui/widget/SlidingButton$1;

    iput-boolean p2, p0, Lmiui/widget/SlidingButton$1$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/widget/SlidingButton$1$1;->this$1:Lmiui/widget/SlidingButton$1;

    iget-object v0, v0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    # getter for: Lmiui/widget/SlidingButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v0}, Lmiui/widget/SlidingButton;->access$300(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lmiui/widget/SlidingButton$1$1;->this$1:Lmiui/widget/SlidingButton$1;

    iget-object v0, v0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    # getter for: Lmiui/widget/SlidingButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v0}, Lmiui/widget/SlidingButton;->access$300(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SlidingButton$1$1;->this$1:Lmiui/widget/SlidingButton$1;

    iget-object v1, v1, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    iget-boolean v2, p0, Lmiui/widget/SlidingButton$1$1;->val$isChecked:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 116
    :cond_0
    return-void
.end method
