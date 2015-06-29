.class public Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
.super Ljava/lang/Object;
.source "ContentResolverQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/async/tasks/ContentResolverQueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cookie"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;


# direct methods
.method public constructor <init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>.Cookie;"
    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>.Cookie;"
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->pause()V

    .line 47
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>.Cookie;"
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->disableAutoRequery()V

    .line 38
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;, "Lmiui/util/async/tasks/ContentResolverQueryTask<TT;>.Cookie;"
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;->this$0:Lmiui/util/async/tasks/ContentResolverQueryTask;

    invoke-virtual {v0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->resume()V

    .line 56
    return-void
.end method
