.class public Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;
.super Lmiui/widget/ListPopupWindow;
.source "PadImmersionMenuPopupWindow.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field private mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .locals 2
    .param p1, "actionBarDelegate"    # Lcom/miui/internal/app/ActionBarDelegateImpl;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    .line 31
    new-instance v0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    .line 32
    iget-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->immersion_menu_window_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->setWidth(I)V

    .line 35
    new-instance v0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow$1;-><init>(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mLastAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mLastParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;)Lcom/miui/internal/app/ActionBarDelegateImpl;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    return-object v0
.end method


# virtual methods
.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mLastAnchor:Landroid/view/View;

    .line 77
    iput-object p2, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->postShow()V

    .line 81
    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mLastAnchor:Landroid/view/View;

    .line 65
    iput-object p2, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->show()V

    .line 69
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    .line 60
    return-void
.end method
