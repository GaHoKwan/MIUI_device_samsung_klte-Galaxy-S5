.class Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;
.super Lcom/miui/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupOverflowMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 575
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 576
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 577
    iget-object v0, p1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 578
    sget v0, Lcom/miui/internal/R$layout;->overflow_popup_menu_item_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->setMenuItemLayout(I)V

    .line 579
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 583
    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 584
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    .line 585
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$PopupOverflowMenu;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenu:Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$602(Lcom/miui/internal/view/menu/ActionMenuPresenter;Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;)Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenu;

    .line 586
    return-void
.end method

.method public update(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 590
    return-void
.end method
