.class Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuCallback"
.end annotation


# instance fields
.field private mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .param p2, "x1"    # Lcom/miui/internal/widget/ActionBarOverlayLayout$1;

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 747
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 748
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 749
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 754
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 755
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->onCloseSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 758
    :cond_0
    if-eqz p2, :cond_2

    .line 759
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # invokes: Lcom/miui/internal/widget/ActionBarOverlayLayout;->dismissContextMenu()V
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$500(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V

    .line 764
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 769
    :cond_2
    return-void
.end method

.method public onCloseSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 742
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 787
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 793
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 779
    :goto_0
    return v0

    .line 776
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 777
    new-instance v0, Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 778
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 779
    const/4 v0, 0x1

    goto :goto_0
.end method
