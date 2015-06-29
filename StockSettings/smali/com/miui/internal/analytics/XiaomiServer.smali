.class public Lcom/miui/internal/analytics/XiaomiServer;
.super Ljava/lang/Object;
.source "XiaomiServer.java"


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/analytics/XiaomiServer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVER_URL:Ljava/lang/String; = "http://tracking.miui.com/tracks"

.field private static final SIGNITURE:Ljava/lang/String; = "s"

.field private static final SUBJECT:Ljava/lang/String; = "miui_apps"

.field private static final TAG:Ljava/lang/String; = "XIAOMI_SERVER"

.field private static final TYPE:Ljava/lang/String; = "t"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mClient:Lorg/apache/http/client/HttpClient;

.field private mHttpPost:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/miui/internal/analytics/XiaomiServer$1;

    invoke-direct {v0}, Lcom/miui/internal/analytics/XiaomiServer$1;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/XiaomiServer;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/XiaomiServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/analytics/XiaomiServer$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/internal/analytics/XiaomiServer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/analytics/XiaomiServer;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/miui/internal/analytics/XiaomiServer;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/XiaomiServer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiServer;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 66
    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiServer;->mClient:Lorg/apache/http/client/HttpClient;

    .line 67
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiServer;->mClient:Lorg/apache/http/client/HttpClient;

    .line 61
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://tracking.miui.com/tracks"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/analytics/XiaomiServer;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 62
    return-void
.end method

.method public send(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 72
    .local v7, "ret":Z
    iget-object v9, p0, Lcom/miui/internal/analytics/XiaomiServer;->mClient:Lorg/apache/http/client/HttpClient;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/internal/analytics/XiaomiServer;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v9, :cond_0

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 74
    .local v0, "appParamJson":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "valueString":Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 77
    .local v4, "paramList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "t"

    const-string v11, "miui_apps"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "value"

    invoke-direct {v9, v10, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "s"

    invoke-static {v4}, Lcom/miui/internal/analytics/SaltGenerate;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :try_start_0
    iget-object v9, p0, Lcom/miui/internal/analytics/XiaomiServer;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 83
    iget-object v9, p0, Lcom/miui/internal/analytics/XiaomiServer;->mClient:Lorg/apache/http/client/HttpClient;

    iget-object v10, p0, Lcom/miui/internal/analytics/XiaomiServer;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 84
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const/16 v9, 0xc8

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 85
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "msg":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v9, "status"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "result":Ljava/lang/String;
    const-string v9, "ok"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 89
    const/4 v7, 0x1

    .line 105
    .end local v0    # "appParamJson":Lorg/json/JSONObject;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "paramList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "valueString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 91
    .restart local v0    # "appParamJson":Lorg/json/JSONObject;
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "paramList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v8    # "valueString":Ljava/lang/String;
    :cond_1
    const-string v9, "XIAOMI_SERVER"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 94
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "XIAOMI_SERVER"

    const-string v10, "UnsupportedEncodingException catched when sending data"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "XIAOMI_SERVER"

    const-string v10, "ClientProtocolException catched when sending data"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "XIAOMI_SERVER"

    const-string v10, "IOException catched when sending data"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 101
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "XIAOMI_SERVER"

    const-string v10, "JSONException catched when sending data"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
