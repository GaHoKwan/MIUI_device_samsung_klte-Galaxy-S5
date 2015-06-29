.class public Lcom/miui/internal/widget/ActionBarView;
.super Lcom/miui/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/miui/internal/widget/ActionBarView$HomeView;,
        Lcom/miui/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final ICON_INITIALIZED:I = 0x1

.field private static final LOGO_INITIALIZED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContext:Landroid/content/Context;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeAsUpIndicatorResId:I

.field private mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLogoInitIndicator:I

.field private mImmersionView:Landroid/view/View;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 131
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$1;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 145
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$2;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 155
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarView$3;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 163
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 168
    sget-object v0, Lmiui/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 171
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    .line 173
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 174
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 175
    const/16 v0, 0x16

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleCenter:Z

    .line 177
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 182
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/16 v0, 0xd

    sget v1, Lcom/miui/internal/R$layout;->action_bar_home:I

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    .line 186
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 187
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 189
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 191
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    .line 193
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 195
    const/16 v0, 0x9

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 196
    .local v8, "customNavId":I
    if-eqz v8, :cond_0

    .line 197
    invoke-virtual {v9, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 198
    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    .line 199
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 202
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    .line 203
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initExpandedHomeLayout()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 456
    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 458
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 466
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 467
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 461
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method

.method private getCircularProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1781
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1782
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1784
    :cond_0
    return-object v0
.end method

.method private getHorizontalProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1789
    .local v0, "pb":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1790
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1792
    :cond_0
    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1796
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1797
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1799
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1805
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1807
    :cond_1
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 1809
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ActionBarView"

    const-string v2, "Activity component name not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getLogo()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1813
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1814
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 1815
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1823
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 1826
    :cond_1
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 1828
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ActionBarView"

    const-string v2, "Activity component name not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x4

    .line 1771
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1774
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1775
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1777
    :cond_1
    return-void
.end method

.method private initExpandedHomeLayout()V
    .locals 3

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1855
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 1856
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1858
    :cond_0
    return-void
.end method

.method private initHomeLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1832
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeResId:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    .line 1834
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 1836
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 1838
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1840
    iput v2, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1844
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1848
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1850
    :cond_2
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 773
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_4

    .line 774
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 775
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/miui/internal/R$layout;->action_bar_title_item:I

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 777
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/miui/internal/R$id;->action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 778
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/miui/internal/R$id;->action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 779
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/miui/internal/R$id;->up:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 781
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 784
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 786
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 787
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    :cond_1
    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_2

    .line 791
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 793
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 794
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    :cond_3
    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    move v0, v4

    .line 799
    .local v0, "homeAsUp":Z
    :goto_0
    iget v3, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    move v2, v4

    .line 800
    .local v2, "showHome":Z
    :goto_1
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    move v3, v5

    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-nez v2, :cond_b

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 803
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    .line 806
    .end local v0    # "homeAsUp":Z
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "showHome":Z
    :cond_4
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 807
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 810
    :cond_5
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    :cond_6
    return-void

    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_7
    move v0, v5

    .line 798
    goto :goto_0

    .restart local v0    # "homeAsUp":Z
    :cond_8
    move v2, v5

    .line 799
    goto :goto_1

    .line 800
    .restart local v2    # "showHome":Z
    :cond_9
    const/4 v3, 0x4

    goto :goto_2

    :cond_a
    move v3, v6

    goto :goto_2

    :cond_b
    move v4, v5

    .line 801
    goto :goto_3
.end method

.method private isShowTitle()Z
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimpleCustomNavView()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 834
    const/4 v2, 0x1

    .line 835
    .local v2, "simpleCustomNavView":Z
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 836
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 837
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v4, :cond_1

    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v0, v1

    .line 839
    .local v0, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_0
    if-nez v0, :cond_2

    move v2, v3

    .line 842
    .end local v0    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_0
    :goto_1
    return v2

    .line 837
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 839
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_2
    iget v4, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private isTitleCenter()Z
    .locals 2

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleCenter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isSimpleCustomNavView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 521
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 522
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 527
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 530
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogoNavItem:Lcom/miui/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 532
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 524
    goto :goto_0

    .line 527
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 3
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v2, 0x0

    .line 1760
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1761
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1764
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 1765
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1767
    :cond_1
    return-void
.end method

.method private updateProgressBars(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v4, 0x0

    .line 1720
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getCircularProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1721
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getHorizontalProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1723
    .local v1, "horizontalProgressBar":Landroid/widget/ProgressBar;
    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 1724
    if-eqz v1, :cond_1

    .line 1725
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 1726
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v2, v6, :cond_3

    :cond_0
    move v3, v4

    .line 1728
    .local v3, "visibility":I
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1730
    .end local v2    # "level":I
    .end local v3    # "visibility":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1731
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1756
    :cond_2
    :goto_1
    return-void

    .line 1726
    .restart local v2    # "level":I
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 1733
    .end local v2    # "level":I
    :cond_4
    const/4 v5, -0x2

    if-ne p1, v5, :cond_6

    .line 1734
    if-eqz v1, :cond_5

    .line 1735
    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1737
    :cond_5
    if-eqz v0, :cond_2

    .line 1738
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1740
    :cond_6
    const/4 v5, -0x3

    if-ne p1, v5, :cond_7

    .line 1741
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 1742
    :cond_7
    const/4 v5, -0x4

    if-ne p1, v5, :cond_8

    .line 1743
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 1744
    :cond_8
    if-ltz p1, :cond_2

    if-gt p1, v6, :cond_2

    .line 1748
    add-int/lit8 v4, p1, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1750
    if-ge p1, v6, :cond_9

    .line 1751
    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 1753
    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/miui/internal/widget/ActionBarView;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method

.method private updateTightTitle()V
    .locals 3

    .prologue
    .line 823
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 824
    .local v0, "abp":Lcom/miui/internal/view/ActionBarPolicy;
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/internal/view/ActionBarPolicy;->isTightTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    .line 825
    .local v1, "titleVisibility":I
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 829
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    :cond_1
    return-void

    .line 824
    .end local v1    # "titleVisibility":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateTitleCenter()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 858
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v0

    .line 859
    .local v0, "center":Z
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 860
    .local v2, "vg":Landroid/view/ViewGroup;
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 861
    check-cast v1, Landroid/widget/LinearLayout;

    .line 862
    .local v1, "ll":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    move v3, v4

    :goto_0
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 864
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 865
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 866
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 867
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    :goto_3
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 868
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 870
    :cond_1
    return-void

    .restart local v1    # "ll":Landroid/widget/LinearLayout;
    :cond_2
    move v3, v5

    .line 862
    goto :goto_0

    .end local v1    # "ll":Landroid/widget/LinearLayout;
    :cond_3
    move v3, v5

    .line 864
    goto :goto_1

    .line 865
    :cond_4
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_5
    move v4, v5

    .line 867
    goto :goto_3

    .line 868
    :cond_6
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 477
    .local v0, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 480
    :cond_0
    return-void

    .line 475
    .end local v0    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 6
    .param p1, "callback"    # Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1678
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/internal/R$layout;->action_menu_layout:I

    sget v3, Lcom/miui/internal/R$layout;->action_menu_item_layout:I

    sget v4, Lcom/miui/internal/R$layout;->action_bar_expanded_menu_layout:I

    sget v5, Lcom/miui/internal/R$layout;->action_bar_list_menu_item_layout:I

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;IIII)V

    .line 1683
    .local v0, "actionMenuPresenter":Lcom/miui/internal/view/menu/ActionMenuPresenter;
    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 1684
    sget v1, Lcom/miui/internal/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 1685
    return-object v0
.end method

.method protected createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 2

    .prologue
    .line 1689
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V

    return-object v0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 754
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1299
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1304
    if-nez p1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1307
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getActionMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSplitActionBarHeight(Z)I
    .locals 2
    .param p1, "ignoreState"    # Z

    .prologue
    const/4 v0, 0x0

    .line 357
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getContentHeight()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideImmersionMore()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initImmersionMore(ILcom/miui/internal/app/ActionBarDelegateImpl;)V
    .locals 4
    .param p1, "layoutId"    # I
    .param p2, "actionBarDelegate"    # Lcom/miui/internal/app/ActionBarDelegateImpl;

    .prologue
    .line 270
    if-gtz p1, :cond_1

    .line 271
    const-string v1, "ActionBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to initialize invalid layout for immersion more button: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 276
    const-string v1, "ActionBarView"

    const-string v2, "Don\'t show immersion menu button for custom action bar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_2
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    if-nez v1, :cond_3

    .line 279
    const-string v1, "ActionBarView"

    const-string v2, "Don\'t show immersion menu button for null display option"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    .line 284
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 286
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    sget v2, Lcom/miui/internal/R$id;->more:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "moreButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lcom/miui/internal/widget/ActionBarView$4;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/internal/widget/ActionBarView$4;-><init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 4

    .prologue
    .line 262
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lmiui/R$attr;->actionBarIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 263
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 264
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 266
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public initProgress()V
    .locals 4

    .prologue
    .line 254
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget v3, Lmiui/R$attr;->actionBarProgressStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 255
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    sget v1, Lcom/miui/internal/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 256
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 257
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 212
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 213
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 214
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 217
    :cond_0
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 218
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 224
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 225
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 243
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 245
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 247
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 759
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 761
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 763
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 764
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 765
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 770
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 47
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v38

    .line 1060
    .local v38, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v40

    .line 1061
    .local v40, "y":I
    sub-int v42, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v43

    sub-int v42, v42, v43

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v43

    sub-int v9, v42, v43

    .line 1063
    .local v9, "contentHeight":I
    if-gtz v9, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-object/from16 v16, v0

    .line 1069
    .local v16, "homeLayout":Lcom/miui/internal/widget/ActionBarView$HomeView;
    :goto_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2

    .line 1070
    invoke-virtual/range {v16 .. v16}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v18

    .line 1071
    .local v18, "leftOffset":I
    add-int v42, v38, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v42

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v42

    add-int v42, v42, v18

    add-int v38, v38, v42

    .line 1074
    .end local v18    # "leftOffset":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v42, v0

    if-nez v42, :cond_9

    .line 1075
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v27

    .line 1077
    .local v27, "showTitle":Z
    if-eqz v27, :cond_8

    .line 1078
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isTitleCenter()Z

    move-result v42

    if-eqz v42, :cond_16

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v33

    .line 1080
    .local v33, "titleWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v42

    sub-int v42, v42, v38

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    sub-int v42, v42, v33

    div-int/lit8 v17, v42, 0x2

    .line 1081
    .local v17, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1083
    .local v19, "left_offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    .line 1084
    .local v25, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v42, v0

    if-eqz v42, :cond_3

    move-object/from16 v20, v25

    .line 1085
    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 1086
    .local v20, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v42, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v43, v0

    add-int v42, v42, v43

    add-int v19, v19, v42

    .line 1089
    .end local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    .line 1090
    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v42, v0

    if-eqz v42, :cond_4

    move-object/from16 v20, v25

    .line 1091
    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 1092
    .restart local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v42, v0

    add-int v19, v19, v42

    .line 1095
    .end local v20    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    sub-int v17, v17, v19

    .line 1097
    add-int v42, v38, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v43

    add-int v26, v42, v43

    .line 1099
    .local v26, "right":I
    const/4 v11, 0x0

    .line 1100
    .local v11, "customWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_5

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 1102
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v42, v0

    if-eqz v42, :cond_15

    check-cast v20, Landroid/app/ActionBar$LayoutParams;

    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v5, v20

    .line 1104
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1105
    if-eqz v5, :cond_5

    .line 1106
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v42, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v43, v0

    add-int v42, v42, v43

    add-int v11, v11, v42

    .line 1110
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    sub-int v36, v42, v11

    .line 1111
    .local v36, "tr":I
    move/from16 v0, v26

    move/from16 v1, v36

    if-le v0, v1, :cond_7

    .line 1112
    add-int v42, v17, v26

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_6

    .line 1113
    sub-int v17, v38, v19

    .line 1115
    :cond_6
    move/from16 v26, v36

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    sub-int v43, v26, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 1120
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    .line 1121
    .local v8, "childHeight":I
    sub-int v42, v9, v8

    div-int/lit8 v42, v42, 0x2

    add-int v34, v40, v42

    .line 1122
    .local v34, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    add-int v43, v34, v8

    move-object/from16 v0, v42

    move/from16 v1, v17

    move/from16 v2, v34

    move/from16 v3, v26

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1128
    .end local v8    # "childHeight":I
    .end local v11    # "customWidth":I
    .end local v17    # "left":I
    .end local v19    # "left_offset":I
    .end local v25    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v26    # "right":I
    .end local v33    # "titleWidth":I
    .end local v34    # "top":I
    .end local v36    # "tr":I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v42, v0

    packed-switch v42, :pswitch_data_0

    .line 1179
    .end local v27    # "showTitle":Z
    :cond_9
    :goto_4
    :pswitch_0
    sub-int v42, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v43

    sub-int v21, v42, v43

    .line 1180
    .local v21, "menuLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v42, v0

    if-eqz v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_a

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v21

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v42

    sub-int v21, v21, v42

    .line 1185
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    if-eqz v42, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_b

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v43, v0

    sub-int v43, v21, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v43, v0

    mul-int/lit8 v43, v43, 0x2

    sub-int v42, v42, v43

    sub-int v21, v21, v42

    .line 1191
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_c

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v21

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v42

    sub-int v21, v21, v42

    .line 1197
    :cond_c
    const/4 v10, 0x0

    .line 1198
    .local v10, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1e

    .line 1199
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1204
    :cond_d
    :goto_5
    if-eqz v10, :cond_11

    .line 1205
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 1206
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v42, v0

    if-eqz v42, :cond_1f

    check-cast v20, Landroid/app/ActionBar$LayoutParams;

    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v5, v20

    .line 1209
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_6
    if-eqz v5, :cond_20

    iget v12, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    .line 1210
    .local v12, "gravity":I
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 1212
    .local v22, "navWidth":I
    const/16 v35, 0x0

    .line 1213
    .local v35, "topMargin":I
    const/4 v6, 0x0

    .line 1214
    .local v6, "bottomMargin":I
    if-eqz v5, :cond_e

    .line 1215
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v42, v0

    add-int v38, v38, v42

    .line 1216
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v42, v0

    sub-int v21, v21, v42

    .line 1217
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v35, v0

    .line 1218
    iget v6, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    .line 1221
    :cond_e
    and-int/lit8 v15, v12, 0x7

    .line 1223
    .local v15, "hgravity":I
    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v15, v0, :cond_22

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v42

    sub-int v42, v42, v22

    div-int/lit8 v7, v42, 0x2

    .line 1225
    .local v7, "centeredLeft":I
    move/from16 v0, v38

    if-ge v7, v0, :cond_21

    .line 1226
    const/4 v15, 0x3

    .line 1234
    .end local v7    # "centeredLeft":I
    :cond_f
    :goto_8
    const/16 v39, 0x0

    .line 1235
    .local v39, "xpos":I
    packed-switch v15, :pswitch_data_1

    .line 1247
    :goto_9
    :pswitch_1
    and-int/lit8 v37, v12, 0x70

    .line 1249
    .local v37, "vgravity":I
    const/16 v42, -0x1

    move/from16 v0, v42

    if-ne v12, v0, :cond_10

    .line 1250
    const/16 v37, 0x10

    .line 1253
    :cond_10
    const/16 v41, 0x0

    .line 1254
    .local v41, "ypos":I
    sparse-switch v37, :sswitch_data_0

    .line 1268
    :goto_a
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1269
    .restart local v11    # "customWidth":I
    add-int v42, v39, v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v43

    add-int v43, v43, v41

    move/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1273
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v6    # "bottomMargin":I
    .end local v11    # "customWidth":I
    .end local v12    # "gravity":I
    .end local v15    # "hgravity":I
    .end local v22    # "navWidth":I
    .end local v35    # "topMargin":I
    .end local v37    # "vgravity":I
    .end local v39    # "xpos":I
    .end local v41    # "ypos":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    if-eqz v42, :cond_12

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v42

    div-int/lit8 v13, v42, 0x2

    .line 1276
    .local v13, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v43, v0

    neg-int v0, v13

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v46

    add-int v45, v45, v46

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1280
    .end local v13    # "halfProgressHeight":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getVisibility()I

    move-result v42

    const/16 v43, 0x8

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_0

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 1282
    .local v14, "height":I
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 1283
    .local v31, "titleLocation":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1284
    const/16 v30, 0x0

    .line 1285
    .local v30, "titleHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getVisibility()I

    move-result v42

    if-nez v42, :cond_13

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getHeight()I

    move-result v30

    .line 1288
    :cond_13
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 1289
    .local v32, "titleUpParentLocation":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v42

    check-cast v42, Landroid/view/ViewGroup;

    check-cast v42, Landroid/view/ViewGroup;

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 1291
    const/16 v42, 0x1

    aget v42, v31, v42

    sub-int v43, v30, v14

    div-int/lit8 v43, v43, 0x2

    add-int v42, v42, v43

    const/16 v43, 0x1

    aget v43, v32, v43

    sub-int v34, v42, v43

    .line 1292
    .restart local v34    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    move-object/from16 v42, v0

    add-int v43, v34, v14

    invoke-virtual/range {v42 .. v43}, Landroid/view/View;->setBottom(I)V

    goto/16 :goto_0

    .line 1068
    .end local v10    # "customView":Landroid/view/View;
    .end local v14    # "height":I
    .end local v16    # "homeLayout":Lcom/miui/internal/widget/ActionBarView$HomeView;
    .end local v21    # "menuLeft":I
    .end local v30    # "titleHeight":I
    .end local v31    # "titleLocation":[I
    .end local v32    # "titleUpParentLocation":[I
    .end local v34    # "top":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 1102
    .restart local v11    # "customWidth":I
    .restart local v16    # "homeLayout":Lcom/miui/internal/widget/ActionBarView$HomeView;
    .restart local v17    # "left":I
    .restart local v19    # "left_offset":I
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v26    # "right":I
    .restart local v27    # "showTitle":Z
    .restart local v33    # "titleWidth":I
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1124
    .end local v11    # "customWidth":I
    .end local v17    # "left":I
    .end local v19    # "left_offset":I
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v25    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v26    # "right":I
    .end local v33    # "titleWidth":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v38

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v42

    add-int v38, v38, v42

    goto/16 :goto_3

    .line 1132
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    if-eqz v42, :cond_9

    .line 1133
    if-eqz v27, :cond_17

    .line 1134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v42, v0

    add-int v38, v38, v42

    .line 1136
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v38

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/miui/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v43, v0

    add-int v42, v42, v43

    add-int v38, v38, v42

    goto/16 :goto_4

    .line 1140
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-object/from16 v42, v0

    if-eqz v42, :cond_9

    .line 1141
    if-eqz v27, :cond_18

    .line 1142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v42, v0

    add-int v38, v38, v42

    .line 1145
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v29

    .line 1146
    .local v29, "tabWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v28

    .line 1148
    .local v28, "tabHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v43

    sub-int v42, v42, v43

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    sub-int v42, v42, v29

    div-int/lit8 v17, v42, 0x2

    .line 1149
    .restart local v17    # "left":I
    move/from16 v0, v38

    move/from16 v1, v17

    if-le v0, v1, :cond_19

    move/from16 v17, v38

    .line 1151
    :cond_19
    add-int v26, v17, v29

    .line 1153
    .restart local v26    # "right":I
    const/4 v11, 0x0

    .line 1154
    .restart local v11    # "customWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1a

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 1156
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v42, v0

    if-eqz v42, :cond_1d

    check-cast v20, Landroid/app/ActionBar$LayoutParams;

    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v5, v20

    .line 1158
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1159
    if-eqz v5, :cond_1a

    .line 1160
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v42, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v43, v0

    add-int v42, v42, v43

    add-int v11, v11, v42

    .line 1164
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v43

    sub-int v42, v42, v43

    sub-int v36, v42, v11

    .line 1165
    .restart local v36    # "tr":I
    move/from16 v0, v26

    move/from16 v1, v36

    if-le v0, v1, :cond_1c

    .line 1166
    add-int v42, v17, v26

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_1b

    .line 1167
    move/from16 v17, v38

    .line 1169
    :cond_1b
    move/from16 v26, v36

    .line 1172
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-object/from16 v42, v0

    add-int v43, v40, v28

    move-object/from16 v0, v42

    move/from16 v1, v17

    move/from16 v2, v40

    move/from16 v3, v26

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 1173
    move/from16 v38, v26

    goto/16 :goto_4

    .line 1156
    .end local v36    # "tr":I
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    const/4 v5, 0x0

    goto :goto_b

    .line 1200
    .end local v11    # "customWidth":I
    .end local v17    # "left":I
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v26    # "right":I
    .end local v27    # "showTitle":Z
    .end local v28    # "tabHeight":I
    .end local v29    # "tabWidth":I
    .restart local v10    # "customView":Landroid/view/View;
    .restart local v21    # "menuLeft":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v42, v0

    and-int/lit8 v42, v42, 0x10

    if-eqz v42, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v42, v0

    if-eqz v42, :cond_d

    .line 1202
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_5

    .line 1206
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1f
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1209
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_20
    const/16 v12, 0x13

    goto/16 :goto_7

    .line 1227
    .restart local v6    # "bottomMargin":I
    .restart local v7    # "centeredLeft":I
    .restart local v12    # "gravity":I
    .restart local v15    # "hgravity":I
    .restart local v22    # "navWidth":I
    .restart local v35    # "topMargin":I
    :cond_21
    add-int v42, v7, v22

    move/from16 v0, v42

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 1228
    const/4 v15, 0x5

    goto/16 :goto_8

    .line 1230
    .end local v7    # "centeredLeft":I
    :cond_22
    const/16 v42, -0x1

    move/from16 v0, v42

    if-ne v12, v0, :cond_f

    .line 1231
    const/4 v15, 0x3

    goto/16 :goto_8

    .line 1237
    .restart local v39    # "xpos":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getWidth()I

    move-result v42

    sub-int v42, v42, v22

    div-int/lit8 v39, v42, 0x2

    .line 1238
    goto/16 :goto_9

    .line 1240
    :pswitch_5
    move/from16 v39, v38

    .line 1241
    goto/16 :goto_9

    .line 1243
    :pswitch_6
    sub-int v39, v21, v22

    goto/16 :goto_9

    .line 1256
    .restart local v37    # "vgravity":I
    .restart local v41    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v24

    .line 1257
    .local v24, "paddedTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v43

    sub-int v23, v42, v43

    .line 1258
    .local v23, "paddedBottom":I
    sub-int v42, v23, v24

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v43

    sub-int v42, v42, v43

    div-int/lit8 v41, v42, 0x2

    .line 1259
    goto/16 :goto_a

    .line 1261
    .end local v23    # "paddedBottom":I
    .end local v24    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v42

    add-int v41, v42, v35

    .line 1262
    goto/16 :goto_a

    .line 1264
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getHeight()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v43

    sub-int v42, v42, v43

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v43

    sub-int v42, v42, v43

    sub-int v41, v42, v6

    goto/16 :goto_a

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1235
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1254
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getChildCount()I

    move-result v7

    .line 875
    .local v7, "childCount":I
    const/16 v36, 0x0

    .line 876
    .local v36, "visibleChildren":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v7, :cond_2

    .line 877
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 878
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    if-ne v6, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v37

    if-eqz v37, :cond_1

    .line 880
    :cond_0
    add-int/lit8 v36, v36, 0x1

    .line 876
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 884
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    if-nez v36, :cond_4

    .line 886
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 887
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1055
    :cond_3
    :goto_1
    return-void

    .line 891
    :cond_4
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 893
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 895
    .local v9, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v37, v0

    if-lez v37, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v25, v0

    .line 898
    .local v25, "maxHeight":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v38

    add-int v35, v37, v38

    .line 899
    .local v35, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v28

    .line 900
    .local v28, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v29

    .line 901
    .local v29, "paddingRight":I
    sub-int v15, v25, v35

    .line 902
    .local v15, "height":I
    const/high16 v37, -0x80000000

    move/from16 v0, v37

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 904
    .local v8, "childSpecHeight":I
    sub-int v37, v9, v28

    sub-int v5, v37, v29

    .line 905
    .local v5, "availableWidth":I
    div-int/lit8 v23, v5, 0x2

    .line 906
    .local v23, "leftOfCenter":I
    move/from16 v30, v23

    .line 908
    .local v30, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v37, v0

    if-eqz v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-object/from16 v17, v0

    .line 910
    .local v17, "homeLayout":Lcom/miui/internal/widget/ActionBarView$HomeView;
    :goto_3
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_5

    .line 911
    invoke-virtual/range {v17 .. v17}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    .line 913
    .local v24, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    if-gez v37, :cond_13

    .line 914
    const/high16 v37, -0x80000000

    move/from16 v0, v37

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 918
    .local v19, "homeWidthSpec":I
    :goto_4
    const/high16 v37, 0x40000000    # 2.0f

    move/from16 v0, v37

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 920
    invoke-virtual/range {v17 .. v17}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v37

    invoke-virtual/range {v17 .. v17}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getLeftOffset()I

    move-result v38

    add-int v18, v37, v38

    .line 921
    .local v18, "homeWidth":I
    const/16 v37, 0x0

    sub-int v38, v5, v18

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 922
    const/16 v37, 0x0

    sub-int v38, v5, v18

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 925
    .end local v18    # "homeWidth":I
    .end local v19    # "homeWidthSpec":I
    .end local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_6

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 928
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/miui/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v38

    sub-int v38, v30, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 931
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    if-eqz v37, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_7

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v38, v0

    mul-int/lit8 v38, v38, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 935
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v38

    sub-int v38, v30, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0x2

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 939
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v37, v0

    if-eqz v37, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_8

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v8, v2}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 943
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    sub-int v38, v30, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 947
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->isShowTitle()Z

    move-result v31

    .line 949
    .local v31, "showTitle":Z
    if-eqz v31, :cond_9

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->updateTitleCenter()V

    .line 953
    :cond_9
    const/4 v14, 0x0

    .line 954
    .local v14, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v37, v0

    if-eqz v37, :cond_14

    .line 955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 961
    :cond_a
    :goto_5
    if-eqz v14, :cond_d

    .line 962
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    .line 963
    .restart local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v37, v0

    if-eqz v37, :cond_15

    move-object/from16 v37, v24

    check-cast v37, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v4, v37

    .line 966
    .local v4, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_6
    const/16 v20, 0x0

    .line 967
    .local v20, "horizontalMargin":I
    const/16 v34, 0x0

    .line 968
    .local v34, "verticalMargin":I
    if-eqz v4, :cond_b

    .line 969
    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v37, v0

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v38, v0

    add-int v20, v37, v38

    .line 970
    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v37, v0

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v34, v37, v38

    .line 976
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v37, v0

    if-gtz v37, :cond_16

    .line 977
    const/high16 v11, -0x80000000

    .line 982
    .local v11, "customNavHeightMode":I
    :goto_7
    const/16 v38, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    if-ltz v37, :cond_18

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_8
    sub-int v37, v37, v34

    move/from16 v0, v38

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 985
    .local v10, "customNavHeight":I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    const/16 v38, -0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_19

    const/high16 v13, 0x40000000    # 2.0f

    .line 987
    .local v13, "customNavWidthMode":I
    :goto_9
    const/16 v38, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    if-ltz v37, :cond_1a

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_a
    sub-int v37, v37, v20

    move/from16 v0, v38

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 990
    .local v12, "customNavWidth":I
    if-eqz v4, :cond_1b

    iget v0, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v37, v0

    :goto_b
    and-int/lit8 v16, v37, 0x7

    .line 995
    .local v16, "hgrav":I
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 996
    move/from16 v0, v23

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v37

    mul-int/lit8 v12, v37, 0x2

    .line 999
    :cond_c
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v14, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1002
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v37

    add-int v37, v37, v20

    sub-int v5, v5, v37

    .line 1005
    .end local v4    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v10    # "customNavHeight":I
    .end local v11    # "customNavHeightMode":I
    .end local v12    # "customNavWidth":I
    .end local v13    # "customNavWidthMode":I
    .end local v16    # "hgrav":I
    .end local v20    # "horizontalMargin":I
    .end local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v34    # "verticalMargin":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v37, v0

    if-nez v37, :cond_e

    if-eqz v31, :cond_e

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v38, v0

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/miui/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v5

    .line 1010
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v37, v0

    if-nez v37, :cond_f

    .line 1011
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 1036
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v37, v0

    if-gtz v37, :cond_20

    .line 1037
    const/16 v26, 0x0

    .line 1038
    .local v26, "measuredHeight":I
    const/16 v21, 0x0

    :goto_d
    move/from16 v0, v21

    if-ge v0, v7, :cond_1f

    .line 1039
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 1040
    .local v33, "v":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v37

    add-int v27, v37, v35

    .line 1041
    .local v27, "paddedViewHeight":I
    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 1042
    move/from16 v26, v27

    .line 1038
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 895
    .end local v5    # "availableWidth":I
    .end local v8    # "childSpecHeight":I
    .end local v14    # "customView":Landroid/view/View;
    .end local v15    # "height":I
    .end local v17    # "homeLayout":Lcom/miui/internal/widget/ActionBarView$HomeView;
    .end local v23    # "leftOfCenter":I
    .end local v25    # "maxHeight":I
    .end local v26    # "measuredHeight":I
    .end local v27    # "paddedViewHeight":I
    .end local v28    # "paddingLeft":I
    .end local v29    # "paddingRight":I
    .end local v30    # "rightOfCenter":I
    .end local v31    # "showTitle":Z
    .end local v33    # "v":Landroid/view/View;
    .end local v35    # "verticalPadding":I
    :cond_11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    goto/16 :goto_2

    .line 908
    .restart local v5    # "availableWidth":I
    .restart local v8    # "childSpecHeight":I
    .restart local v15    # "height":I
    .restart local v23    # "leftOfCenter":I
    .restart local v25    # "maxHeight":I
    .restart local v28    # "paddingLeft":I
    .restart local v29    # "paddingRight":I
    .restart local v30    # "rightOfCenter":I
    .restart local v35    # "verticalPadding":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 916
    .restart local v17    # "homeLayout":Lcom/miui/internal/widget/ActionBarView$HomeView;
    .restart local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    const/high16 v38, 0x40000000    # 2.0f

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .restart local v19    # "homeWidthSpec":I
    goto/16 :goto_4

    .line 956
    .end local v19    # "homeWidthSpec":I
    .end local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v14    # "customView":Landroid/view/View;
    .restart local v31    # "showTitle":Z
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x10

    if-eqz v37, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v37, v0

    if-eqz v37, :cond_a

    .line 958
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_5

    .line 963
    .restart local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 979
    .restart local v4    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v20    # "horizontalMargin":I
    .restart local v34    # "verticalMargin":I
    :cond_16
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    const/16 v38, -0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "customNavHeightMode":I
    :goto_e
    goto/16 :goto_7

    .end local v11    # "customNavHeightMode":I
    :cond_17
    const/high16 v11, -0x80000000

    goto :goto_e

    .restart local v11    # "customNavHeightMode":I
    :cond_18
    move/from16 v37, v15

    .line 982
    goto/16 :goto_8

    .line 985
    .restart local v10    # "customNavHeight":I
    :cond_19
    const/high16 v13, -0x80000000

    goto/16 :goto_9

    .restart local v13    # "customNavWidthMode":I
    :cond_1a
    move/from16 v37, v5

    .line 987
    goto/16 :goto_a

    .line 990
    .restart local v12    # "customNavWidth":I
    :cond_1b
    const/16 v37, 0x13

    goto/16 :goto_b

    .line 1013
    .end local v4    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v10    # "customNavHeight":I
    .end local v11    # "customNavHeightMode":I
    .end local v12    # "customNavWidth":I
    .end local v13    # "customNavWidthMode":I
    .end local v20    # "horizontalMargin":I
    .end local v24    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v34    # "verticalMargin":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    if-eqz v37, :cond_f

    .line 1014
    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v37, v0

    mul-int/lit8 v22, v37, 0x2

    .line 1015
    .local v22, "itemPaddingSize":I
    :goto_f
    const/16 v37, 0x0

    sub-int v38, v5, v22

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v37, v0

    const/high16 v38, -0x80000000

    move/from16 v0, v38

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v39

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Landroid/widget/LinearLayout;->measure(II)V

    goto/16 :goto_c

    .line 1014
    .end local v22    # "itemPaddingSize":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v22, v0

    goto :goto_f

    .line 1022
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-object/from16 v37, v0

    if-eqz v37, :cond_f

    .line 1023
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v37, v0

    mul-int/lit8 v22, v37, 0x2

    .line 1024
    .restart local v22    # "itemPaddingSize":I
    :goto_10
    const/16 v37, 0x0

    sub-int v38, v5, v22

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    sget v38, Lcom/miui/internal/R$integer;->action_bar_tab_layout_weight:I

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v32

    .line 1028
    .local v32, "tabLayoutWeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-object/from16 v38, v0

    if-nez v32, :cond_1e

    const/high16 v37, -0x80000000

    :goto_11
    move/from16 v0, v37

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    const/high16 v39, 0x40000000    # 2.0f

    move/from16 v0, v39

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move-object/from16 v0, v38

    move/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->measure(II)V

    goto/16 :goto_c

    .line 1023
    .end local v22    # "itemPaddingSize":I
    .end local v32    # "tabLayoutWeight":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v22, v0

    goto :goto_10

    .line 1028
    .restart local v22    # "itemPaddingSize":I
    .restart local v32    # "tabLayoutWeight":I
    :cond_1e
    const/high16 v37, 0x40000000    # 2.0f

    goto :goto_11

    .line 1045
    .end local v22    # "itemPaddingSize":I
    .end local v32    # "tabLayoutWeight":I
    .restart local v26    # "measuredHeight":I
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1050
    .end local v26    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_3

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v38, v0

    mul-int/lit8 v38, v38, 0x2

    sub-int v38, v9, v38

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v39

    const/high16 v40, -0x80000000

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1047
    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lcom/miui/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1326
    move-object v1, p1

    check-cast v1, Lcom/miui/internal/widget/ActionBarView$SavedState;

    .line 1328
    .local v1, "state":Lcom/miui/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/miui/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1330
    iget v2, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1332
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1333
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1334
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1338
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/miui/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1339
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1341
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1312
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1313
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/miui/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1315
    .local v0, "state":Lcom/miui/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1316
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/miui/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1321
    return-object v0
.end method

.method public onWindowHide()V
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowHide()V

    .line 1698
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->onWindowShow()V

    .line 1694
    return-void
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 383
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .param p1, "collapsable"    # Z

    .prologue
    .line 816
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 483
    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 484
    .local v0, "showCustom":Z
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 488
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 489
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 491
    :cond_1
    return-void

    .line 483
    .end local v0    # "showCustom":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v0, -0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 568
    iget v6, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v6, v0, :cond_7

    .line 569
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 571
    and-int/lit8 v6, v0, 0x1f

    if-eqz v6, :cond_13

    .line 573
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_8

    move v5, v9

    .line 574
    .local v5, "showHome":Z
    :goto_1
    if-eqz v5, :cond_d

    .line 575
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initHomeLayout()V

    .line 576
    iget-object v10, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_9

    move v6, v7

    :goto_2
    invoke-virtual {v10, v6}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 577
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_0

    .line 578
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_a

    move v4, v9

    .line 579
    .local v4, "setUp":Z
    :goto_3
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v4}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 585
    if-eqz v4, :cond_0

    .line 586
    invoke-virtual {p0, v9}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 590
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 592
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_b

    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_b

    move v3, v9

    .line 593
    .local v3, "logoVis":Z
    :goto_4
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_c

    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_5
    invoke-virtual {v6, v2}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 601
    .end local v3    # "logoVis":Z
    :cond_1
    :goto_6
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2

    .line 602
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_e

    .line 603
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->initTitle()V

    .line 609
    :cond_2
    :goto_7
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    and-int/lit8 v6, v0, 0x6

    if-eqz v6, :cond_4

    .line 611
    iget v6, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_f

    move v1, v9

    .line 612
    .local v1, "homeAsUp":Z
    :goto_8
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v5, :cond_3

    if-eqz v1, :cond_10

    move v8, v7

    :cond_3
    :goto_9
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_11

    if-eqz v1, :cond_11

    :goto_a
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 616
    .end local v1    # "homeAsUp":Z
    :cond_4
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 617
    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_12

    .line 618
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 624
    :cond_5
    :goto_b
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 630
    .end local v5    # "showHome":Z
    :goto_c
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v6, :cond_6

    .line 631
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6}, Lcom/miui/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_14

    .line 632
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 641
    :cond_6
    :goto_d
    return-void

    .line 568
    .end local v0    # "flagsChanged":I
    :cond_7
    iget v6, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v6

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_8
    move v5, v7

    .line 573
    goto/16 :goto_1

    .restart local v5    # "showHome":Z
    :cond_9
    move v6, v8

    .line 576
    goto/16 :goto_2

    :cond_a
    move v4, v7

    .line 578
    goto/16 :goto_3

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b
    move v3, v7

    .line 592
    goto :goto_4

    .line 593
    .restart local v3    # "logoVis":Z
    :cond_c
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 596
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "logoVis":Z
    :cond_d
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v6, :cond_1

    .line 597
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 605
    :cond_e
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_7

    :cond_f
    move v1, v7

    .line 611
    goto :goto_8

    .line 612
    .restart local v1    # "homeAsUp":Z
    :cond_10
    const/4 v8, 0x4

    goto :goto_9

    :cond_11
    move v9, v7

    .line 613
    goto :goto_a

    .line 620
    .end local v1    # "homeAsUp":Z
    :cond_12
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_b

    .line 626
    .end local v5    # "showHome":Z
    :cond_13
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->invalidate()V

    goto :goto_c

    .line 633
    :cond_14
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_15

    .line 634
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 637
    :cond_15
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 721
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 724
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 732
    return-void
.end method

.method public setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 3
    .param p1, "tabs"    # Lcom/miui/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    .line 371
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 372
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 373
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 374
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 375
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 376
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->updateTightTitle()V

    .line 379
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 371
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1359
    :goto_0
    return-void

    .line 1356
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1357
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    goto :goto_0
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    :goto_0
    return-void

    .line 1347
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1348
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeAsUpIndicatorResId:I

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 551
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 553
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 555
    if-nez p1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 659
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 645
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 646
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarView;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 655
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 673
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 663
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/ActionBarView;->mIconLogoInitIndicator:I

    .line 664
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 669
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 386
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-ne p1, v5, :cond_0

    .line 453
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_1

    .line 391
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    .line 392
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/miui/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 395
    check-cast v0, Lcom/miui/internal/view/menu/MenuBuilder;

    .line 396
    .local v0, "builder":Lcom/miui/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView;->mOptionsMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 397
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v5, :cond_2

    .line 398
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 399
    .local v4, "oldParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    .line 400
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 403
    .end local v4    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-nez v5, :cond_3

    .line 404
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->createActionMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 405
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->createExpandedActionViewMenuPresenter()Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 409
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 411
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v5, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v5, :cond_6

    .line 412
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 415
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 416
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 417
    .local v3, "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 418
    .restart local v4    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_4

    if-eq v4, p0, :cond_4

    .line 419
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 421
    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    .end local v4    # "oldParent":Landroid/view/ViewGroup;
    :cond_5
    :goto_1
    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    goto :goto_0

    .line 423
    .end local v3    # "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    :cond_6
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v10}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 425
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 428
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 429
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 430
    sget-boolean v5, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v5, :cond_8

    const/16 v5, 0x11

    :goto_2
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 431
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->configPresenters(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 432
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 433
    .restart local v3    # "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_9

    .line 434
    invoke-virtual {v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 435
    .restart local v4    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eq v4, v5, :cond_7

    .line 436
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 438
    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/miui/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 440
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3, v10, v2}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 442
    sget v5, Lcom/miui/internal/R$id;->expanded_menu:I

    invoke-virtual {v3, v5}, Lcom/miui/internal/view/menu/ActionMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "expandedMenu":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 445
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 430
    .end local v1    # "expandedMenu":Landroid/view/View;
    .end local v3    # "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    .end local v4    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    const/16 v5, 0x50

    goto :goto_2

    .line 449
    .restart local v3    # "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    :cond_9
    invoke-virtual {v3, v2}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 676
    iget v0, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    .line 677
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 678
    packed-switch v0, :pswitch_data_0

    .line 690
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 714
    :cond_1
    :goto_1
    iput p1, p0, Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I

    .line 715
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    .line 717
    :cond_2
    return-void

    .line 680
    :pswitch_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 685
    :pswitch_1
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 686
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 692
    :pswitch_2
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 693
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 695
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$layout;->action_bar_view_list_nav_layout:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 697
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 699
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 700
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 703
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 705
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 706
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 709
    :pswitch_3
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView;->mTabScrollView:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 690
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 1716
    add-int/lit8 v0, p1, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    .line 1717
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 1711
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    .line 1713
    return-void

    .line 1711
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1706
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    .line 1708
    return-void

    .line 1706
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1701
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->updateProgressBars(I)V

    .line 1703
    return-void

    .line 1701
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setSplitActionBar(Z)V
    .locals 4
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 316
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    :cond_0
    if-eqz p1, :cond_6

    .line 322
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v3}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 332
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    .line 333
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 337
    if-nez p1, :cond_8

    .line 338
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 348
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 350
    :cond_5
    return-void

    .line 327
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 328
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mMenuView:Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 333
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 342
    :cond_8
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 344
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/widget/ActionBarContainer;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitView(Lcom/miui/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 539
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 540
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 546
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    .end local v0    # "visible":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 542
    goto :goto_0

    :cond_3
    move v0, v2

    .line 543
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 546
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUserTitle:Z

    .line 505
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 238
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 516
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 518
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public showImmersionMore()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView;->mImmersionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const/4 v0, 0x1

    .line 302
    :cond_0
    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/miui/internal/widget/AbsActionBarView;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
