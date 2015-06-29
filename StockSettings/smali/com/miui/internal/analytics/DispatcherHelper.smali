.class public Lcom/miui/internal/analytics/DispatcherHelper;
.super Ljava/lang/Object;
.source "DispatcherHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/analytics/DispatcherHelper$1;,
        Lcom/miui/internal/analytics/DispatcherHelper$DefaultLoader;,
        Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;,
        Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final APP_NAME:Ljava/lang/String; = "app_name"

.field private static final DEFAULT_ITEM_POLICY:Ljava/lang/String; = "normal"

.field private static final DEFAULT_ITEM_REG:Ljava/lang/String; = ".*"

.field private static final DEFAULT_PROBABILITY:J = 0x64L

.field private static final DEFAULT_VERSION_REG:Ljava/lang/String; = ".*"

.field private static final ID_REGEX:Ljava/lang/String; = "id_regex"

.field private static final ITEMS:Ljava/lang/String; = "items"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROBABILITY:Ljava/lang/String; = "probability"

.field private static final SERVERS:Ljava/lang/String; = "servers"

.field private static final SERVER_NAME:Ljava/lang/String; = "server_name"

.field private static final SERVER_URL:Ljava/lang/String; = "http://app.miui.com/mobile/analytics2.json"

.field private static final TAG:Ljava/lang/String; = "DispatcherHelper"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_REGEX:Ljava/lang/String; = "version_regex"


# instance fields
.field private mCmdLoader:Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;

.field private mContext:Landroid/content/Context;

.field private mDispatcherManager:Lcom/miui/internal/analytics/DispatcherManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/analytics/DispatcherHelper$NetworkLoader;-><init>(Lcom/miui/internal/analytics/DispatcherHelper;Lcom/miui/internal/analytics/DispatcherHelper$1;)V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mCmdLoader:Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;

    .line 114
    new-instance v0, Lcom/miui/internal/analytics/DispatcherManager;

    iget-object v1, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/analytics/DispatcherManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/analytics/DispatcherHelper;->mDispatcherManager:Lcom/miui/internal/analytics/DispatcherManager;

    .line 115
    return-void
.end method

.method private getItemsReg(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 14
    .param p1, "jArr"    # Lorg/json/JSONArray;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "appVerRegEx"    # Ljava/lang/String;
    .param p4, "appProb"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/analytics/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 205
    .local v11, "len":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 207
    .local v12, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/miui/internal/analytics/Item;

    const-string v3, "id_regex"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "policy"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "version_regex"

    move-object/from16 v0, p3

    invoke-virtual {v12, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "probability"

    move-wide/from16 v0, p4

    invoke-virtual {v12, v6, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/analytics/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 210
    .end local v12    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 211
    .local v8, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v2, "DispatcherHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to compile items regex for app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v8    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    :goto_1
    return-object v10

    .line 212
    :catch_1
    move-exception v8

    .line 213
    .local v8, "e":Lorg/json/JSONException;
    const-string v2, "DispatcherHelper"

    const-string v3, "JSONException catched when get item register"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getServers(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 7
    .param p1, "jArr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 187
    .local v4, "servers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 189
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 191
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "server_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "DispatcherHelper"

    const-string v6, "JSONException catched when get servers"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public dispatch()V
    .locals 20

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/analytics/DispatcherHelper;->mCmdLoader:Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;

    invoke-interface {v2}, Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;->load()Lorg/json/JSONArray;

    move-result-object v17

    .line 139
    .local v17, "jArr":Lorg/json/JSONArray;
    if-eqz v17, :cond_0

    .line 140
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 141
    .local v19, "len":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v15, v0, :cond_0

    .line 143
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/analytics/DispatcherHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/internal/analytics/EventUtils;->enableWrite(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    .end local v15    # "i":I
    .end local v17    # "jArr":Lorg/json/JSONArray;
    .end local v19    # "len":I
    :cond_0
    return-void

    .line 148
    .restart local v15    # "i":I
    .restart local v17    # "jArr":Lorg/json/JSONArray;
    .restart local v19    # "len":I
    :cond_1
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 149
    .local v18, "jObj":Lorg/json/JSONObject;
    const-wide/16 v6, 0x64

    .line 150
    .local v6, "probability":J
    const-string v5, ".*"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .local v5, "versionReg":Ljava/lang/String;
    :try_start_1
    const-string v2, "probability"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v6

    .line 157
    :goto_1
    :try_start_2
    const-string v2, "version"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 162
    :goto_2
    :try_start_3
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/analytics/DispatcherHelper;->mDispatcherManager:Lcom/miui/internal/analytics/DispatcherManager;

    const-string v3, "servers"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/internal/analytics/DispatcherHelper;->getServers(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/analytics/DispatcherManager;->switchDispatcher(Ljava/util/Map;)V

    .line 166
    const-string v2, "app_name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 169
    .local v4, "appName":Ljava/lang/String;
    :try_start_4
    const-string v2, "items"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/internal/analytics/DispatcherHelper;->getItemsReg(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v16

    .line 174
    .local v16, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/analytics/DispatcherHelper;->mDispatcherManager:Lcom/miui/internal/analytics/DispatcherManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Lcom/miui/internal/analytics/DispatcherManager;->dispatch(Ljava/lang/String;Ljava/util/List;)V

    .line 141
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "versionReg":Ljava/lang/String;
    .end local v6    # "probability":J
    .end local v16    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    .end local v18    # "jObj":Lorg/json/JSONObject;
    :cond_2
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 170
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v5    # "versionReg":Ljava/lang/String;
    .restart local v6    # "probability":J
    .restart local v18    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 171
    .local v14, "e":Lorg/json/JSONException;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .restart local v16    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    new-instance v8, Lcom/miui/internal/analytics/Item;

    const-string v9, ".*"

    const-string v10, "normal"

    move-object v11, v5

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/miui/internal/analytics/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 176
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "versionReg":Ljava/lang/String;
    .end local v6    # "probability":J
    .end local v14    # "e":Lorg/json/JSONException;
    .end local v16    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/analytics/Item;>;"
    .end local v18    # "jObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v14

    .line 177
    .restart local v14    # "e":Lorg/json/JSONException;
    const-string v2, "DispatcherHelper"

    const-string v3, "JSONException catched when dispatch events"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 158
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v5    # "versionReg":Ljava/lang/String;
    .restart local v6    # "probability":J
    .restart local v18    # "jObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 153
    :catch_3
    move-exception v2

    goto :goto_1
.end method
