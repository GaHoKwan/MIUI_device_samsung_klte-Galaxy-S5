.class Lmiui/widget/DynamicListView$12;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->animateRemoval(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$positions:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$12;->val$adapter:Landroid/widget/BaseAdapter;

    iput-object p3, p0, Lmiui/widget/DynamicListView$12;->val$positions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 20

    .prologue
    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v9

    .line 967
    .local v9, "firstVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v6

    .line 968
    .local v6, "childCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v4, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_2

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 971
    .local v5, "child":Landroid/view/View;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 973
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    new-instance v16, Lmiui/widget/DynamicListView$12$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lmiui/widget/DynamicListView$12$1;-><init>(Lmiui/widget/DynamicListView$12;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 995
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    add-int v11, v9, v10

    .line 997
    .local v11, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->val$adapter:Landroid/widget/BaseAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v12

    .line 998
    .local v12, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    # getter for: Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;
    invoke-static/range {v16 .. v16}, Lmiui/widget/DynamicListView;->access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 999
    .local v14, "startTop":Ljava/lang/Integer;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1000
    .local v15, "top":I
    if-eqz v14, :cond_1

    .line 1001
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v15, :cond_0

    .line 1002
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v8, v16, v15

    .line 1003
    .local v8, "delta":I
    int-to-float v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 969
    .end local v8    # "delta":I
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1011
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/widget/DynamicListView;->getDividerHeight()I

    move-result v17

    add-int v7, v16, v17

    .line 1013
    .local v7, "childHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->val$positions:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    mul-int v16, v16, v7

    add-int v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1014
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v8, v16, v15

    .line 1015
    .restart local v8    # "delta":I
    int-to-float v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 1018
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "delta":I
    .end local v11    # "position":I
    .end local v12    # "itemId":J
    .end local v14    # "startTop":Ljava/lang/Integer;
    .end local v15    # "top":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    # getter for: Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;
    invoke-static/range {v16 .. v16}, Lmiui/widget/DynamicListView;->access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    .line 1019
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1020
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1021
    new-instance v16, Lmiui/widget/DynamicListView$12$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/widget/DynamicListView$12$2;-><init>(Lmiui/widget/DynamicListView$12;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView$12;->this$0:Lmiui/widget/DynamicListView;

    move-object/from16 v16, v0

    # getter for: Lmiui/widget/DynamicListView;->mDuration:J
    invoke-static/range {v16 .. v16}, Lmiui/widget/DynamicListView;->access$1900(Lmiui/widget/DynamicListView;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1029
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1030
    const/16 v16, 0x1

    return v16
.end method
