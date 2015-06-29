.class Lcom/miui/internal/app/ActionBarViewPagerController$2;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Lmiui/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 108
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 110
    .local v1, "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    invoke-interface {v1, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 82
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v0

    .line 83
    .local v0, "fromHasActionMenu":Z
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v5}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->hasActionMenu(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 86
    .local v3, "toHasActionMenu":Z
    :goto_0
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 88
    .local v2, "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    invoke-interface {v2, p1, p2, v0, v3}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_1

    .line 83
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    .end local v3    # "toHasActionMenu":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 91
    .restart local v3    # "toHasActionMenu":Z
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$300(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 97
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;
    invoke-static {v3}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v4}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 99
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$2;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 101
    .local v1, "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    invoke-interface {v1, p1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 104
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    :cond_0
    return-void
.end method
