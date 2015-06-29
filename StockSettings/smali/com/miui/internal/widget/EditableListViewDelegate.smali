.class public Lcom/miui/internal/widget/EditableListViewDelegate;
.super Ljava/lang/Object;
.source "EditableListViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;,
        Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;,
        Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    }
.end annotation


# static fields
.field private static final CLEAR_CHOICES:Lmiui/reflect/Method;

.field private static final GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

.field private static final IS_ITEM_CHECKED:Lmiui/reflect/Method;

.field private static final KEY_CHECKBOX:I = 0x7fffffff

.field private static final SET_ADAPTER:Lmiui/reflect/Method;

.field private static final SET_ITEM_CHECKED:Lmiui/reflect/Method;

.field private static final SET_MULTI_CHOICE_MODE_LISTENER:Lmiui/reflect/Method;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mAbsListViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMode:Landroid/view/ActionMode;

.field private mCheckBoxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

.field private mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

.field private mLastBottom:I

.field private mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

.field private mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

.field private mPreventDispatchItemCheckedStateChange:Z

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mSupportHeaderView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setAdapter"

    const-string v2, "(Landroid/widget/ListAdapter;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    .line 42
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "clearChoices"

    const-string v2, "()V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->CLEAR_CHOICES:Lmiui/reflect/Method;

    .line 43
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setItemChecked"

    const-string v2, "(IZ)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ITEM_CHECKED:Lmiui/reflect/Method;

    .line 44
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "isItemChecked"

    const-string v2, "(I)Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->IS_ITEM_CHECKED:Lmiui/reflect/Method;

    .line 45
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "getCheckedItemPositions"

    const-string v2, "()Landroid/util/SparseBooleanArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

    .line 47
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "setMultiChoiceModeListener"

    const-string v2, "(Landroid/widget/AbsListView$MultiChoiceModeListener;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_MULTI_CHOICE_MODE_LISTENER:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckBoxList:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .line 81
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$2;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    .line 520
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckBoxesInListView()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return p1
.end method

.method static synthetic access$512(Lcom/miui/internal/widget/EditableListViewDelegate;I)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/internal/widget/EditableListViewDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/EditableListViewDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v0

    return v0
.end method

.method private findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x7fffffff

    .line 367
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 368
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-nez v0, :cond_0

    .line 369
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 370
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 375
    :cond_0
    return-object v0
.end method

.method private getCheckBoxesInListView()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 380
    .local v2, "childCount":I
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckBoxList:Ljava/util/List;

    .line 381
    .local v1, "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckBoxList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 382
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 383
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 384
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    return-object v1
.end method

.method private getCheckableItemCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    invoke-interface {v0}, Lmiui/widget/EditableListView$ItemCheckFilter;->getCheckableItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isItemCheckable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    invoke-interface {v0, p1}, Lmiui/widget/EditableListView$ItemCheckFilter;->isItemCheckable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 312
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 313
    .local v2, "firstPosition":I
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 314
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 315
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 317
    .local v4, "position":I
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-interface {v5, v0, v4, v6, v7}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_0
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->CLEAR_CHOICES:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 182
    iput v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    .line 184
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 185
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedViews()V

    .line 186
    iput v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    .line 187
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 4

    .prologue
    .line 243
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V
    .locals 7
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/AbsListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/widget/AbsListView;>;"
    if-nez p1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "absListView is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    .line 117
    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    .line 118
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 119
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 120
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    iput-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    .line 122
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 124
    .local v0, "adapter":Landroid/widget/ListAdapter;
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v1, 0x0

    check-cast v1, Landroid/widget/ListAdapter;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    return-void
.end method

.method public isAllItemsChecked()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v0

    iget v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 211
    .local v0, "headerCount":I
    :goto_0
    sget-object v1, Lcom/miui/internal/widget/EditableListViewDelegate;->IS_ITEM_CHECKED:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v4, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .end local v0    # "headerCount":I
    :cond_0
    move v0, v2

    .line 210
    goto :goto_0
.end method

.method public isItemIdChecked(J)Z
    .locals 7
    .param p1, "itemId"    # J

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "checked":Z
    iget-object v6, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v2, v0, v4

    .line 224
    .local v2, "checkedItemId":J
    cmp-long v6, p1, v2

    if-nez v6, :cond_1

    .line 225
    const/4 v1, 0x1

    .line 230
    .end local v2    # "checkedItemId":J
    :cond_0
    return v1

    .line 223
    .restart local v2    # "checkedItemId":J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 276
    if-nez p1, :cond_1

    .line 277
    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    .line 278
    sget-object v1, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListAdapter;

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    .line 281
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ADAPTER:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mListAdapterWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAllItemsChecked(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v3, 0x0

    .line 159
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z

    .line 160
    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 161
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 162
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0, v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    .line 161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckableItemCount()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    .line 167
    iput-boolean v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z

    .line 169
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v2, v3}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 170
    invoke-direct {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedViews()V

    .line 172
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, v3, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 175
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 166
    goto :goto_1
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .locals 0
    .param p1, "filter"    # Lmiui/widget/EditableListView$ItemCheckFilter;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mItemCheckFilter:Lmiui/widget/EditableListView$ItemCheckFilter;

    .line 265
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-boolean v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 199
    .local v0, "headerCount":I
    :goto_0
    sget-object v1, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_ITEM_CHECKED:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 200
    return-void

    .end local v0    # "headerCount":I
    :cond_0
    move v0, v2

    .line 198
    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 299
    sget-object v0, Lcom/miui/internal/widget/EditableListViewDelegate;->SET_MULTI_CHOICE_MODE_LISTENER:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mMultiChoiceModeListenerWrapper:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    .line 140
    :cond_0
    return-void
.end method

.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I

    .line 350
    .local v0, "checkItemCount":I
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 351
    .local v2, "r":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 352
    sget v3, Lcom/miui/internal/R$string;->select_item:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v3, p1

    .line 358
    check-cast v3, Lmiui/view/EditActionMode;

    const v7, 0x102001a

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/miui/internal/R$string;->deselect_all:I

    :goto_1
    invoke-interface {v3, v7, v4}, Lmiui/view/EditActionMode;->setButton(II)V

    .line 362
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    if-eqz v0, :cond_3

    move v3, v5

    :goto_2
    invoke-interface {v4, v6, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 364
    .end local v0    # "checkItemCount":I
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 354
    .restart local v0    # "checkItemCount":I
    .restart local v2    # "r":Landroid/content/res/Resources;
    :cond_1
    sget v3, Lcom/miui/internal/R$plurals;->items_selected:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "format":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    sget v4, Lcom/miui/internal/R$string;->select_all:I

    goto :goto_1

    :cond_3
    move v3, v6

    .line 362
    goto :goto_2
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    sget-object v2, Lcom/miui/internal/widget/EditableListViewDelegate;->GET_CHECKED_ITEM_POSITIONS:Lmiui/reflect/Method;

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListViewClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 333
    .local v1, "checked":Z
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 334
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 340
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "checked":Z
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 336
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v1    # "checked":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 337
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
