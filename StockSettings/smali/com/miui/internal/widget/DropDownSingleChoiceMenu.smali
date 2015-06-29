.class public Lcom/miui/internal/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Lcom/miui/internal/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownSingleChoiceMenu;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->internalDismiss()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownSingleChoiceMenu;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return p1
.end method

.method private internalDismiss()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    .line 109
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lcom/miui/internal/widget/DropDownPopupWindow;->dismiss()V

    .line 105
    :cond_0
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "progress"    # F

    .prologue
    .line 124
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    invoke-interface {v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    .line 120
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    .line 49
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setOnMenuListener(Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mListener:Lcom/miui/internal/widget/DropDownSingleChoiceMenu$OnMenuListener;

    .line 57
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    .line 41
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 60
    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Lcom/miui/internal/widget/DropDownPopupWindow;

    iget-object v3, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/internal/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    .line 66
    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    new-instance v3, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$1;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$1;-><init>(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/DropDownPopupWindow;->setContainerController(Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;)V

    .line 79
    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    invoke-virtual {v2, p0}, Lcom/miui/internal/widget/DropDownPopupWindow;->setDropDownController(Lcom/miui/internal/widget/DropDownPopupWindow$Controller;)V

    .line 80
    new-instance v0, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;

    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    invoke-direct {v0, v2}, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;-><init>(Lcom/miui/internal/widget/DropDownPopupWindow;)V

    .line 82
    .local v0, "listController":Lcom/miui/internal/widget/DropDownPopupWindow$ListController;
    invoke-virtual {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 83
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/internal/R$layout;->select_dropdown_popup_singlechoice:I

    iget-object v5, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    new-instance v2, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenu$2;-><init>(Lcom/miui/internal/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 95
    iget v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 96
    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    iget-object v3, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    .line 97
    iget-object v2, p0, Lcom/miui/internal/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lcom/miui/internal/widget/DropDownPopupWindow;

    invoke-virtual {v2}, Lcom/miui/internal/widget/DropDownPopupWindow;->show()V

    goto :goto_0
.end method
