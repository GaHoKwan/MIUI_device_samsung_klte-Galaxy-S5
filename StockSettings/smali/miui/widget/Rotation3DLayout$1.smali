.class Lmiui/widget/Rotation3DLayout$1;
.super Ljava/lang/Object;
.source "Rotation3DLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Rotation3DLayout;->resetRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    .line 147
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    .line 142
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 151
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x1

    # setter for: Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    .line 137
    return-void
.end method
