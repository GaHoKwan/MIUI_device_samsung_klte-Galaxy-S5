.class Lcom/miui/internal/server/DropBoxManagerService$3;
.super Ljava/lang/Thread;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/miui/internal/server/DropBoxManagerService;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    # invokes: Lcom/miui/internal/server/DropBoxManagerService;->init()V
    invoke-static {v1}, Lcom/miui/internal/server/DropBoxManagerService;->access$200(Lcom/miui/internal/server/DropBoxManagerService;)V

    .line 139
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService$3;->this$0:Lcom/miui/internal/server/DropBoxManagerService;

    # invokes: Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J
    invoke-static {v1}, Lcom/miui/internal/server/DropBoxManagerService;->access$300(Lcom/miui/internal/server/DropBoxManagerService;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
