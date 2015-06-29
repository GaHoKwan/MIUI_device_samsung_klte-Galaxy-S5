.class public Lcom/miui/internal/server/DataUpdateService;
.super Landroid/app/IntentService;
.source "DataUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_CACHED:Ljava/lang/String; = "com.miui.data.UPDATE_CACHED"

.field private static final DBG:Z = true

.field private static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final SECRET:Ljava/lang/String; = "f47c473853236172bf1a709714bda7a9"

.field private static final TAG:Ljava/lang/String; = "DataUpdateService"

.field private static sDataUpdateServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "DataUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 5

    .prologue
    const/16 v4, 0x7530

    .line 245
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 246
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 247
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    const-string v2, "http.useragent"

    invoke-static {}, Lcom/miui/internal/server/DataUpdateService;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 248
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 249
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 250
    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 251
    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    sget-object v1, Lcom/miui/internal/server/DataUpdateService;->sUserAgent:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_0

    .line 261
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/server/DataUpdateService;->sUserAgent:Ljava/lang/String;

    .line 266
    :cond_1
    sget-object v1, Lcom/miui/internal/server/DataUpdateService;->sUserAgent:Ljava/lang/String;

    return-object v1
.end method

.method private httpPost()Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    sget-object v19, Lmiui/util/DataUpdateUtils;->URL:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 192
    .local v15, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v10, "json":Lorg/json/JSONObject;
    const-string v19, "version"

    sget-object v20, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/internal/server/DataUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "imei":Ljava/lang/String;
    const-string v19, "imei"

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 197
    .local v5, "data":Lorg/json/JSONArray;
    sget-object v19, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 198
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 200
    .end local v11    # "key":Ljava/lang/String;
    :cond_0
    const-string v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "content":Ljava/lang/String;
    const-string v19, "DataUpdateService"

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v13, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "content"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/server/DataUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "f47c473853236172bf1a709714bda7a9"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v13, v0, v1}, Lmiui/util/DataUpdateUtils;->genUrlSign(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 210
    .local v17, "sign":Ljava/lang/String;
    const-string v19, "appkey"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/server/DataUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v19, "sign"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v14, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 215
    .restart local v11    # "key":Ljava/lang/String;
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    .end local v11    # "key":Ljava/lang/String;
    :cond_1
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v7, v14, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 218
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v15, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 219
    const-string v19, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/miui/internal/server/DataUpdateService;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 221
    .local v16, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 222
    .local v18, "statusCode":I
    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v3, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v20, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 227
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 228
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 230
    .end local v12    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 231
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 235
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 241
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :goto_4
    return-object v19

    .line 233
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    .end local v12    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v19

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v19

    .line 238
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    const-string v19, "DataUpdateService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Server error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v19, 0x0

    goto :goto_4
.end method

.method private static declared-synchronized queryDataUpdateService(Landroid/content/Context;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-class v20, Lcom/miui/internal/server/DataUpdateService;

    monitor-enter v20

    :try_start_0
    sget-object v19, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    if-nez v19, :cond_5

    .line 73
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    sput-object v19, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 75
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    const-string v21, "com.xiaomi.dataUpdate.REGISTRATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 78
    .local v14, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .line 81
    .local v17, "si":Landroid/content/pm/ActivityInfo;
    const-string v19, "com.xiaomi.dataUpdate"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 82
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 86
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 89
    :cond_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "nodeName":Ljava/lang/String;
    const-string v19, "data-update"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 92
    const-string v19, "DataUpdateService"

    const-string v21, "Meta-data does not start with data-update tag"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v19

    sget-object v21, Lmiui/R$styleable;->DataUpdate:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 100
    .local v15, "sa":Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, "serviceName":Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v8, v9

    .local v8, "n":I
    :goto_1
    if-ge v5, v8, :cond_3

    .line 103
    sget-object v19, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    aget-object v21, v9, v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 110
    :cond_3
    :try_start_3
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 112
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "i":I
    .end local v8    # "n":I
    .end local v9    # "names":[Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .end local v16    # "serviceName":Ljava/lang/String;
    .end local v17    # "si":Landroid/content/pm/ActivityInfo;
    .end local v18    # "type":I
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 72
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 105
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "sa":Landroid/content/res/TypedArray;
    .restart local v17    # "si":Landroid/content/pm/ActivityInfo;
    .restart local v18    # "type":I
    :catch_1
    move-exception v4

    .line 107
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v19, "DataUpdateService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " micloud-push attrs error"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 110
    :try_start_6
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v19

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    throw v19
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v15    # "sa":Landroid/content/res/TypedArray;
    .end local v17    # "si":Landroid/content/pm/ActivityInfo;
    .end local v18    # "type":I
    :cond_4
    :try_start_7
    sget-object v19, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 119
    .local v7, "key":Ljava/lang/String;
    const-string v21, "DataUpdateService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "{serviceName:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, ", packageName:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v19, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, "}"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 123
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    monitor-exit v20

    return-void
.end method

.method private sendUpdateBroadcast()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.data.UPDATE_CACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/internal/server/DataUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    sget-boolean v14, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v14, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/internal/server/DataUpdateReceiver;->isUpdateTimeOverDay(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DataUpdateService;->sendUpdateBroadcast()V

    .line 138
    invoke-static/range {p0 .. p0}, Lcom/miui/internal/server/DataUpdateService;->queryDataUpdateService(Landroid/content/Context;)V

    .line 140
    sget-object v14, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    if-eqz v14, :cond_0

    .line 144
    const/4 v11, 0x0

    .line 146
    .local v11, "str":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DataUpdateService;->httpPost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 151
    :goto_1
    if-eqz v11, :cond_0

    .line 153
    :try_start_1
    new-instance v9, Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v11}, Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;-><init>(Lcom/miui/internal/server/DataUpdateService;Ljava/lang/String;)V

    .line 155
    .local v9, "response":Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;
    const-string v14, "DataUpdateService"

    invoke-virtual {v9}, Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v14, v9, Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;->mCode:I

    if-nez v14, :cond_0

    .line 160
    sget-object v14, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 161
    .local v10, "serviceName":Ljava/lang/String;
    iget-object v14, v9, Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;->mData:Lorg/json/JSONObject;

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 162
    iget-object v14, v9, Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;->mData:Lorg/json/JSONObject;

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 163
    .local v12, "waterMark":J
    sget-object v14, Lcom/miui/internal/server/DataUpdateService;->sDataUpdateServices:Ljava/util/Map;

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    .local v5, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v14, "com.xiaomi.dataUpdate.RECEIVE"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v14, "water_mark"

    invoke-virtual {v3, v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    const-string v14, "service_name"

    invoke-virtual {v3, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/internal/server/DataUpdateService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 184
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "response":Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;
    .end local v10    # "serviceName":Ljava/lang/String;
    .end local v12    # "waterMark":J
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "response":Lcom/miui/internal/server/DataUpdateService$DataUpdateResponse;
    :cond_3
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 175
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v14, "last_update_time"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v8, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 176
    .local v6, "lastTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_4

    .line 177
    const-string v14, "DataUpdateService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The distance last update time:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_4
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
