.class public Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImmersionMenuAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 27
    return-void
.end method

.method private buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 33
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 34
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 35
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/miui/internal/R$layout;->immersion_popup_menu_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .restart local v0    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->buildVisibleItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method
