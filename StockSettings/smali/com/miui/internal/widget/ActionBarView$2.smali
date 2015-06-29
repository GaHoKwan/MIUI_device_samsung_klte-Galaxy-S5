.class Lcom/miui/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$2;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$2;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarView;->access$100(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 149
    .local v0, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 152
    :cond_0
    return-void
.end method
