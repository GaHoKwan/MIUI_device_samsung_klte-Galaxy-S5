.class public abstract Lcom/miui/internal/app/ActionBarDelegateImpl;
.super Ljava/lang/Object;
.source "ActionBarDelegateImpl.java"

# interfaces
.implements Lcom/miui/internal/app/ActionBarDelegate;
.implements Lcom/miui/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/miui/internal/view/menu/MenuPresenter$Callback;


# static fields
.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarDelegate"

.field static final UI_OPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field private mActionBar:Lmiui/app/ActionBar;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field protected mActionMode:Landroid/view/ActionMode;

.field final mActivity:Landroid/app/Activity;

.field protected mFeatureIndeterminateProgress:Z

.field protected mFeatureProgress:Z

.field mHasActionBar:Z

.field protected mImmersionLayoutResourceId:I

.field private mImmersionMenuEnabled:Z

.field protected mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

.field mOverlayActionBar:Z

.field protected mSubDecorInstalled:Z

.field private mTranslucentStatus:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 74
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 75
    return-void
.end method


# virtual methods
.method protected createMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 241
    return-object v0
.end method

.method public dismissImmersionMenu(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->dismiss(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public final getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    return-object v0

    .line 87
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBar:Lmiui/app/ActionBar;

    goto :goto_0
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    .line 131
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, "ab":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 135
    :cond_0
    return-object v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "ab":Lmiui/app/ActionBar;
    if-eqz v0, :cond_1

    .line 97
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    .line 102
    .end local v0    # "ab":Lmiui/app/ActionBar;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v1

    .line 99
    .restart local v0    # "ab":Lmiui/app/ActionBar;
    :cond_1
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method public getTranslucentStatus()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    return v0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 7

    .prologue
    .line 110
    :try_start_0
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 113
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 114
    .local v3, "uiOptions":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.UI_OPTIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 122
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "uiOptions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActionBarDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isImmersionMenuEnabled()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 210
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 206
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 247
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 148
    .local v0, "actionBar":Lcom/miui/internal/app/ActionBarImpl;
    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    .end local v0    # "actionBar":Lcom/miui/internal/app/ActionBarImpl;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    return-void
.end method

.method public onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 257
    return-void
.end method

.method public onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 168
    .local v0, "ab":Lcom/miui/internal/app/ActionBarImpl;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 172
    .end local v0    # "ab":Lcom/miui/internal/app/ActionBarImpl;
    :cond_0
    return-void
.end method

.method protected abstract onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0, v2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    .line 156
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    .line 158
    .local v0, "ab":Lcom/miui/internal/app/ActionBarImpl;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, v2}, Lcom/miui/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 162
    .end local v0    # "ab":Lcom/miui/internal/app/ActionBarImpl;
    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected reopenMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x1

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 178
    :pswitch_1
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    goto :goto_0

    .line 181
    :pswitch_2
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mOverlayActionBar:Z

    goto :goto_0

    .line 184
    :pswitch_3
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureProgress:Z

    goto :goto_0

    .line 187
    :pswitch_4
    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    .line 279
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mSubDecorInstalled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_1

    .line 280
    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->showImmersionMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    iget v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionLayoutResourceId:I

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/widget/ActionBarView;->initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V

    .line 287
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->invalidateOptionsMenu()V

    .line 289
    :cond_1
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->hideImmersionMore()Z

    goto :goto_0
.end method

.method protected setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 233
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p0}, Lcom/miui/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0
.end method

.method public setTranslucentStatus(I)V
    .locals 4
    .param p1, "translucentStatus"    # I

    .prologue
    .line 260
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$integer;->window_translucent_status:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 261
    .local v0, "globalTranslucentStatus":I
    if-ltz v0, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 263
    move p1, v0

    .line 265
    :cond_0
    iget v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    if-eq v2, p1, :cond_1

    .line 266
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v1

    .line 267
    .local v1, "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iput p1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mTranslucentStatus:I

    .line 271
    .end local v1    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    :cond_1
    return-void
.end method

.method public showImmersionMenu()V
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    sget v2, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "moreButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 305
    .end local v0    # "moreButton":Landroid/view/View;
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mImmersionMenuEnabled:Z

    if-nez v1, :cond_1

    .line 309
    const-string v1, "ActionBarDelegate"

    const-string v2, "Try to show immersion menu when immersion menu disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 317
    :cond_2
    if-nez p1, :cond_3

    .line 318
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must specify a valid anchor view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 322
    .local v0, "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarDelegateImpl;->onPrepareImmersionMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    if-nez v1, :cond_5

    .line 324
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_4

    .line 325
    new-instance v1, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/view/menu/PadImmersionMenuPopupWindow;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    .line 332
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v1, p1, p2}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 327
    :cond_4
    new-instance v1, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;

    invoke-direct {v1, p0, v0}, Lcom/miui/internal/view/menu/PhoneImmersionMenuPopupWindow;-><init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    goto :goto_1

    .line 330
    :cond_5
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarDelegateImpl;->mMenuPopupWindow:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;

    invoke-interface {v1, v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;->update(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method
