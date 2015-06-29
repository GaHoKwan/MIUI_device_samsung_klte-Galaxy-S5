.class Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;
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
    name = "NetworkLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/analytics/DispatcherHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/analytics/DispatcherHelper;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;->this$0:Lcom/miui/internal/analytics/DispatcherHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/DispatcherHelper;Lcom/miui/internal/analytics/DispatcherHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/analytics/DispatcherHelper;
    .param p2, "x1"    # Lcom/miui/internal/analytics/DispatcherHelper$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;-><init>(Lcom/miui/internal/analytics/DispatcherHelper;)V

    return-void
.end method


# virtual methods
.method public load()Lorg/json/JSONArray;
    .locals 11

    .prologue
    .line 66
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 67
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const-string v6, "http://app.miui.com/mobile/analytics2.json"

    .line 69
    .local v6, "url":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 71
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 72
    .local v5, "sl":Lorg/apache/http/StatusLine;
    if-eqz v5, :cond_0

    const/16 v7, 0xc8

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 73
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 74
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    new-instance v7, Lorg/json/JSONArray;

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_6

    .line 92
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "sl":Lorg/apache/http/StatusLine;
    :goto_0
    return-object v7

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "DispatcherHelper"

    const-string v8, "ClientProtocolException catched when load configuration from server"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "DispatcherHelper"

    const-string v8, "IOException catched when load configuration from server"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 82
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "DispatcherHelper"

    const-string v8, "JSONException catched when load configuration from server"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 83
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "DispatcherHelper"

    const-string v8, "NumberFormatException catched when load configuration from server"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 85
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "DispatcherHelper"

    const-string v8, "Error URL Argrment:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 87
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "DispatcherHelper"

    const-string v8, "NullPointerException catched when load configuration from server"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 89
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_6
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/AssertionError;
    const-string v7, "DispatcherHelper"

    const-string v8, "AssertionError catched when load configuration from server"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
