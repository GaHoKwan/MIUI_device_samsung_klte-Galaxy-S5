.class public Lcom/miui/internal/app/FragmentDelegate;
.super Lcom/miui/internal/app/ActionBarDelegateImpl;
.source "FragmentDelegate.java"


# static fields
.field private static final INVALIDATE_MENU_POSTED:I = 0x10

.field public static final MENU_INVALIDATE:I = 0x1


# instance fields
.field private mExtraThemeRes:I

.field private mFragment:Landroid/app/Fragment;

.field private mInvalidateMenuFlags:B

.field private final mInvalidateMenuRunnable:Ljava/lang/Runnable;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mSubDecor:Landroid/view/View;

.field private mThemedContext:Landroid/content/Context;

.field private final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;-><init>(Landroid/app/Activity;)V

    .line 52
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$1;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/miui/internal/app/FragmentDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/FragmentDelegate$2;-><init>(Lcom/miui/internal/app/FragmentDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    .line 104
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/FragmentDelegate;)B
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/FragmentDelegate;

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return v0
.end method

.method static synthetic access$072(Lcom/miui/internal/app/FragmentDelegate;I)B
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/FragmentDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/FragmentDelegate;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/app/FragmentDelegate;
    .param p1, "x1"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/internal/app/FragmentDelegate;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/FragmentDelegate;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method


# virtual methods
.method public createActionBar()Lmiui/app/ActionBar;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-direct {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 292
    iget v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object v0
.end method

.method final installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    iget-boolean v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    if-nez v7, :cond_7

    .line 153
    iput-boolean v10, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecorInstalled:Z

    .line 154
    sget v7, Lcom/miui/internal/R$layout;->screen_action_bar:I

    invoke-virtual {p3, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 156
    .local v6, "subDecor":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setCallback(Landroid/view/Window$Callback;)V

    .line 157
    iget-boolean v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mOverlayActionBar:Z

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getTranslucentStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setTranslucentStatus(I)V

    .line 160
    iget v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    if-eqz v7, :cond_0

    .line 161
    const v7, 0x1010054

    invoke-static {p1, v7}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_0
    sget v7, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/widget/ActionBarView;

    iput-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 165
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v8, p0, Lcom/miui/internal/app/FragmentDelegate;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v7, v8}, Lcom/miui/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 168
    iget-boolean v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureProgress:Z

    if-eqz v7, :cond_1

    .line 169
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarView;->initProgress()V

    .line 171
    :cond_1
    iget-boolean v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_2

    .line 172
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/miui/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v8, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    invoke-virtual {v7, v8, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 181
    :cond_3
    const-string v7, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getUiOptionsFromMetadata()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 184
    .local v5, "splitWhenNarrow":Z
    if-eqz v5, :cond_6

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 193
    .local v3, "splitActionBar":Z
    :goto_0
    sget v7, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/widget/ActionBarContainer;

    .line 195
    .local v4, "splitView":Lcom/miui/internal/widget/ActionBarContainer;
    if-eqz v4, :cond_4

    .line 196
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7, v4}, Lcom/miui/internal/widget/ActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 197
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7, v3}, Lcom/miui/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 198
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v7, v5}, Lcom/miui/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 200
    sget v7, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/widget/ActionBarContextView;

    .line 202
    .local v1, "cab":Lcom/miui/internal/widget/ActionBarContextView;
    invoke-virtual {v4, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V

    .line 203
    invoke-virtual {v1, v4}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    .line 204
    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 205
    invoke-virtual {v1, v5}, Lcom/miui/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 208
    .end local v1    # "cab":Lcom/miui/internal/widget/ActionBarContextView;
    :cond_4
    invoke-virtual {p0, v10}, Lcom/miui/internal/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 209
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->invalidateOptionsMenu()V

    .line 210
    iput-object v6, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    .line 217
    .end local v3    # "splitActionBar":Z
    .end local v4    # "splitView":Lcom/miui/internal/widget/ActionBarContainer;
    .end local v5    # "splitWhenNarrow":Z
    .end local v6    # "subDecor":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    :cond_5
    :goto_1
    return-void

    .line 188
    .restart local v5    # "splitWhenNarrow":Z
    .restart local v6    # "subDecor":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    :cond_6
    sget-object v7, Lmiui/R$styleable;->Window:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 190
    .restart local v3    # "splitActionBar":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 211
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "splitActionBar":Z
    .end local v5    # "splitWhenNarrow":Z
    .end local v6    # "subDecor":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    :cond_7
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 212
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 213
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_5

    .line 214
    iget-object v7, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_1
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 261
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 262
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 263
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/miui/internal/app/IFragment;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/app/IFragment;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lmiui/R$styleable;->Window:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You need to use a miui theme (or descendant) with this fragment."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_0
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 121
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/FragmentDelegate;->requestWindowFeature(I)Z

    .line 124
    :cond_2
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/FragmentDelegate;->setTranslucentStatus(I)V

    .line 126
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    .line 127
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mImmersionLayoutResourceId:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 131
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mHasActionBar:Z

    if-eqz v4, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v3}, Lcom/miui/internal/app/FragmentDelegate;->installSubDecor(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 135
    iget-object v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 136
    .local v2, "contentContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/miui/internal/app/IFragment;

    invoke-interface {v4, v3, v2, p2}, Lcom/miui/internal/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "content":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v2, :cond_4

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    .end local v1    # "content":Landroid/view/View;
    .end local v2    # "contentContainer":Landroid/view/ViewGroup;
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    return-object v4

    .line 145
    :cond_5
    iget-object v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/miui/internal/app/IFragment;

    invoke-interface {v4, v3, p1, p2}, Lcom/miui/internal/app/IFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p2}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/miui/internal/app/IFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/miui/internal/app/IFragment;

    invoke-interface {v0, p1}, Lcom/miui/internal/app/IFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 303
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/miui/internal/app/IFragment;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/miui/internal/app/IFragment;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/miui/internal/app/FragmentDelegate;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraThemeRes(I)V
    .locals 0
    .param p1, "extraThemeRes"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/miui/internal/app/FragmentDelegate;->mExtraThemeRes:I

    .line 287
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/OnStatusBarChangeListener;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mSubDecor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updateOptionsMenu(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 268
    iget-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    and-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B

    .line 269
    return-void
.end method
