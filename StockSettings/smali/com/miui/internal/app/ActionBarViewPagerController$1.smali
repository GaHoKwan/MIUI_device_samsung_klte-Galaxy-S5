.class Lcom/miui/internal/app/ActionBarViewPagerController$1;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
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
    .line 39
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 57
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getCount()I

    move-result v1

    .line 47
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mPagerAdapter:Lcom/miui/internal/app/DynamicFragmentPagerAdapter;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$000(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/DynamicFragmentPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/internal/app/DynamicFragmentPagerAdapter;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 49
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$1;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mViewPager:Lmiui/view/ViewPager;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$100(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    .line 53
    :cond_0
    return-void

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 42
    return-void
.end method
