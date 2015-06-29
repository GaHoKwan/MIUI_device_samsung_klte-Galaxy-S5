.class Lcom/miui/internal/analytics/DispatcherHelper$DefaultLoader;
.super Ljava/lang/Object;
.source "DispatcherHelper.java"

# interfaces
.implements Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/DispatcherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/analytics/DispatcherHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/analytics/DispatcherHelper;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper$DefaultLoader;->this$0:Lcom/miui/internal/analytics/DispatcherHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 100
    const-string v3, "[{server:\"google\", app_name:\"com.android.fileexplorer\", app_id:\"UA-33608129-1\", items:[{id_regex:\"capacity_total\", policy:\"last\"},{id_regex:\"capacity_used\", policy:\"normal\"}]}]"

    .line 101
    .local v3, "json":Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, "jArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jArray":Lorg/json/JSONArray;
    .local v2, "jArray":Lorg/json/JSONArray;
    move-object v1, v2

    .line 107
    .end local v2    # "jArray":Lorg/json/JSONArray;
    .restart local v1    # "jArray":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
