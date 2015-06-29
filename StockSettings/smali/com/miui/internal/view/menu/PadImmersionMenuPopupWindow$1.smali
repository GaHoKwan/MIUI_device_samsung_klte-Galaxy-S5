.class Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;
.super Ljava/lang/Object;
.source "PadImmersionMenuPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    # getter for: Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    invoke-static {v2}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->access$000(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 39
    .local v0, "menu":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    .line 41
    .local v1, "subMenu":Landroid/view/SubMenu;
    iget-object v2, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    new-instance v3, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1$1;-><init>(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;Landroid/view/SubMenu;)V

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 52
    .end local v1    # "subMenu":Landroid/view/SubMenu;
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->dismiss(Z)V

    .line 53
    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    # getter for: Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;
    invoke-static {v2}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->access$300(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)Lcom/miui/internal/app/ActionBarDelegateImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    goto :goto_0
.end method
