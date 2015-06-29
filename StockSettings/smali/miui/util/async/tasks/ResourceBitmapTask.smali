.class public Lmiui/util/async/tasks/ResourceBitmapTask;
.super Lmiui/util/async/Task;
.source "ResourceBitmapTask.java"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/Task",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# instance fields
.field private mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private mDescription:Ljava/lang/String;

.field private mResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/util/async/tasks/ResourceBitmapTask;-><init>(ILandroid/graphics/BitmapFactory$Options;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 50
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 51
    iput p1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mResId:I

    .line 52
    iput-object p2, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 53
    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 71
    :try_start_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mResId:I

    iget-object v2, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 74
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
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
    invoke-virtual {p0}, Lmiui/util/async/tasks/ResourceBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lmiui/util/async/tasks/ResourceBitmapTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDescription:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 86
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 89
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
