.class public Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "PhoneImmersionMenuPopupWindow.java"

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
    .line 27
    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    .line 30
    new-instance v0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    .line 31
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    new-instance v0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow$1;-><init>(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mLastAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mLastParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;)Lcom/miui/internal/app/ActionBarDelegateImpl;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mLastAnchor:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mLastParent:Landroid/view/ViewGroup;

    .line 63
    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 64
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    .line 56
    return-void
.end method
