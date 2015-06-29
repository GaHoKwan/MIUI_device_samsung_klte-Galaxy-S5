.class public Lcom/miui/internal/widget/DropDownPopupWindow$ListController;
.super Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListController"
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;-><init>(Landroid/content/Context;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutid"    # I

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/widget/DropDownPopupWindow;)V
    .locals 1
    .param p1, "popup"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 215
    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;-><init>(Lcom/miui/internal/widget/DropDownPopupWindow;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/widget/DropDownPopupWindow;I)V
    .locals 0
    .param p1, "popup"    # Lcom/miui/internal/widget/DropDownPopupWindow;
    .param p2, "layoutid"    # I

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;-><init>(Lcom/miui/internal/widget/DropDownPopupWindow;I)V

    .line 220
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;->initContent()V

    .line 236
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 1
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 231
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    .line 232
    return-void
.end method
