.class Lmiui/widget/DynamicListView$9;
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


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lmiui/widget/DynamicListView$9;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 849
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 850
    iget-object v0, p0, Lmiui/widget/DynamicListView$9;->this$0:Lmiui/widget/DynamicListView;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lmiui/widget/DynamicListView;->access$2002(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 851
    iget-object v0, p0, Lmiui/widget/DynamicListView$9;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$2100(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 852
    return-void
.end method
