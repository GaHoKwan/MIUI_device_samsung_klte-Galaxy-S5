.class Lcom/miui/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1403
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1407
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1408
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1440
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1441
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getLeftOffset()I
    .locals 1

    .prologue
    .line 1454
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1430
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1431
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    .line 1433
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1435
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1448
    sget v0, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1449
    sget v0, Lcom/miui/internal/R$id;->home:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1450
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1451
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1502
    sub-int v12, p5, p3

    div-int/lit8 v11, v12, 0x2

    .line 1503
    .local v11, "vCenter":I
    const/4 v8, 0x0

    .line 1504
    .local v8, "upOffset":I
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 1505
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1506
    .local v7, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    .line 1507
    .local v6, "upHeight":I
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 1508
    .local v10, "upWidth":I
    div-int/lit8 v12, v6, 0x2

    sub-int v9, v11, v12

    .line 1509
    .local v9, "upTop":I
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    add-int v14, v9, v6

    invoke-virtual {v12, v13, v9, v10, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1510
    iget v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v10

    iget v13, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v12, v13

    .line 1511
    add-int p2, p2, v8

    .line 1514
    .end local v6    # "upHeight":I
    .end local v7    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "upTop":I
    .end local v10    # "upWidth":I
    :cond_0
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1515
    .local v3, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 1516
    .local v1, "iconHeight":I
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 1517
    .local v5, "iconWidth":I
    sub-int v12, p4, p2

    div-int/lit8 v0, v12, 0x2

    .line 1518
    .local v0, "hCenter":I
    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v0, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v2, v8, v12

    .line 1519
    .local v2, "iconLeft":I
    iget v12, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v13, v1, 0x2

    sub-int v13, v11, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1520
    .local v4, "iconTop":I
    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    add-int v13, v2, v5

    add-int v14, v4, v1

    invoke-virtual {v12, v2, v4, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1521
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1460
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1461
    .local v10, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1462
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    .line 1463
    .local v3, "width":I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1464
    .local v6, "height":I
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1465
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1466
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1467
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1470
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1471
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1472
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1473
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1475
    .local v8, "heightSize":I
    sparse-switch v11, :sswitch_data_0

    .line 1486
    :goto_1
    sparse-switch v7, :sswitch_data_1

    .line 1497
    :goto_2
    invoke-virtual {p0, v3, v6}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1498
    return-void

    .line 1462
    .end local v3    # "width":I
    .end local v6    # "height":I
    .end local v7    # "heightMode":I
    .end local v8    # "heightSize":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "widthMode":I
    .end local v12    # "widthSize":I
    :cond_0
    iget v3, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    goto :goto_0

    .line 1477
    .restart local v3    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "heightMode":I
    .restart local v8    # "heightSize":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "widthMode":I
    .restart local v12    # "widthSize":I
    :sswitch_0
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1478
    goto :goto_1

    .line 1480
    :sswitch_1
    move v3, v12

    .line 1481
    goto :goto_1

    .line 1488
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1489
    goto :goto_2

    .line 1491
    :sswitch_3
    move v6, v8

    .line 1492
    goto :goto_2

    .line 1475
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1486
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1416
    return-void
.end method

.method public setUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    .line 1411
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    return-void

    .line 1411
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1424
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1425
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    return-void

    .line 1425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1421
    return-void

    .line 1419
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
