.class public abstract Lmiui/util/async/tasks/ContentResolverQueryTask;
.super Lmiui/util/async/Task;
.source "ContentResolverQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;,
        Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/Task",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field private mDescription:Ljava/lang/String;

.field private mHasMissingContentChange:Z

.field private mPauseAutoRequery:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private mTaskManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;

.field private mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 131
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 132
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    .line 133
    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public disableAutoRequery()V
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mAutoRequery:Z

    .line 159
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    .line 164
    :cond_0
    return-void
.end method

.method public enableAutoRequery()Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/tasks/ContentResolverQueryTask",
            "<TT;>.Cookie;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    const/4 v3, 0x1

    .line 145
    iget-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mAutoRequery:Z

    if-nez v0, :cond_0

    .line 146
    iput-boolean v3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mAutoRequery:Z

    .line 147
    new-instance v0, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;-><init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    .line 148
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    :cond_0
    new-instance v0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;-><init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    const/16 v5, 0x5b

    const/16 v4, 0x3b

    const/4 v3, 0x0

    .line 168
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mDescription:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 169
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 174
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const-string v2, "]@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 181
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 186
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_2
    const-string v2, "]@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 194
    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mDescription:Ljava/lang/String;

    .line 199
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 201
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mDescription:Ljava/lang/String;

    return-object v2
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .locals 1
    .param p1, "tm"    # Lmiui/util/async/TaskManager;

    .prologue
    .line 259
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mTaskManager:Ljava/lang/ref/WeakReference;

    .line 260
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mPauseAutoRequery:Z

    .line 243
    return-void
.end method

.method protected query()Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method requery()V
    .locals 2

    .prologue
    .line 223
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    iget-boolean v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mPauseAutoRequery:Z

    if-eqz v1, :cond_1

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mHasMissingContentChange:Z

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mTaskManager:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mTaskManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    .line 228
    .local v0, "tm":Lmiui/util/async/TaskManager;
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->restart()Z

    .line 230
    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->disableAutoRequery()V

    goto :goto_0
.end method

.method resume()V
    .locals 2

    .prologue
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>;"
    const/4 v1, 0x0

    .line 249
    iput-boolean v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mPauseAutoRequery:Z

    .line 251
    iget-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mHasMissingContentChange:Z

    if-eqz v0, :cond_0

    .line 252
    iput-boolean v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mHasMissingContentChange:Z

    .line 253
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->requery()V

    .line 255
    :cond_0
    return-void
.end method
