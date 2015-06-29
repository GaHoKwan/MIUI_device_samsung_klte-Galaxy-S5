.class Lcom/miui/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020019

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mButton1MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/miui/internal/widget/ActionBarContextView;->access$000(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v1

    .line 98
    .local v1, "item":Lcom/miui/internal/view/menu/ActionMenuItem;
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/miui/internal/widget/ActionBarContextView;->access$200(Lcom/miui/internal/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/EditActionModeImpl;

    .line 99
    .local v0, "actionMode":Lcom/miui/internal/view/EditActionModeImpl;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/miui/internal/view/EditActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuBuilder;

    check-cast v2, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v2, v1}, Lcom/miui/internal/view/EditActionModeImpl;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 102
    :cond_0
    return-void

    .line 95
    .end local v0    # "actionMode":Lcom/miui/internal/view/EditActionModeImpl;
    .end local v1    # "item":Lcom/miui/internal/view/menu/ActionMenuItem;
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContextView$1;->this$0:Lcom/miui/internal/widget/ActionBarContextView;

    # getter for: Lcom/miui/internal/widget/ActionBarContextView;->mButton2MenuItem:Lcom/miui/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/miui/internal/widget/ActionBarContextView;->access$100(Lcom/miui/internal/widget/ActionBarContextView;)Lcom/miui/internal/view/menu/ActionMenuItem;

    move-result-object v1

    goto :goto_0
.end method
