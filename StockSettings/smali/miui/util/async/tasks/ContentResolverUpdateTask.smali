.class public Lmiui/util/async/tasks/ContentResolverUpdateTask;
.super Lmiui/util/async/Task;
.source "ContentResolverUpdateTask.java"


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

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field private final mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 58
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mUri:Landroid/net/Uri;

    .line 59
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mValues:Landroid/content/ContentValues;

    .line 60
    iput-object p3, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mWhere:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mSelectionArgs:[Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

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
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverUpdateTask;->doLoad()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mWhere:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mDescription:Ljava/lang/String;

    .line 87
    :cond_0
    :goto_0
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mDescription:Ljava/lang/String;

    return-object v2

    .line 70
    :cond_1
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 71
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 74
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mSelectionArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mSelectionArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 77
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mSelectionArgs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_2
    const-string v2, "]@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mWhere:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/async/tasks/ContentResolverUpdateTask;->mDescription:Ljava/lang/String;

    .line 84
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    goto :goto_0
.end method
