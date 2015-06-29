.class Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionMenuChangeAnimatorObject"
.end annotation


# instance fields
.field private mPosition:I

.field private mShowActionMenu:Z

.field final synthetic this$0:Lcom/miui/internal/app/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "showActionMenu"    # Z

    .prologue
    .line 211
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    .line 212
    iput-boolean p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    .line 213
    return-void
.end method

.method public setValue(F)V
    .locals 6
    .param p1, "value"    # F

    .prologue
    .line 216
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->this$0:Lcom/miui/internal/app/ActionBarViewPagerController;

    # getter for: Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/internal/app/ActionBarViewPagerController;->access$200(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 218
    .local v1, "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    instance-of v2, v1, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    .line 219
    iget v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v2, p1

    iget-boolean v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mShowActionMenu:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v3, v4, v5, v2}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/app/ActionBar$FragmentViewPagerChangeListener;
    :cond_2
    return-void
.end method
