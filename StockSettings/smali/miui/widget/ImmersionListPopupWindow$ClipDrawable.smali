.class Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "ImmersionListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipDrawable"
.end annotation


# instance fields
.field private mFooterBackground:Landroid/graphics/drawable/Drawable;

.field private mRangeRatio:F

.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method public constructor <init>(Lmiui/widget/ImmersionListPopupWindow;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 365
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    .line 366
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 368
    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmiui/widget/ImmersionListPopupWindow;->access$400(Lmiui/widget/ImmersionListPopupWindow;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$attr;->immersionWindowFooterBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mFooterBackground:Landroid/graphics/drawable/Drawable;

    .line 370
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0, p2}, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 381
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/ImmersionListPopupWindow;->access$500(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lmiui/widget/ImmersionListPopupWindow;->access$600(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mRangeRatio:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 382
    .local v0, "clipHeight":I
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/ImmersionListPopupWindow;->access$500(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v4}, Lmiui/widget/ImmersionListPopupWindow;->access$500(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 383
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 386
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 387
    .local v1, "fullBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mFooterBackground:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mFooterBackground:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mRangeRatio:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 389
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mFooterBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    return-void
.end method

.method public setRangeRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 374
    iput p1, p0, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->mRangeRatio:F

    .line 375
    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow$ClipDrawable;->invalidateSelf()V

    .line 376
    return-void
.end method
