.class public Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewContentController"
.end annotation


# instance fields
.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutid"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    .line 172
    iput p2, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/widget/DropDownPopupWindow;I)V
    .locals 1
    .param p1, "popup"    # Lcom/miui/internal/widget/DropDownPopupWindow;
    .param p2, "layoutId"    # I

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/miui/internal/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    .line 167
    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/DropDownPopupWindow;->setContentController(Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    .line 206
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    return-object v0
.end method

.method protected initContent()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->mContent:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;->onContentInit(Landroid/view/View;)V

    .line 181
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float v0, v1, v2

    .line 199
    .local v0, "transY":F
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 201
    .end local v0    # "transY":F
    :cond_0
    return-void
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 0
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 183
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
