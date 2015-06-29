.class Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
.super Lmiui/view/PagerAdapter;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private mFragmentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "viewPager"    # Lmiui/view/ViewPager;

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Lmiui/view/PagerAdapter;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    .line 251
    iput-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 252
    iput-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 255
    iput-object p1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 257
    invoke-virtual {p3, p0}, Lmiui/view/ViewPager;->setAdapter(Lmiui/view/PagerAdapter;)V

    .line 258
    return-void
.end method

.method private removeAllFragmentFromManager()V
    .locals 5

    .prologue
    .line 431
    iget-object v4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 432
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 433
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 434
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    .line 435
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 438
    iget-object v4, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 439
    return-void
.end method

.method private removeFragmentFromManager(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 444
    .local v0, "fm":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 446
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 447
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 448
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 451
    .end local v0    # "fm":Landroid/app/FragmentManager;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "tab"    # Landroid/app/ActionBar$Tab;
    .param p6, "hasActionMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 367
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v7, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v7, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 368
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 369
    return p2
.end method

.method addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "tab"    # Landroid/app/ActionBar$Tab;
    .param p5, "hasActionMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 361
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v7, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lcom/miui/internal/app/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 363
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 270
    return-void
.end method

.method findPositionByTag(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 380
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 381
    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 382
    .local v0, "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-object v3, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    .end local v0    # "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 380
    .restart local v0    # "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 293
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 295
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFragment(IZ)Landroid/app/Fragment;
    .locals 5
    .param p1, "position"    # I
    .param p2, "create"    # Z

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 348
    .local v0, "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    .line 351
    iget-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 352
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    .line 353
    iput-object v4, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    .line 354
    iput-object v4, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    .line 357
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    return-object v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 334
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 335
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    if-ne p1, v2, :cond_0

    .line 339
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 334
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v0, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public hasActionMenu(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean v0, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 308
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    .line 309
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_1

    .line 315
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 316
    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 319
    :cond_1
    return-object v0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v1, v1, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 299
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeAllFragment()V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeAllFragmentFromManager()V

    .line 418
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 420
    return-void
.end method

.method removeFragment(Landroid/app/ActionBar$Tab;)I
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 390
    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 391
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 393
    .local v0, "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-object v3, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroid/app/ActionBar$Tab;

    if-ne v3, p1, :cond_0

    .line 394
    iget-object v3, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, v3}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    .line 395
    iget-object v3, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 400
    .end local v0    # "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 391
    .restart local v0    # "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method removeFragment(Landroid/app/Fragment;)I
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 405
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 406
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    .line 408
    iget-object v2, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 409
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 413
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 405
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method removeFragmentAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroid/app/Fragment;)V

    .line 374
    iget-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 375
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 376
    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "hasActionMenu"    # Z

    .prologue
    .line 423
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;

    .line 424
    .local v0, "fi":Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;
    iget-boolean v1, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    if-eq v1, p2, :cond_0

    .line 425
    iput-boolean p2, v0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    .line 426
    invoke-virtual {p0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->notifyDataSetChanged()V

    .line 428
    :cond_0
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 275
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 278
    iget-object v1, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 280
    :cond_0
    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 282
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 284
    :cond_1
    iput-object v0, p0, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 286
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    return-void
.end method
