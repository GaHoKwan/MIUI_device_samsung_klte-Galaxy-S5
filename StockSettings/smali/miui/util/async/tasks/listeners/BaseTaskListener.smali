.class public abstract Lmiui/util/async/tasks/listeners/BaseTaskListener;
.super Ljava/lang/Object;
.source "BaseTaskListener.java"

# interfaces
.implements Lmiui/util/async/Task$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    return-void
.end method

.method public onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p3, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    return-void
.end method

.method public onProgress(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;II)V
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p3, "max"    # I
    .param p4, "current"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "tm"    # Lmiui/util/async/TaskManager;
    .param p3, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    return-object p3
.end method
