.class Lmiui/util/Pools$BasePool$1;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools$BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/Pools$BasePool;


# direct methods
.method constructor <init>(Lmiui/util/Pools$BasePool;)V
    .locals 0

    .prologue
    .line 351
    .local p0, "this":Lmiui/util/Pools$BasePool$1;, "Lmiui/util/Pools$BasePool.1;"
    iput-object p1, p0, Lmiui/util/Pools$BasePool$1;->this$0:Lmiui/util/Pools$BasePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lmiui/util/Pools$BasePool$1;, "Lmiui/util/Pools$BasePool.1;"
    :try_start_0
    iget-object v0, p0, Lmiui/util/Pools$BasePool$1;->this$0:Lmiui/util/Pools$BasePool;

    invoke-virtual {v0}, Lmiui/util/Pools$BasePool;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 359
    return-void

    .line 357
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
