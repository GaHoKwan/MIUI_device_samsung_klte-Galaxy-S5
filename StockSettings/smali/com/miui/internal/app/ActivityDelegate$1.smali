.class Lcom/miui/internal/app/ActivityDelegate$1;
.super Ljava/lang/Object;
.source "ActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActivityDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActivityDelegate;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActivityDelegate;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 65
    .local v0, "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/app/ActivityDelegate;->isImmersionMenuEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    # invokes: Lcom/miui/internal/app/ActivityDelegate;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    invoke-static {v1, v2, v0}, Lcom/miui/internal/app/ActivityDelegate;->access$000(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    # invokes: Lcom/miui/internal/app/ActivityDelegate;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    invoke-static {v1, v2, v3, v0}, Lcom/miui/internal/app/ActivityDelegate;->access$100(Lcom/miui/internal/app/ActivityDelegate;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/ActivityDelegate$1;->this$0:Lcom/miui/internal/app/ActivityDelegate;

    invoke-virtual {v1, v3}, Lcom/miui/internal/app/ActivityDelegate;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method