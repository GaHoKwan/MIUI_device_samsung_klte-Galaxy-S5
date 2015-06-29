.class public Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 485
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 486
    return-void
.end method


# virtual methods
.method attach(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/miui/internal/widget/ScrollingTabContainerView;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "forList"    # Z

    .prologue
    .line 489
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 490
    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 492
    if-eqz p3, :cond_0

    .line 493
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 497
    return-void
.end method

.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 501
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 502
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 506
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 508
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget v0, v1, Lcom/miui/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 511
    .local v0, "maxTabWidth":I
    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 512
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 515
    :cond_0
    return-void

    .line 508
    .end local v0    # "maxTabWidth":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    const/16 v9, 0x8

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 518
    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 519
    .local v5, "tab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 521
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 522
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 523
    if-eqz v1, :cond_0

    .line 524
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 526
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 528
    :cond_1
    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 529
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 530
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    :cond_2
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 533
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    :cond_3
    :goto_0
    return-void

    .line 537
    :cond_4
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 538
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 539
    iput-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 542
    :cond_5
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 543
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 545
    .local v6, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_a

    .line 546
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6

    .line 547
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 548
    .local v3, "iconView":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 550
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 551
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    invoke-virtual {p0, v3, v12}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 553
    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 555
    .end local v3    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    :cond_7
    :goto_1
    if-eqz v6, :cond_b

    .line 563
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 564
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10102f5

    invoke-direct {v7, v8, v10, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 566
    .local v7, "textView":Landroid/widget/TextView;
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 567
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 569
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 570
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    invoke-virtual {p0, v7}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 572
    iput-object v7, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 574
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    :cond_9
    :goto_2
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 582
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 557
    :cond_a
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 558
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 576
    :cond_b
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 577
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v8, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
