.class public Lcom/miui/internal/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/internal/widget/ActionModeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;,
        Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
    }
.end annotation


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarLocation:I

.field private mActionBarTopMargin:I

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateToVisible:Z

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimationCanceled:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationProgress:F

.field private mBackViewTranslationXLength:I

.field private mBackViewTranslationXStart:I

.field private mButtonCancel:Landroid/view/View;

.field private mContentOriginPaddingBottom:I

.field private mContentOriginPaddingTop:I

.field private mCurrentAnimation:Landroid/animation/ObjectAnimator;

.field private mDimView:Landroid/view/View;

.field private mInputView:Landroid/widget/EditText;

.field private mInputViewTranslationYLength:I

.field private mInputViewTranslationYStart:I

.field private mLocation:[I

.field private mOriginalPaddingTop:I

.field private mRequestAnimation:Z

.field private mResultView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewSet:Z

.field private mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private mStatusBarPaddingTop:I

.field private mTextLengthBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I

    .line 98
    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    return v0
.end method

.method static synthetic access$702(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/SearchActionModeView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/SearchActionModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/internal/widget/SearchActionModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/SearchActionModeView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    return p1
.end method

.method private getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 461
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    .line 462
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 463
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 465
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMessageQueue()Landroid/os/MessageQueue;
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method private queueIdleHandler()V
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->removeIdleHandler()V

    .line 476
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 477
    return-void
.end method

.method private removeIdleHandler()V
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 481
    return-void
.end method

.method private shouldAnimateContent()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/view/ActionModeAnimationListener;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 425
    if-nez p1, :cond_2

    move v0, v1

    .line 426
    .local v0, "afterTextChangedLength":I
    :goto_0
    if-nez v0, :cond_3

    .line 427
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_0
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    .line 436
    :cond_1
    :goto_1
    return-void

    .line 425
    .end local v0    # "afterTextChangedLength":I
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 431
    .restart local v0    # "afterTextChangedLength":I
    :cond_3
    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public animateToVisibility(Z)V
    .locals 4
    .param p1, "animateToVisible"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-ne v1, p1, :cond_1

    .line 110
    iput-boolean v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->pollViews()V

    .line 116
    iput-boolean p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    .line 117
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->makeAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 118
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->createAnimationListeners()V

    .line 119
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    .line 122
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationStart(Z)V

    .line 123
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->requestLayout()V

    .line 125
    iput-boolean v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    .line 130
    :goto_1
    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 127
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 416
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 417
    return-void

    .line 416
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public closeMode()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 196
    :cond_0
    return-void
.end method

.method protected createAnimationListeners()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getDimView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    new-instance v1, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;-><init>(Lcom/miui/internal/widget/SearchActionModeView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2
    return-void
.end method

.method protected finishAnimation()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 228
    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .locals 5

    .prologue
    .line 271
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v1, :cond_1

    .line 272
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    .line 273
    .local v0, "layout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 274
    sget v1, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    .line 279
    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    if-lez v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    iget v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    .line 286
    .end local v0    # "layout":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v1
.end method

.method protected getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-nez v1, :cond_0

    .line 306
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    .line 307
    .local v0, "layout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 308
    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView;

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 311
    .end local v0    # "layout":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v1
.end method

.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    return v0
.end method

.method protected getDimView()Landroid/view/View;
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 316
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    .line 317
    .local v0, "layout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 318
    sget v1, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 321
    .end local v0    # "layout":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    return-object v1
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v1, :cond_0

    .line 291
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    .line 292
    .local v0, "layout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 293
    sget v1, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    .line 296
    .end local v0    # "layout":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v1
.end method

.method protected getSplitActionBarHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v0

    .line 301
    .local v0, "actionBarView":Lcom/miui/internal/widget/ActionBarView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->getSplitActionBarHeight(Z)I

    move-result v1

    :cond_0
    return v1
.end method

.method protected getViewPager()Lmiui/view/ViewPager;
    .locals 3

    .prologue
    .line 335
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v1

    .line 336
    .local v1, "actionBarOverlayLayout":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 337
    .local v0, "actionBar":Lcom/miui/internal/app/ActionBarImpl;
    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    sget v2, Lcom/miui/internal/R$id;->view_pager:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager;

    .line 340
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 412
    return-void
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->finishAnimation()V

    .line 201
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 202
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_0
    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    .line 206
    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 207
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    .line 211
    :cond_1
    iput-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    .line 212
    return-void
.end method

.method protected makeAnimation()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 234
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->removeIdleHandler()V

    .line 236
    :cond_0
    const-string v1, "AnimationProgress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 237
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    return-object v0

    .line 236
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public notifyAnimationEnd(Z)V
    .locals 3
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 525
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 531
    :cond_0
    return-void

    .line 528
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 529
    .local v1, "mAnimationListener":Lmiui/view/ActionModeAnimationListener;
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0
.end method

.method public notifyAnimationStart(Z)V
    .locals 3
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 505
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 511
    :cond_0
    return-void

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 509
    .local v1, "mAnimationListener":Lmiui/view/ActionModeAnimationListener;
    invoke-interface {v1, p1}, Lmiui/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 3
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    .line 515
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 521
    :cond_0
    return-void

    .line 518
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ActionModeAnimationListener;

    .line 519
    .local v1, "mAnimationListener":Lmiui/view/ActionModeAnimationListener;
    invoke-interface {v1, p1, p2}, Lmiui/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 404
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    .line 386
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationEnd(Z)V

    .line 387
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_2

    .line 388
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    .line 393
    :goto_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setResultViewMargin(Z)V

    .line 394
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setOverlayMode(Z)V

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 397
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->killMode()V

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lmiui/view/inputmethod/InputMethodHelper;->hideKeyBoard(Landroid/widget/EditText;)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 408
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 365
    iput-boolean v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationCanceled:Z

    .line 366
    iget-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 370
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "tabScrollView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/internal/R$id;->content_mask:I

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 443
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 245
    sget v1, Lcom/miui/internal/R$id;->search_btn_cancel:I

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;

    .line 246
    const v1, 0x1020009

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 247
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I

    .line 248
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    .line 253
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 258
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 259
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    if-eqz v0, :cond_1

    .line 260
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->shouldAnimateContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->queueIdleHandler()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mRequestAnimation:Z

    .line 268
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 421
    return-void
.end method

.method protected pollViews()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    .line 326
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    .line 327
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    .line 328
    return-void
.end method

.method public queueIdle()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public removeAnimationListener(Lmiui/view/ActionModeAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/view/ActionModeAnimationListener;

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 145
    :cond_0
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    .line 151
    :cond_0
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 2
    .param p1, "animationProgress"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    .line 220
    iget-boolean v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimateToVisible:Z

    iget v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mAnimationProgress:F

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->notifyAnimationUpdate(ZF)V

    .line 221
    return-void
.end method

.method protected setContentViewPadding(II)V
    .locals 5
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingTop:I

    add-int/2addr v2, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/SearchActionModeView;->mContentOriginPaddingBottom:I

    add-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 458
    :cond_0
    return-void
.end method

.method protected setContentViewTranslation(I)V
    .locals 2
    .param p1, "translationY"    # I

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 448
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method protected setOverlayMode(Z)V
    .locals 1
    .param p1, "overlayMode"    # Z

    .prologue
    .line 331
    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 332
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 179
    .local v0, "lParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 180
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 181
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "lParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewSet:Z

    .line 185
    :cond_0
    return-void
.end method

.method protected setResultViewMargin(Z)V
    .locals 5
    .param p1, "enter"    # Z

    .prologue
    .line 344
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 345
    iget-boolean v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewSet:Z

    if-eqz v3, :cond_0

    .line 348
    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/miui/internal/widget/SearchActionModeView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/internal/widget/SearchActionModeView;->mActionBarTopMargin:I

    sub-int v2, v3, v4

    .line 351
    .local v2, "topMargin":I
    const/4 v0, 0x0

    .line 356
    .local v0, "bottomMargin":I
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 357
    .local v1, "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 358
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 361
    .end local v0    # "bottomMargin":I
    .end local v1    # "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "topMargin":I
    :cond_0
    return-void

    .line 353
    :cond_1
    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 354
    .restart local v2    # "topMargin":I
    iget v0, p0, Lcom/miui/internal/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .restart local v0    # "bottomMargin":I
    goto :goto_0
.end method

.method public setStatusBarPaddingTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 534
    iput p1, p0, Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I

    .line 535
    return-void
.end method
