.class Lcom/miui/internal/app/FragmentDelegate$1;
.super Ljava/lang/Object;
.source "FragmentDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/FragmentDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/FragmentDelegate;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "show":Z
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$000(Lcom/miui/internal/app/FragmentDelegate;)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # setter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1, v3}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v2}, Lcom/miui/internal/app/FragmentDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    # setter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1, v2}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 62
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/miui/internal/app/FragmentDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 65
    :cond_1
    if-eqz v0, :cond_2

    .line 66
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v2}, Lcom/miui/internal/app/FragmentDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 69
    :cond_2
    if-eqz v0, :cond_3

    .line 70
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    iget-object v2, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # getter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/miui/internal/app/FragmentDelegate;->access$100(Lcom/miui/internal/app/FragmentDelegate;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    const/16 v2, -0x12

    # &= operator for: Lcom/miui/internal/app/FragmentDelegate;->mInvalidateMenuFlags:B
    invoke-static {v1, v2}, Lcom/miui/internal/app/FragmentDelegate;->access$072(Lcom/miui/internal/app/FragmentDelegate;I)B

    .line 77
    return-void

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    invoke-virtual {v1, v3}, Lcom/miui/internal/app/FragmentDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 73
    iget-object v1, p0, Lcom/miui/internal/app/FragmentDelegate$1;->this$0:Lcom/miui/internal/app/FragmentDelegate;

    # setter for: Lcom/miui/internal/app/FragmentDelegate;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;
    invoke-static {v1, v3}, Lcom/miui/internal/app/FragmentDelegate;->access$102(Lcom/miui/internal/app/FragmentDelegate;Lcom/miui/internal/view/menu/MenuBuilder;)Lcom/miui/internal/view/menu/MenuBuilder;

    goto :goto_0
.end method
