.class public Lmiui/widget/GuidePopupWindow;
.super Landroid/widget/PopupWindow;
.source "GuidePopupWindow.java"


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x7

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x5

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x4

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x6

.field private static final DEFAULT_SHOW_DURATION:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextThemeWrapper:Landroid/content/Context;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field protected mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

.field private mListViewMaxHeight:I

.field private mShowDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 127
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/GuidePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 301
    new-instance v0, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    .line 151
    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lmiui/widget/GuidePopupWindow;->setupPopupWindow()V

    .line 153
    return-void
.end method

.method private isTranslucentStatusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "translucentStatusNone":I
    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

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

    .line 159
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->arrow_popup_window_list_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/GuidePopupWindow;->mListViewMaxHeight:I

    .line 161
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/miui/internal/R$layout;->guide_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/GuidePopupView;

    iput-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    .line 164
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 165
    invoke-super {p0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 166
    invoke-super {p0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 167
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/widget/GuidePopupWindow;->setSoftInputMode(I)V

    .line 168
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v1, p0}, Lcom/miui/internal/widget/GuidePopupView;->setGuidePopupWindow(Lmiui/widget/GuidePopupWindow;)V

    .line 169
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 171
    const/16 v1, 0x1388

    iput v1, p0, Lmiui/widget/GuidePopupWindow;->mShowDuration:I

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/GuidePopupWindow;->setFocusable(Z)V

    .line 174
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->update()V

    .line 175
    return-void
.end method


# virtual methods
.method public clearOffset()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->clearOffset()V

    .line 291
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->animateToDismiss()V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->getArrowMode()I

    move-result v0

    return v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 435
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 182
    .local v0, "inflater":Landroid/view/LayoutInflater;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 399
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setArrowMode(I)V
    .locals 1
    .param p1, "arrowMode"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 326
    return-void
.end method

.method public setArrowMode(IZ)V
    .locals 1
    .param p1, "arrowMode"    # I
    .param p2, "isMirrored"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(IZ)V

    .line 336
    return-void
.end method

.method public setGuideText(I)V
    .locals 2
    .param p1, "guideTextId"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "guideText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setGuideText(II)V
    .locals 3
    .param p1, "guideTextId"    # I
    .param p2, "mirroredGuideTextId"    # I

    .prologue
    .line 222
    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "guideText":Ljava/lang/String;
    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "mirroredGuideText":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 3
    .param p1, "guideText"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    sget v2, Lcom/miui/internal/R$id;->text_group:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    .local v0, "textGroup":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v1, v0, p1}, Lcom/miui/internal/widget/GuidePopupView;->addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setGuideText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "guideText"    # Ljava/lang/String;
    .param p2, "mirroredGuideText"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lmiui/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    sget v2, Lcom/miui/internal/R$id;->mirrored_text_group:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 213
    .local v0, "textGroup":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/widget/GuidePopupView;->addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 451
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "contentView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget v2, p0, Lmiui/widget/GuidePopupWindow;->mListViewMaxHeight:I

    if-le p1, v2, :cond_0

    .line 454
    iget p1, p0, Lmiui/widget/GuidePopupWindow;->mListViewMaxHeight:I

    .line 456
    :cond_0
    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 458
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setOffset(II)V
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/GuidePopupView;->setOffset(II)V

    .line 284
    return-void
.end method

.method public setShowDuration(I)V
    .locals 0
    .param p1, "showDuration"    # I

    .prologue
    .line 298
    iput p1, p0, Lmiui/widget/GuidePopupWindow;->mShowDuration:I

    .line 299
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 384
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 385
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 415
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 418
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "autoDismiss"    # Z

    .prologue
    .line 275
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "autoDismiss"    # Z

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 238
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    invoke-direct {p0}, Lmiui/widget/GuidePopupWindow;->isTranslucentStatusEnabled()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    .line 240
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0, v2, v2}, Lmiui/widget/GuidePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 241
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->animateToShow()V

    .line 243
    if-eqz p2, :cond_0

    .line 244
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mDismissRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lmiui/widget/GuidePopupWindow;->mShowDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    :cond_0
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->getColorBackground()I

    move-result v6

    .line 247
    .local v6, "colorBackground":I
    if-nez v6, :cond_2

    .line 249
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 255
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 256
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 257
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/GuidePopupWindow;->update(IIIIZ)V

    .line 261
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/GuidePopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 253
    .local v8, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .restart local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 259
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mGuidePopupView:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0, v6}, Lcom/miui/internal/widget/GuidePopupView;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 349
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 375
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

    .line 379
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 380
    return-void
.end method
