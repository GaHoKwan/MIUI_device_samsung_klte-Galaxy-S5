.class Lmiui/widget/DynamicListView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;

.field final synthetic val$idsToRemove:Ljava/util/List;

.field final synthetic val$positions:Ljava/util/List;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lmiui/widget/DynamicListView$11;->this$0:Lmiui/widget/DynamicListView;

    iput-object p2, p0, Lmiui/widget/DynamicListView$11;->val$idsToRemove:Ljava/util/List;

    iput-object p3, p0, Lmiui/widget/DynamicListView$11;->val$positions:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 907
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 908
    iget-object v0, p0, Lmiui/widget/DynamicListView$11;->this$0:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$11;->val$idsToRemove:Ljava/util/List;

    iget-object v2, p0, Lmiui/widget/DynamicListView$11;->val$positions:Ljava/util/List;

    # invokes: Lmiui/widget/DynamicListView;->animateRemoval(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->access$2200(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    .line 909
    return-void
.end method
