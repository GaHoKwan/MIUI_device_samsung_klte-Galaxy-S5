.class public Lcom/miui/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/miui/internal/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field public static final CATEGORY_MASK:I = -0x10000

.field public static final CATEGORY_SHIFT:I = 0x10

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field public static final USER_MASK:I = 0xffff

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 158
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 160
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 162
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 164
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 209
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 215
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 219
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 221
    invoke-direct {p0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 222
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 416
    invoke-static {p3}, Lcom/miui/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 418
    .local v5, "ordering":I
    new-instance v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    iget v7, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/internal/view/menu/MenuItemImpl;-><init>(Lcom/miui/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 421
    .local v0, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/miui/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 427
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 429
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 257
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 262
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 263
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 264
    .local v1, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 265
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_1
    invoke-interface {v1, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 270
    .end local v1    # "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 317
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 319
    .local v4, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 337
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 324
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 325
    .local v3, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v3, :cond_3

    .line 326
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_3
    invoke-interface {v3}, Lcom/miui/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 329
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 330
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 331
    .local v2, "parcel":Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 332
    invoke-interface {v3, v2}, Lcom/miui/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 298
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 299
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 300
    .local v2, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_2

    .line 301
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_2
    invoke-interface {v2}, Lcom/miui/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 304
    .local v1, "id":I
    if-lez v1, :cond_1

    .line 305
    invoke-interface {v2}, Lcom/miui/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 306
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 307
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 313
    .end local v1    # "id":I
    .end local v2    # "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/miui/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 274
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    const/4 v3, 0x0

    .line 288
    :cond_0
    return v3

    .line 278
    :cond_1
    const/4 v3, 0x0

    .line 280
    .local v3, "result":Z
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 281
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 282
    .local v1, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    .line 283
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_3
    if-nez v3, :cond_2

    .line 285
    invoke-interface {v1, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 795
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 796
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 797
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 798
    add-int/lit8 v2, v0, 0x1

    .line 802
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 795
    .restart local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 802
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 728
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 730
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/miui/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 731
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_1
    sget-object v1, Lcom/miui/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 537
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    if-eqz p2, :cond_0

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1151
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1153
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1154
    iput-object p5, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1157
    iput-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1158
    iput-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1177
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1178
    return-void

    .line 1160
    :cond_0
    if-lez p1, :cond_3

    .line 1161
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1166
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1167
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1173
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1162
    :cond_3
    if-eqz p2, :cond_1

    .line 1163
    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1168
    :cond_4
    if-eqz p4, :cond_2

    .line 1169
    iput-object p4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 761
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/miui/internal/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 764
    return-void

    .line 761
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 444
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 479
    iget-object v10, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 480
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 482
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 484
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 485
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 488
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 489
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 490
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 492
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 495
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 498
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 499
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 488
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 482
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 490
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 503
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/miui/internal/view/menu/MenuPresenter;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/miui/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 239
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 473
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 464
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 465
    .local v0, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/miui/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/miui/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V

    .line 466
    .local v1, "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    .line 468
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCallback:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCallback:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/miui/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 792
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 569
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 553
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 554
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clear()V

    .line 555
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 556
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 557
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 558
    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 559
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1142
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1143
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1144
    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1147
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    .line 985
    return-void
.end method

.method final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 966
    iget-boolean v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 980
    :goto_0
    return-void

    .line 970
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 971
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 972
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 973
    .local v1, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_1

    .line 974
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 976
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    goto :goto_1

    .line 979
    .end local v1    # "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1305
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eq v4, p1, :cond_2

    .line 1306
    :cond_0
    const/4 v0, 0x0

    .line 1325
    :cond_1
    :goto_0
    return v0

    .line 1309
    :cond_2
    const/4 v0, 0x0

    .line 1311
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1312
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1313
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1314
    .local v2, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_4

    .line 1315
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1316
    :cond_4
    invoke-interface {v2, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    .end local v2    # "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1322
    if-eqz v0, :cond_1

    .line 1323
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCallback:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCallback:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 1281
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1282
    const/4 v0, 0x0

    .line 1301
    :cond_0
    :goto_0
    return v0

    .line 1285
    :cond_1
    const/4 v0, 0x0

    .line 1287
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1288
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1289
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1290
    .local v2, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    .line 1291
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1292
    :cond_3
    invoke-interface {v2, p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1296
    .end local v2    # "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1298
    if-eqz v0, :cond_0

    .line 1299
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 680
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 681
    const/4 p2, 0x0

    .line 684
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 685
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 687
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 692
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 684
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 644
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 645
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 646
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 657
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_1
    return-object v1

    .line 648
    .restart local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 651
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 652
    goto :goto_1

    .line 644
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 663
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 664
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 665
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 670
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_1
    return v0

    .line 663
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 874
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 875
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 876
    invoke-virtual {p0, v2, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 878
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-object v8

    .line 882
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 883
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 885
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 888
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 889
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 890
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 893
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 896
    .local v5, "qwerty":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 897
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 899
    .local v6, "shortcutChar":C
    :goto_1
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_6

    :cond_4
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_5

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_6

    :cond_5
    if-eqz v5, :cond_3

    const/16 v9, 0x8

    if-ne v6, v9, :cond_3

    const/16 v9, 0x43

    if-ne p1, v9, :cond_3

    :cond_6
    move-object v8, v1

    .line 905
    goto :goto_0

    .line 897
    .end local v6    # "shortcutChar":C
    :cond_7
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 10
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    const/16 v9, 0x43

    .line 830
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 831
    .local v5, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 832
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 834
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v1

    .line 836
    .local v1, "isKeyCodeMapped":Z
    if-nez v1, :cond_1

    if-eq p2, v9, :cond_1

    .line 858
    :cond_0
    return-void

    .line 841
    :cond_1
    iget-object v7, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 842
    .local v2, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 843
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v7, p1, p2, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 846
    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 848
    .local v6, "shortcutChar":C
    :goto_1
    and-int/lit8 v7, v3, 0x5

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_4

    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_4

    if-eqz v5, :cond_2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    if-ne p2, v9, :cond_2

    :cond_4
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 855
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    .end local v6    # "shortcutChar":C
    :cond_5
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 8

    .prologue
    .line 1095
    iget-boolean v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v6, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1100
    :cond_0
    const/4 v0, 0x0

    .line 1101
    .local v0, "flagged":Z
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1102
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 1103
    .local v3, "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 1104
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    :cond_1
    invoke-interface {v3}, Lcom/miui/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_1

    .line 1110
    .end local v3    # "presenter":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1111
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1112
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1113
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1114
    .local v5, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1115
    .local v2, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1116
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1118
    :cond_3
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1124
    .end local v2    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    .end local v5    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    :cond_4
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1125
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1126
    iget-object v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1128
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1133
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1138
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1277
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1258
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1051
    iget-boolean v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1067
    :goto_0
    return-object v2

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1058
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 1059
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1060
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1065
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1067
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 631
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 632
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 633
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    const/4 v3, 0x1

    .line 638
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 631
    .restart local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1046
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1047
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1048
    return-void
.end method

.method onItemVisibleChanged(Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1036
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1037
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 995
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 996
    if-eqz p1, :cond_0

    .line 997
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 998
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1001
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 1005
    :goto_0
    return-void

    .line 1003
    :cond_1
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 918
    move-object v1, p1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 920
    .local v1, "itemImpl":Lcom/miui/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 954
    :cond_1
    :goto_0
    return v0

    .line 924
    :cond_2
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v0

    .line 926
    .local v0, "invoked":Z
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 927
    .local v2, "provider":Landroid/view/ActionProvider;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 928
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 929
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 930
    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0, v5}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 927
    goto :goto_1

    .line 933
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_8

    .line 934
    :cond_5
    invoke-virtual {p0, v6}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    .line 936
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_6

    .line 937
    new-instance v6, Lcom/miui/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Lcom/miui/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v1, v6}, Lcom/miui/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/miui/internal/view/menu/SubMenuBuilder;)V

    .line 940
    :cond_6
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 941
    .local v4, "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_7

    .line 942
    invoke-virtual {v2, v4}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 944
    :cond_7
    invoke-direct {p0, v4}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 945
    if-nez v0, :cond_1

    .line 946
    invoke-virtual {p0, v5}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 949
    .end local v4    # "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    :cond_8
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    .line 950
    invoke-virtual {p0, v5}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 807
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 809
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 811
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {p0, v1, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 815
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 816
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->close(Z)V

    .line 819
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 515
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 516
    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 517
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 518
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 520
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/miui/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 524
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 526
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 509
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 550
    return-void
.end method

.method public removeMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/miui/internal/view/menu/MenuPresenter;

    .prologue
    .line 248
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 249
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuPresenter;

    .line 250
    .local v1, "item":Lcom/miui/internal/view/menu/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/miui/internal/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 375
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 382
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 383
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 384
    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 385
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 386
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 387
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 389
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 390
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 391
    .local v5, "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 383
    .end local v5    # "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 398
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 399
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 348
    const/4 v5, 0x0

    .line 350
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 351
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 352
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 353
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 354
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 355
    if-nez v5, :cond_0

    .line 356
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 358
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 359
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 364
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/SubMenuBuilder;

    .line 365
    .local v3, "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/miui/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 351
    .end local v3    # "subMenu":Lcom/miui/internal/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 372
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCallback:Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    .line 410
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1270
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 226
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 572
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    .line 574
    .local v1, "group":I
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 575
    .local v0, "curItem":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 587
    .end local v0    # "curItem":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_2
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 591
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 592
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 593
    invoke-virtual {v1, p3}, Lcom/miui/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 594
    invoke-virtual {v1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 597
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 620
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 621
    .local v1, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 622
    invoke-virtual {v1, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 625
    .end local v1    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "changedAtLeastOneItem":Z
    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 606
    .local v2, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 607
    invoke-virtual {v2, p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    const/4 v0, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v0, :cond_2

    .line 614
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 616
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1224
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1225
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1212
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1213
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1200
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1201
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1188
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1189
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1236
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1237
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1273
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1274
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 715
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1020
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1022
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 1023
    iput-boolean v1, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1026
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1017
    :cond_0
    return-void
.end method
