.class public Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "ImageViewBindingListener.java"


# static fields
.field private static final ALL_LISTENERS:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lmiui/util/async/tasks/listeners/ImageViewBindingListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/util/async/Task",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceHolder:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 63
    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 65
    return-void
.end method

.method private isSameImageView(Lmiui/util/async/tasks/listeners/ImageViewBindingListener;)Z
    .locals 2
    .param p1, "other"    # Lmiui/util/async/tasks/listeners/ImageViewBindingListener;

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V
    .locals 2
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
    .line 174
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 1
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
    .line 184
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    sget-object v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 5
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
    .line 111
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/async/Task;

    .line 113
    .local v3, "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v3}, Lmiui/util/async/Task;->cancel()V

    .line 118
    .end local v3    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_0
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    .line 119
    const/4 v3, 0x0

    .line 120
    .restart local v3    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    sget-object v4, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;

    .line 121
    .local v2, "l":Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    if-eq v2, p0, :cond_1

    invoke-direct {p0, v2}, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->isSameImageView(Lmiui/util/async/tasks/listeners/ImageViewBindingListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, v2, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    check-cast v3, Lmiui/util/async/Task;

    .line 126
    .end local v2    # "l":Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .restart local v3    # "t":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    :cond_2
    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {v3}, Lmiui/util/async/Task;->cancel()V

    .line 130
    :cond_3
    sget-object v4, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 133
    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 134
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 135
    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_4
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .local p2, "task":Lmiui/util/async/Task;, "Lmiui/util/async/Task<*>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 142
    iget-object v4, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 143
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 144
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v5

    const/4 v4, 0x0

    aput-object v4, v1, v6

    .line 149
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    aget-object v4, v1, v5

    if-nez v4, :cond_2

    .line 150
    instance-of v4, p3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    move-object v4, p3

    .line 151
    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p3

    .restart local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v4, p3

    .line 153
    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 157
    .local v2, "res":Landroid/content/res/Resources;
    instance-of v4, p3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 158
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, p3

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v5, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v1, v6

    .line 163
    :goto_1
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 164
    .local v3, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 165
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    const/high16 v4, 0x10e0000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .end local v3    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_3
    move-object v4, p3

    .line 160
    check-cast v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v1, v6

    goto :goto_1
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .locals 0
    .param p1, "error"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    .line 88
    return-object p0
.end method

.method public setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .locals 0
    .param p1, "placeHolder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 75
    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 76
    return-object p0
.end method
