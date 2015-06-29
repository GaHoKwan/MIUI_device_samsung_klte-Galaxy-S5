.class Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
.super Lcom/miui/internal/view/menu/MenuDialogHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p2, "subMenu"    # Lcom/miui/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 596
    invoke-direct {p0, p2}, Lcom/miui/internal/view/menu/MenuDialogHelper;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 597
    iget-object v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 598
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->onDismiss(Landroid/content/DialogInterface;)V

    .line 603
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$702(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;

    .line 604
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$ActionButtonSubMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 605
    return-void
.end method
