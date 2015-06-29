.class public Lmiui/util/async/tasks/ContentResolverBatchTask;
.super Lmiui/util/async/Task;
.source "ContentResolverBatchTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task",
        "<[",
        "Landroid/content/ContentProviderResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 45
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mAuthority:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mOperations:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverBatchTask;->doLoad()[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public doLoad()[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mAuthority:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 52
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 55
    const-string v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    const-string v3, "]@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mDescription:Ljava/lang/String;

    .line 66
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 68
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mDescription:Ljava/lang/String;

    return-object v3

    .line 57
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mOperations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 59
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBatchTask;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
