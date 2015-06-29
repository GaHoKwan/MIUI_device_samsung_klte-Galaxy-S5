.class public Lmiui/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ArrowPopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1


# instance fields
.field protected mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

.field private mContext:Landroid/content/Context;

.field private mListViewMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    iput-object p1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->setupPopupWindow()V

    .line 119
    return-void
.end method

.method private adjustPopupViewBackground(Landroid/view/View;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 288
    .local v1, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 289
    iget-object v2, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ArrowPopupView;->setBackgroundColor(I)V

    .line 292
    .end local v1    # "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private isTranslucentStatusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "translucentStatusNone":I
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$attr;->windowTranslucentStatus:I

    invoke-static {v2, v3, v1}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setupPopupWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 134
    iget-object v1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->arrow_popup_window_list_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 136
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/miui/internal/R$layout;->arrow_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ArrowPopupView;

    iput-object v1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    .line 139
    iget-object v1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 140
    invoke-super {p0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 141
    invoke-super {p0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 142
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 143
    iget-object v1, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V

    .line 144
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 147
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 149
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->update()V

    .line 150
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->animateToDismiss()V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getArrowMode()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 388
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 159
    .local v0, "inflater":Landroid/view/LayoutInflater;
    return-object v0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getNegativeButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 352
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPrepareWindow()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public setArrowMode(I)V
    .locals 1
    .param p1, "arrowMode"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 244
    return-void
.end method

.method public final setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(I)V

    .line 226
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method public setHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 404
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 405
    .local v0, "contentView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget v2, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    if-le p1, v2, :cond_0

    .line 407
    iget p1, p0, Lmiui/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 409
    :cond_0
    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 411
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 412
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textResId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 452
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiui/widget/ArrowPopupWindow;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 453
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 442
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 443
    return-void
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "textResId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 423
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmiui/widget/ArrowPopupWindow;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 424
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 337
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ArrowPopupView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 338
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/ArrowPopupWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 470
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 327
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 328
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 368
    invoke-virtual {p0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 371
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0, p1}, Lmiui/widget/ArrowPopupWindow;->adjustPopupViewBackground(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ArrowPopupView;->setOffset(II)V

    .line 262
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    invoke-direct {p0}, Lmiui/widget/ArrowPopupWindow;->isTranslucentStatusEnabled()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 264
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0, v2, v2}, Lmiui/widget/ArrowPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 265
    iget-object v0, p0, Lmiui/widget/ArrowPopupWindow;->mArrowPopupView:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V

    .line 266
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 279
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 318
    return-void
.end method

.method public update(IIIIZ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 322
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 323
    return-void
.end method
