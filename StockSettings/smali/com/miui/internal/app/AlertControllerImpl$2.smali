.class Lcom/miui/internal/app/AlertControllerImpl$2;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v1}, Lcom/miui/internal/app/AlertControllerImpl;->createMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 294
    .local v0, "menu":Lcom/miui/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->onCreatePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$800(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->onPreparePanelMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z
    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$900(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    invoke-static {v1, v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1000(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$2;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    const/4 v2, 0x0

    # invokes: Lcom/miui/internal/app/AlertControllerImpl;->setMenu(Lcom/miui/internal/view/menu/MenuBuilder;)V
    invoke-static {v1, v2}, Lcom/miui/internal/app/AlertControllerImpl;->access$1000(Lcom/miui/internal/app/AlertControllerImpl;Lcom/miui/internal/view/menu/MenuBuilder;)V

    goto :goto_0
.end method
