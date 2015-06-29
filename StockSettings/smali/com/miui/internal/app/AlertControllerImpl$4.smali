.class Lcom/miui/internal/app/AlertControllerImpl$4;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->setupListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic val$selectButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->val$selectButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 639
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$1100(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v0

    .line 640
    .local v0, "allChecked":Z
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$1100(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lmiui/widget/EditableListViewWrapper;->setAllItemsChecked(Z)V

    .line 641
    iget-object v2, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->val$selectButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget v1, Lcom/miui/internal/R$string;->select_all:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 643
    return-void

    .line 640
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 641
    :cond_1
    sget v1, Lcom/miui/internal/R$string;->deselect_all:I

    goto :goto_1
.end method
