.class Lcom/miui/internal/widget/DropDownPopupWindow$1;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/DropDownPopupWindow;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$000(Lcom/miui/internal/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 40
    .local v0, "progress":F
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;
    invoke-static {v1}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$100(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mContainerController:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;
    invoke-static {v1}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$100(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mContainer:Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;
    invoke-static {v2}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$200(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContainerView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContainerController;->onAniamtionUpdate(Landroid/view/View;F)V

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;
    invoke-static {v1}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$300(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mContentController:Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;
    invoke-static {v1}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$300(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/DropDownPopupWindow$1;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$400(Lcom/miui/internal/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/miui/internal/widget/DropDownPopupWindow$ContentController;->onAniamtionUpdate(Landroid/view/View;F)V

    .line 46
    :cond_1
    return-void
.end method
