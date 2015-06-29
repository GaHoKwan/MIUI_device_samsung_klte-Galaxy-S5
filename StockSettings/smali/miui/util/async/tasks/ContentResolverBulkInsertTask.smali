.class public Lmiui/util/async/tasks/ContentResolverBulkInsertTask;
.super Lmiui/util/async/Task;
.source "ContentResolverBulkInsertTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 44
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mUri:Landroid/net/Uri;

    .line 45
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    .line 46
    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->doLoad()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mDescription:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 51
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 52
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 54
    const-string v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    const-string v3, "]@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mDescription:Ljava/lang/String;

    .line 65
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 67
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mDescription:Ljava/lang/String;

    return-object v3

    .line 56
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    array-length v2, v3

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 58
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
