.class public Lcom/miui/internal/widget/DropDownPopupWindow;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/DropDownPopupWindow$ListController;,
        Lcom/miui/internal/widget/DropDownPopupWindow$ViewContentController;,
        Lcom/miui/internal/widget/DropDownPopupWindow$DefaultContainerController;,
        Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;,
        Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;,
        Lcom/miui/internal/widget/DropDownPopupWindow$Controller;,
        Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

.field private mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

.field private mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissDuration:I

.field private mDismissPending:Z

.field private mDropDownController:Lcom/miui/internal/widget/DropDownPopupWindow$Controller;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mShowDuration:I

.field private mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mShowDuration:I

    .line 33
    iput v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissDuration:I

    .line 36
    new-instance v0, Lcom/miui/internal/widget/DropDownPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/DropDownPopupWindow$1;-><init>(Lcom/miui/internal/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 48
    new-instance v0, Lcom/miui/internal/widget/DropDownPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/DropDownPopupWindow$2;-><init>(Lcom/miui/internal/widget/DropDownPopupWindow;)V

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 242
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    .line 243
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 244
    new-instance v0, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;-><init>(Lcom/miui/internal/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    .line 245
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 246
    invoke-direct {p0}, Lcom/miui/internal/widget/DropDownPopupWindow;->initPopupWindow()V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/DropDownPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/DropDownPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissPending:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/DropDownPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/internal/widget/DropDownPopupWindow;->realDismiss()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$Controller;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/DropDownPopupWindow;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDropDownController:Lcom/miui/internal/widget/DropDownPopupWindow$Controller;

    return-object v0
.end method

.method private initPopupWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 252
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 253
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 254
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 255
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 256
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;->setFocusableInTouchMode(Z)V

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$color;->arrow_popup_window_dim_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;->setBackgroundColor(I)V

    .line 259
    return-void
.end method

.method private realDismiss()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;->onDismiss()V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;->onDismiss()V

    .line 316
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissPending:Z

    .line 317
    return-void
.end method

.method private startAnimation(FFI)V
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 295
    new-array v0, v1, [F

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mValueUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 304
    :cond_2
    return-void

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissPending:Z

    .line 321
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/internal/widget/DropDownPopupWindow;->startAnimation(FFI)V

    .line 322
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 263
    return-void
.end method

.method public setContainerController(Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;)V
    .locals 0
    .param p1, "controller"    # Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    .line 123
    return-void
.end method

.method public setContentController(Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;)V
    .locals 0
    .param p1, "controller"    # Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    .line 126
    return-void
.end method

.method public setDropDownController(Lcom/miui/internal/widget/DropDownPopupWindow$Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/miui/internal/widget/DropDownPopupWindow$Controller;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mDropDownController:Lcom/miui/internal/widget/DropDownPopupWindow$Controller;

    .line 130
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 286
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    invoke-interface {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    iget-object v2, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;->onAddContent(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;->removeAllViews()V

    .line 274
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    invoke-interface {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;->onShow()V

    .line 282
    :cond_3
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mShowDuration:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/internal/widget/DropDownPopupWindow;->startAnimation(FFI)V

    .line 284
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method
