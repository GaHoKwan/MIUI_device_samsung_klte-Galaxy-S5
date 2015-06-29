.class Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;
.super Ljava/lang/Object;
.source "PhoneImmersionMenuPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

.field final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;Landroid/view/SubMenu;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    iput-object p2, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 42
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->val$subMenu:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    .line 43
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    iget-object v0, v0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    iget-object v1, v1, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    # getter for: Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mLastAnchor:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->access$100(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1$1;->this$1:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    iget-object v2, v2, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;->this$0:Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    # getter for: Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mLastParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->access$200(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 44
    return-void
.end method
