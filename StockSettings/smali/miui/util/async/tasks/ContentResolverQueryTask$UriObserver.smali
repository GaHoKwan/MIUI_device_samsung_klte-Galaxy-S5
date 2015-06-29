.class Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;
.super Landroid/database/ContentObserver;
.source "ContentResolverQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/ContentResolverQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriObserver"
.end annotation


# instance fields
.field private final mTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/util/async/tasks/ContentResolverQueryTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V
    .locals 2
    .param p1, "task"    # Lmiui/util/async/tasks/ContentResolverQueryTask;

    .prologue
    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 279
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;->mTask:Ljava/lang/ref/WeakReference;

    .line 280
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 284
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;->mTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/tasks/ContentResolverQueryTask;

    .line 285
    .local v0, "task":Lmiui/util/async/tasks/ContentResolverQueryTask;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->requery()V

    .line 288
    :cond_0
    return-void
.end method
