.class Lmiui/widget/ImmersionListPopupWindow$4;
.super Ljava/lang/Object;
.source "ImmersionListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ImmersionListPopupWindow;->installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->dismiss(Z)V

    .line 212
    return-void
.end method
