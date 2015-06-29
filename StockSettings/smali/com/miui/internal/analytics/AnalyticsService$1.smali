.class Lcom/miui/internal/analytics/AnalyticsService$1;
.super Lcom/miui/internal/analytics/IAnalytics$Stub;
.source "AnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/AnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/analytics/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/miui/internal/analytics/AnalyticsService;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->this$0:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-direct {p0}, Lcom/miui/internal/analytics/IAnalytics$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public track([Lcom/miui/internal/analytics/Event;)V
    .locals 8
    .param p1, "events"    # [Lcom/miui/internal/analytics/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/miui/internal/analytics/PersistenceHelper;->getInstance()Lcom/miui/internal/analytics/PersistenceHelper;

    move-result-object v2

    .line 26
    .local v2, "helper":Lcom/miui/internal/analytics/PersistenceHelper;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 27
    .local v6, "uid":I
    iget-object v7, p0, Lcom/miui/internal/analytics/AnalyticsService$1;->this$0:Lcom/miui/internal/analytics/AnalyticsService;

    invoke-virtual {v7}, Lcom/miui/internal/analytics/AnalyticsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "packageNames":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 30
    move-object v0, p1

    .local v0, "arr$":[Lcom/miui/internal/analytics/Event;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 31
    .local v1, "event":Lcom/miui/internal/analytics/Event;
    invoke-virtual {v1}, Lcom/miui/internal/analytics/Event;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 32
    invoke-virtual {v2, v1}, Lcom/miui/internal/analytics/PersistenceHelper;->writeEvent(Lcom/miui/internal/analytics/Event;)V

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "event":Lcom/miui/internal/analytics/Event;
    :cond_1
    return-void
.end method
