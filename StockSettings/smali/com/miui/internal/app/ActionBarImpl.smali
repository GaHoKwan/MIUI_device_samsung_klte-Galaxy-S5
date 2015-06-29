.class public Lcom/miui/internal/app/ActionBarImpl;
.super Lmiui/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static sTabListenerWrapper:Landroid/app/ActionBar$TabListener;


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field private mActionModeView:Lcom/miui/internal/widget/ActionModeView;

.field private mActionView:Lcom/miui/internal/widget/ActionBarView;

.field private mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/miui/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mDisplayHomeAsUpSet:Z

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

.field private mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field private mShowingForMode:Z

.field private mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$1;

    invoke-direct {v0}, Lcom/miui/internal/app/ActionBarImpl$1;-><init>()V

    sput-object v0, Lcom/miui/internal/app/ActionBarImpl;->sTabListenerWrapper:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 165
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 156
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 166
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 180
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 156
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    .line 181
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 172
    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 131
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 156
    new-instance v1, Lcom/miui/internal/app/ActionBarImpl$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/ActionBarImpl$2;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    move-object v1, p1

    .line 173
    check-cast v1, Lcom/miui/internal/app/IFragment;

    invoke-interface {v1}, Lcom/miui/internal/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    .line 175
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    .line 176
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$200()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/miui/internal/app/ActionBarImpl;->sTabListenerWrapper:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/ActionBarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/ActionBarImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 207
    if-eqz p2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 1021
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1024
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 1027
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 1028
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 1002
    move-object v3, p1

    check-cast v3, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 1003
    .local v3, "tabi":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 1005
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 1006
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1010
    :cond_0
    invoke-virtual {v3, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 1011
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1013
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1014
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1015
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 1014
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1017
    :cond_1
    return-void
.end method

.method private createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 794
    instance-of v1, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v1, :cond_0

    .line 795
    new-instance v0, Lcom/miui/internal/view/SearchActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 799
    .local v0, "actionMode":Landroid/view/ActionMode;
    :goto_0
    return-object v0

    .line 797
    .end local v0    # "actionMode":Landroid/view/ActionMode;
    :cond_0
    new-instance v0, Lcom/miui/internal/view/EditActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .restart local v0    # "actionMode":Landroid/view/ActionMode;
    goto :goto_0
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 980
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 999
    :goto_0
    return-void

    .line 984
    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 987
    .local v0, "tabScroller":Lcom/miui/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 988
    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 989
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 998
    :goto_1
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 992
    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 996
    :goto_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 994
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static getActionBar(Landroid/view/View;)Lcom/miui/internal/app/ActionBarImpl;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "actionBarImpl":Lcom/miui/internal/app/ActionBarImpl;
    :goto_0
    if-eqz p0, :cond_0

    .line 188
    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 189
    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .end local v0    # "actionBarImpl":Lcom/miui/internal/app/ActionBarImpl;
    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 201
    .restart local v0    # "actionBarImpl":Lcom/miui/internal/app/ActionBarImpl;
    :cond_0
    return-object v0

    .line 194
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 197
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    .line 256
    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 258
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 264
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 265
    if-eqz v0, :cond_3

    .line 266
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 271
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    iget-boolean v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 272
    return-void

    .line 260
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    .line 261
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 263
    goto :goto_1

    .line 268
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 271
    goto :goto_3
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 1032
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/miui/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 1035
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 1036
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 1037
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 1038
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 1042
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 1043
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "index"    # I
    .param p5, "args"    # Landroid/os/Bundle;
    .param p6, "hasActionMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 915
    .local p4, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "hasActionMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 907
    .local p3, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 885
    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 500
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 516
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 527
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;Z)V

    .line 511
    return-void
.end method

.method animateToMode(Z)V
    .locals 2
    .param p1, "toActionMode"    # Z

    .prologue
    .line 780
    if-eqz p1, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->showForActionMode()V

    .line 786
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->animateToVisibility(Z)V

    .line 787
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 790
    :cond_0
    return-void

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->hideForActionMode()V

    goto :goto_0

    .line 788
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 804
    instance-of v1, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    if-nez v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 809
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->addView(Landroid/view/View;)V

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSearchActionModeView:Lcom/miui/internal/widget/SearchActionModeView;

    .line 816
    .local v0, "actionModeView":Lcom/miui/internal/widget/ActionModeView;
    :goto_0
    return-object v0

    .line 813
    .end local v0    # "actionModeView":Lcom/miui/internal/widget/ActionModeView;
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextView:Lcom/miui/internal/widget/ActionBarContextView;

    .restart local v0    # "actionModeView":Lcom/miui/internal/widget/ActionModeView;
    goto :goto_0
.end method

.method public createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
    .locals 6

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 821
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/miui/internal/R$layout;->search_action_mode_view:I

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/widget/SearchActionModeView;

    .line 823
    .local v2, "view":Lcom/miui/internal/widget/SearchActionModeView;
    new-instance v3, Lcom/miui/internal/app/ActionBarImpl$3;

    invoke-direct {v3, p0}, Lcom/miui/internal/app/ActionBarImpl$3;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->getPendingInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 832
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 833
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    .line 835
    :cond_0
    return-object v2
.end method

.method public doHide(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .prologue
    const/16 v4, 0x8

    .line 1074
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1075
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_5

    :cond_2
    const/4 v1, 0x1

    .line 1081
    .local v1, "animate":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1082
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$anim;->action_bar_slide_out_top:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1084
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1086
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1088
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1089
    if-eqz v1, :cond_4

    .line 1090
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$anim;->action_bar_slide_out_bottom:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1092
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1094
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    .line 1079
    .end local v1    # "animate":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public doShow(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1049
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1050
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowHideAnimationEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_5

    :cond_2
    const/4 v1, 0x1

    .line 1056
    .local v1, "animate":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1057
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/internal/R$anim;->action_bar_slide_in_top:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1059
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1061
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 1063
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    if-eqz v1, :cond_4

    .line 1065
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/internal/R$anim;->action_bar_slide_in_bottom:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1067
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Lcom/miui/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1069
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "animate":Z
    :cond_5
    move v1, v2

    .line 1054
    goto :goto_1
.end method

.method getActionBarOverlayLayout()Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 900
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTabCount()I
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentTabCount()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 357
    :cond_0
    :goto_0
    return v1

    .line 352
    :pswitch_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 354
    :pswitch_1
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 355
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 338
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 340
    :pswitch_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 674
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 675
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 676
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 677
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 678
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 680
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 681
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 686
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 683
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getViewPagerOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 715
    :cond_0
    return-void
.end method

.method hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_0

    .line 719
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 720
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 722
    :cond_0
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 217
    move-object v3, p1

    check-cast v3, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 218
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setActionBar(Lmiui/app/ActionBar;)V

    .line 219
    sget v3, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarView;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    .line 220
    sget v3, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextView:Lcom/miui/internal/widget/ActionBarContextView;

    .line 222
    sget v3, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    .line 224
    sget v3, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    .line 227
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    if-nez v3, :cond_1

    .line 229
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can only be used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with a compatible window decor layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextDisplayMode:I

    .line 238
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    .line 239
    .local v1, "current":I
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_6

    move v2, v4

    .line 240
    .local v2, "homeAsUp":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 241
    iput-boolean v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 245
    .local v0, "abp":Lcom/miui/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {p0, v5}, Lcom/miui/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 246
    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 247
    return-void

    .end local v0    # "abp":Lcom/miui/internal/view/ActionBarPolicy;
    .end local v1    # "current":I
    .end local v2    # "homeAsUp":Z
    :cond_5
    move v3, v5

    .line 234
    goto :goto_0

    .restart local v1    # "current":I
    :cond_6
    move v2, v5

    .line 239
    goto :goto_1
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;Z)V

    .line 535
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalAddTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 548
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 552
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 554
    if-eqz p3, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 557
    :cond_0
    return-void
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 539
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 540
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 544
    :cond_0
    return-void
.end method

.method internalRemoveAllTabs()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->cleanupTabs()V

    .line 623
    return-void
.end method

.method internalRemoveTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 594
    return-void
.end method

.method internalRemoveTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 597
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .line 604
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 605
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 606
    .local v2, "removedTab":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    .line 607
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 610
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 611
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 612
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 602
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 615
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 616
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public isFragmentViewPagerMode()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShowHideAnimationEnabled()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 251
    return-void
.end method

.method public removeAllFragmentTab()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeAllFragmentTab()V

    .line 942
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveAllTabs()V

    .line 590
    return-void
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    .line 932
    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 936
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragment(Landroid/app/Fragment;)V

    .line 937
    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 926
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method public removeFragmentTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 921
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentAt(I)V

    .line 922
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 891
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 738
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTab(Landroid/app/ActionBar$Tab;)V

    .line 568
    return-void
.end method

.method public removeTabAt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->internalRemoveTabAt(I)V

    .line 579
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 627
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 628
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 655
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .line 633
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 635
    .local v0, "trans":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_4

    .line 636
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 637
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 638
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 652
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 641
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 643
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_6

    .line 644
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 646
    :cond_6
    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    .line 647
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 648
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSelectedTab:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 416
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 427
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 392
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 394
    return-void

    .line 392
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 486
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 490
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 373
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 374
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 378
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 404
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 406
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 387
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 388
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 398
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 400
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 382
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "hasActionMenu"    # Z

    .prologue
    .line 946
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->setFragmentActionMenuAt(IZ)V

    .line 947
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 860
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 861
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "allowListAnimation"    # Z

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->removeAllTabs()V

    .line 871
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setNavigationMode(I)V

    .line 872
    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    .line 874
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setFragmentViewPagerMode(Z)V

    .line 875
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 876
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    .line 878
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setFragmentViewPagerMode(Z)V

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 411
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(I)V

    .line 297
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 302
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 318
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    .line 319
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(I)V

    .line 307
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 456
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 457
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/miui/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 465
    packed-switch p1, :pswitch_data_1

    .line 475
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 477
    return-void

    .line 459
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 460
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 461
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 467
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 468
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 469
    iget v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v2, v4, :cond_0

    .line 470
    iget v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 471
    iput v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 465
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 966
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgress(I)V

    .line 967
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 961
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminate(Z)V

    .line 962
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 956
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminateVisibility(Z)V

    .line 957
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarVisibility(Z)V

    .line 952
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 334
    :goto_0
    return-void

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 1104
    if-nez p1, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContainerView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1106
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 1110
    :cond_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method public setTabsMode(Z)V
    .locals 0
    .param p1, "embedded"    # Z

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 281
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 976
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    .line 977
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 696
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 697
    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 698
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 700
    :cond_0
    return-void
.end method

.method public showActionBarShadow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 840
    return-void
.end method

.method showForActionMode()V
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 705
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 707
    :cond_0
    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 844
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    if-eqz p1, :cond_1

    .line 846
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->hide(Z)V

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x1

    .line 741
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    if-eqz v2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v2}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    .line 747
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v2}, Lcom/miui/internal/widget/ActionModeView;->killMode()V

    .line 750
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 751
    .local v0, "mode":Landroid/view/ActionMode;
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    .line 753
    instance-of v2, v0, Lcom/miui/internal/view/ActionModeImpl;

    if-eqz v2, :cond_4

    move-object v1, v0

    .line 754
    check-cast v1, Lcom/miui/internal/view/ActionModeImpl;

    .line 755
    .local v1, "modeImpl":Lcom/miui/internal/view/ActionModeImpl;
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V

    .line 756
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeCallback:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V

    .line 757
    invoke-virtual {v1}, Lcom/miui/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 758
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 759
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v2, v0}, Lcom/miui/internal/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    .line 760
    invoke-virtual {p0, v3}, Lcom/miui/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 761
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v2, v3, :cond_2

    .line 763
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v2, v2, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v2, :cond_3

    .line 768
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 772
    :cond_3
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 776
    .end local v0    # "mode":Landroid/view/ActionMode;
    .end local v1    # "modeImpl":Lcom/miui/internal/view/ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Landroid/view/ActionMode;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
