.class public Lcom/miui/internal/analytics/PolicyHelper;
.super Ljava/lang/Object;
.source "PolicyHelper.java"


# static fields
.field private static final SPLITTER:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "PolicyHelper"


# instance fields
.field private mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/analytics/ObjectBuilder",
            "<",
            "Lcom/miui/internal/analytics/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/analytics/Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    .line 18
    new-instance v0, Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-direct {v0}, Lcom/miui/internal/analytics/ObjectBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    .line 22
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/LastPolicy;

    const-string v2, "last"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 23
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/NormalPolicy;

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 24
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    const-class v1, Lcom/miui/internal/analytics/CountPolicy;

    const-string v2, "count"

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/analytics/ObjectBuilder;->registerClass(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/analytics/Policy;

    invoke-virtual {v2}, Lcom/miui/internal/analytics/Policy;->end()V

    goto :goto_0

    .line 63
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/miui/internal/analytics/Policy;
    .locals 8
    .param p1, "policyDes"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    .local v3, "policy":Lcom/miui/internal/analytics/Policy;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    :try_start_0
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "str":[Ljava/lang/String;
    array-length v5, v4

    if-lez v5, :cond_0

    .line 38
    iget-object v5, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/miui/internal/analytics/Policy;

    move-object v3, v0

    .line 39
    array-length v5, v4

    if-le v5, v7, :cond_1

    const/4 v5, 0x1

    aget-object v2, v4, v5

    .line 40
    .local v2, "param":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_2

    .line 41
    iget-object v5, p0, Lcom/miui/internal/analytics/PolicyHelper;->mObjBuilder:Lcom/miui/internal/analytics/ObjectBuilder;

    invoke-virtual {v5, p1}, Lcom/miui/internal/analytics/ObjectBuilder;->buildObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/miui/internal/analytics/Policy;

    move-object v3, v0

    .line 42
    if-eqz v3, :cond_0

    .line 43
    iget-object v5, p0, Lcom/miui/internal/analytics/PolicyHelper;->mPolicy:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {v3, v2}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Lcom/miui/internal/analytics/Policy;->prepare()V

    .line 56
    .end local v2    # "param":Ljava/lang/String;
    .end local v4    # "str":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 39
    .restart local v4    # "str":[Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 48
    .restart local v2    # "param":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v2}, Lcom/miui/internal/analytics/Policy;->setParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    .end local v2    # "param":Ljava/lang/String;
    .end local v4    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v5, "PolicyHelper"

    const-string v6, "PatternSyntaxException catched when getPolicy"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
