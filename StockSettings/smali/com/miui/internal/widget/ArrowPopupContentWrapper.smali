.class public Lcom/miui/internal/widget/ArrowPopupContentWrapper;
.super Landroid/widget/LinearLayout;
.source "ArrowPopupContentWrapper.java"


# instance fields
.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mMask4:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 42
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/miui/internal/R$drawable;->popup_mask_1:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    .line 45
    sget v1, Lcom/miui/internal/R$drawable;->popup_mask_2:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 46
    sget v1, Lcom/miui/internal/R$drawable;->popup_mask_3:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 47
    sget v1, Lcom/miui/internal/R$drawable;->popup_mask_4:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 60
    return-void
.end method
