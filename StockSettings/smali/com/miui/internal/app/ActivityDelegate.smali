.class public Lcom/miui/internal/app/ActivityDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "ActivityDelegate.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "miui:ActionBar"

.field private static final ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

.field private static final ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

.field private static final ON_PREPARE_PANEL:Lmiui/reflect/Method;


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

.field private final mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Landroid/app/Activity;

    const-string v1, "onCreatePanelMenu"

    const-string v2, "(ILandroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

    .line 49
    const-class v0, Landroid/app/Activity;

    const-string v1, "onPreparePanel"

    const-string v2, "(ILandroid/view/View;Landroid/view/Menu;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_PREPARE_PANEL:Lmiui/reflect/Method;

    .line 52
    const-class v0, Landroid/app/Activity;

    const-string v1, "onMenuItemSelected"

    const-string v2, "(ILandroid/view/MenuItem;)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 61
    new-instance v0, Lcom/miui/internal/app/ActivityDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActivityDelegate$1;-><init>(Lcom/miui/internal/app/ActivityDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 77
    iput-object p2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    .line 80
    new-instance v0, Lcom/miui/internal/app/ActivityDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActivityDelegate$2;-><init>(Lcom/miui/internal/app/ActivityDelegate;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActivityDelegate$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/ActivityDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Menu;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/ActivityDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/Menu;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public static getDecorViewLayoutRes(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 144
    sget v1, Lcom/miui/internal/R$attr;->windowActionBar:I

    invoke-static {p0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget v1, Lcom/miui/internal/R$attr;->windowActionBarMovable:I

    invoke-static {p0, v1, v2}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget v0, Lcom/miui/internal/R$layout;->screen_action_bar_movable:I

    .line 155
    .local v0, "decorViewLayoutRes":I
    :goto_0
    return v0

    .line 150
    .end local v0    # "decorViewLayoutRes":I
    :cond_0
    sget v0, Lcom/miui/internal/R$layout;->screen_action_bar:I

    .restart local v0    # "decorViewLayoutRes":I
    goto :goto_0

    .line 153
    .end local v0    # "decorViewLayoutRes":I
    :cond_1
    sget v0, Lcom/miui/internal/R$layout;->screen_simple:I

    .restart local v0    # "decorViewLayoutRes":I
    goto :goto_0
.end method

.method private superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "frameworkMenu"    # Landroid/view/Menu;

    .prologue
    .line 437
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_CREATE_PANEL_MENU:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private superOnMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 447
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_MENU_ITEM_SELECTED:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 442
    sget-object v0, Lcom/miui/internal/app/ActivityDelegate;->ON_PREPARE_PANEL:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected installSubDecor()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 187
    iget-boolean v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    if-eqz v6, :cond_0

    .line 281
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-boolean v9, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecorInstalled:Z

    .line 193
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    sget-object v7, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 198
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 201
    :cond_1
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 202
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "You need to use a miui theme (or descendant) with this activity."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_2
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    .line 209
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 210
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/miui/internal/app/ActivityDelegate;->requestWindowFeature(I)Z

    .line 213
    :cond_4
    const/16 v6, 0xa

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/internal/app/ActivityDelegate;->setTranslucentStatus(I)V

    .line 217
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 219
    .local v2, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 220
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 221
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v6, v9}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setRootSubDecor(Z)V

    .line 222
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getTranslucentStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 225
    iget-boolean v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mHasActionBar:Z

    if-eqz v6, :cond_9

    .line 226
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v7, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    .line 228
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-boolean v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mOverlayActionBar:Z

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 229
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v7, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/widget/ActionBarView;

    iput-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 230
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 233
    iget-boolean v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureProgress:Z

    if-eqz v6, :cond_5

    .line 234
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 236
    :cond_5
    iget-boolean v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v6, :cond_6

    .line 237
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 241
    :cond_6
    const/16 v6, 0x12

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    .line 242
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 243
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v6, v7, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 247
    :cond_7
    const-string v6, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 251
    .local v5, "splitWhenNarrow":Z
    if-eqz v5, :cond_b

    .line 252
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 258
    .local v3, "splitActionBar":Z
    :goto_1
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v7, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/widget/ActionBarContainer;

    .line 260
    .local v4, "splitView":Lcom/miui/internal/widget/ActionBarContainer;
    if-eqz v4, :cond_8

    .line 261
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 262
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v3}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 263
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v6, v5}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 265
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    sget v7, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContextView;

    .line 267
    .local v1, "cab":Lcom/miui/internal/widget/ActionBarContextView;
    invoke-virtual {v4, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 268
    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 269
    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 270
    invoke-virtual {v1, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 273
    .end local v1    # "cab":Lcom/miui/internal/widget/ActionBarContextView;
    :cond_8
    iget-object v6, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 276
    .end local v3    # "splitActionBar":Z
    .end local v4    # "splitView":Lcom/miui/internal/widget/ActionBarContainer;
    .end local v5    # "splitWhenNarrow":Z
    :cond_9
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 277
    invoke-virtual {p0, v9}, Lcom/miui/internal/app/ActivityDelegate;->setImmersionMenuEnabled(Z)V

    .line 280
    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 255
    .restart local v5    # "splitWhenNarrow":Z
    :cond_b
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .restart local v3    # "splitActionBar":Z
    goto :goto_1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 397
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    .line 420
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    .line 415
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 423
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 433
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->installSubDecor()V

    .line 162
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 330
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 291
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    const/4 v1, 0x1

    .line 293
    .local v1, "show":Z
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 296
    .local v0, "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_1

    .line 297
    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 303
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 305
    invoke-direct {p0, v4, v0}, Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    .line 308
    :cond_0
    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 312
    invoke-direct {p0, v4, v3, v0}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    .line 316
    :cond_1
    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 325
    .end local v0    # "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    .end local v1    # "show":Z
    :cond_2
    :goto_0
    return-object v3

    .line 321
    .restart local v0    # "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    .restart local v1    # "show":Z
    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActivityDelegate;->superOnMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    if-nez p1, :cond_0

    .line 371
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    .line 380
    .local v0, "navigationUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 381
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 386
    .end local v0    # "navigationUp":Z
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v0

    .restart local v0    # "navigationUp":Z
    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 181
    .local v0, "ab":Lcom/miui/internal/app/ActionBarImpl;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 455
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 335
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "miui:ActionBar"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 349
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 353
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 341
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarContainer:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 342
    const-string v1, "miui:ActionBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 344
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActivityDelegate;->dismissImmersionMenu(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 173
    .local v0, "ab":Lcom/miui/internal/app/ActionBarImpl;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/miui/internal/app/ActivityDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/OnStatusBarChangeListener;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 465
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/miui/internal/app/ActivityDelegate;->mSubDecor:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
