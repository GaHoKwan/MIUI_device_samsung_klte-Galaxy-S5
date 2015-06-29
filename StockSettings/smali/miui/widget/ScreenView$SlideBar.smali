.class Lmiui/widget/ScreenView$SlideBar;
.super Landroid/widget/FrameLayout;
.source "ScreenView.java"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideBar"
.end annotation


# instance fields
.field private mPadding:Landroid/graphics/Rect;

.field private mPos:Landroid/graphics/Rect;

.field private mSlidePoint:Landroid/graphics/NinePatch;

.field private mSlidePointBmp:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slideDrawableId"    # I
    .param p4, "backgroundDrawableId"    # I

    .prologue
    .line 2163
    iput-object p1, p0, Lmiui/widget/ScreenView$SlideBar;->this$0:Lmiui/widget/ScreenView;

    .line 2164
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    .line 2160
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    .line 2165
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    .line 2167
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 2189
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 2171
    .local v2, "npChunk":[B
    if-eqz v2, :cond_0

    .line 2172
    new-instance v3, Landroid/graphics/NinePatch;

    iget-object v4, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    .line 2176
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2177
    .local v0, "background":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 2178
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2182
    .local v1, "backgroundParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView$SlideBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2183
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2184
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2185
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2186
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2187
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2188
    iget-object v3, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2200
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2201
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2203
    :cond_0
    return-void
.end method

.method public fastOffset(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 2226
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2227
    # getter for: Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;
    invoke-static {}, Lmiui/widget/ScreenView;->access$800()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_View_View_class;->setRightDirectly(Landroid/view/View;I)V

    .line 2228
    # getter for: Lmiui/widget/ScreenView;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;
    invoke-static {}, Lmiui/widget/ScreenView;->access$800()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setLeftDirectly(Landroid/view/View;I)V

    .line 2229
    const/4 v0, 0x1

    .line 2231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlideWidth()I
    .locals 2

    .prologue
    .line 2221
    invoke-virtual {p0}, Lmiui/widget/ScreenView$SlideBar;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePointBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2208
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2209
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iget-object v2, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2211
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lmiui/widget/ScreenView$SlideBar;->mSlidePoint:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2213
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 2216
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2217
    iget-object v0, p0, Lmiui/widget/ScreenView$SlideBar;->mPos:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/ScreenView$SlideBar;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2218
    return-void
.end method
