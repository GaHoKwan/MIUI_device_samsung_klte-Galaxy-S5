.class Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 641
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 661
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$202(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 665
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
