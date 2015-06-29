.class Lmiui/util/concurrent/ConcurrentRingQueue$Node;
.super Ljava/lang/Object;
.source "ConcurrentRingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/concurrent/ConcurrentRingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/util/concurrent/ConcurrentRingQueue$1;

    .prologue
    .line 14
    .local p0, "this":Lmiui/util/concurrent/ConcurrentRingQueue$Node;, "Lmiui/util/concurrent/ConcurrentRingQueue$Node<TT;>;"
    invoke-direct {p0}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>()V

    return-void
.end method
