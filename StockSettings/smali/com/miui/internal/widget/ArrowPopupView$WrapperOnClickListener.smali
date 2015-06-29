.class Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperOnClickListener"
.end annotation


# instance fields
.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$200(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 629
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 621
    return-void
.end method
