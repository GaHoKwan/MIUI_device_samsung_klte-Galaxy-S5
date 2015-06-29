.class public Lcom/miui/internal/analytics/CountPolicy;
.super Lcom/miui/internal/analytics/Policy;
.source "CountPolicy.java"


# static fields
.field private static final COUNT_CATEGORY:Ljava/lang/String; = "CountPolicyEvent"

.field public static final TAG:Ljava/lang/String; = "count"


# instance fields
.field private mCountEventItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/internal/analytics/Policy;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 9

    .prologue
    .line 39
    iget-object v2, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 41
    .local v8, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "counts"

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/miui/internal/analytics/TrackEvent;

    const-string v2, "CountPolicyEvent"

    iget-object v4, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    .line 44
    .local v0, "event":Lcom/miui/internal/analytics/Event;
    invoke-virtual {v0}, Lcom/miui/internal/analytics/Event;->dispatch()V

    goto :goto_0

    .line 47
    .end local v0    # "event":Lcom/miui/internal/analytics/Event;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 48
    return-void
.end method

.method public execute(Lcom/miui/internal/analytics/Event;)V
    .locals 4
    .param p1, "event"    # Lcom/miui/internal/analytics/Event;

    .prologue
    .line 22
    iget-object v2, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 23
    .local v0, "countEventItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "countEventItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .restart local v0    # "countEventItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/miui/internal/analytics/CountPolicy;->mCountEventItems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "current":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 30
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/miui/internal/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
