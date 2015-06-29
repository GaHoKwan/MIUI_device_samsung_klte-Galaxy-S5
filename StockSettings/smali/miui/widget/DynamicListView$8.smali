.class Lmiui/widget/DynamicListView$8;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DynamicListView;->touchEventsEnded()V
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
    .line 713
    iput-object p1, p0, Lmiui/widget/DynamicListView$8;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 717
    iget-object v0, p0, Lmiui/widget/DynamicListView$8;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1600(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 719
    iget-object v0, p0, Lmiui/widget/DynamicListView$8;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 720
    return-void
.end method
