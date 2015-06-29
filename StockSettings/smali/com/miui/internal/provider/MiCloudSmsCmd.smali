.class public Lcom/miui/internal/provider/MiCloudSmsCmd;
.super Ljava/lang/Object;
.source "MiCloudSmsCmd.java"


# static fields
.field private static ACTIVATION_SMS_PREFIX:Ljava/lang/String; = null

.field private static final CMD_INDEX:I = 0x1

.field private static final HEADER_INDEX:I = 0x0

.field private static final MSG_ID_INDEX:I = 0x2

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field private static final SMS_CMD_HEADER:Ljava/lang/String; = "mfc"

.field private static final SMS_CMD_TAIL:Ljava/lang/String; = "##"

.field private static final TAG:Ljava/lang/String; = "MiCloudSmsCmd"

.field private static final TIME_INDEX:I = 0x3

.field public static final TYPE_DISCARD_TOKEN:Ljava/lang/String; = "d"

.field public static final TYPE_LOCATION:Ljava/lang/String; = "l"

.field public static final TYPE_LOCK:Ljava/lang/String; = "k"

.field public static final TYPE_NOISE:Ljava/lang/String; = "n"

.field public static final TYPE_WIPE:Ljava/lang/String; = "w"

.field private static sHexChars:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    const-string v1, "AC/"

    sput-object v1, Lcom/miui/internal/provider/MiCloudSmsCmd;->ACTIVATION_SMS_PREFIX:Ljava/lang/String;

    .line 139
    const/16 v1, 0x7b

    new-array v1, v1, [Z

    sput-object v1, Lcom/miui/internal/provider/MiCloudSmsCmd;->sHexChars:[Z

    .line 141
    const/16 v0, 0x41

    .local v0, "c":C
    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 142
    sget-object v1, Lcom/miui/internal/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    .line 141
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 144
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 145
    sget-object v1, Lcom/miui/internal/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    .line 144
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_1

    .line 147
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 148
    sget-object v1, Lcom/miui/internal/provider/MiCloudSmsCmd;->sHexChars:[Z

    aput-boolean v2, v1, v0

    .line 147
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    .line 150
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static checkAndDispatchActivationSms(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 104
    sget-object v7, Lcom/miui/internal/provider/MiCloudSmsCmd;->ACTIVATION_SMS_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 105
    .local v4, "pos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 136
    :goto_0
    return v6

    .line 108
    :cond_0
    const-string v7, "MiCloudSmsCmd"

    const-string v8, "checkAndDispatchActivationSms: The message looks like an activation"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v7, Lcom/miui/internal/provider/MiCloudSmsCmd;->ACTIVATION_SMS_PREFIX:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v5, v4, v7

    .line 110
    .local v5, "vkey1Start":I
    add-int/lit8 v0, v5, 0x20

    .line 111
    .local v0, "colonStart":I
    add-int/lit8 v3, v0, 0x1

    .line 112
    .local v3, "msgIdStart":I
    add-int/lit8 v2, v3, 0xb

    .line 113
    .local v2, "msgIdEnd":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_1

    .line 114
    const-string v7, "MiCloudSmsCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAndDispatchActivationSms: length check failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {p3, v5, v0}, Lcom/miui/internal/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    const-string v7, "MiCloudSmsCmd"

    const-string v8, "checkAndDispatchActivationSms: left hex check failed"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_3

    .line 122
    const-string v7, "MiCloudSmsCmd"

    const-string v8, "checkAndDispatchActivationSms: colon check failed"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_3
    invoke-static {p3, v3, v2}, Lcom/miui/internal/provider/MiCloudSmsCmd;->isStrHex(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 126
    const-string v7, "MiCloudSmsCmd"

    const-string v8, "checkAndDispatchActivationSms: right hex check failed"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_4
    const-string v6, "MiCloudSmsCmd"

    const-string v7, "checkAndDispatchActivationSms: activation SMS acknowledged, broadcasting..."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.xiaomi.action.ACTIVATION_SMS_RECEIVED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "extra_sim_index"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v6, "extra_address"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v6, "extra_msg_id"

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v6, "extra_vkey1"

    invoke-virtual {p3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public static checkSmsCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "mfc"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    const-string v6, "##"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "params":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v6, v8

    if-lt v6, v12, :cond_0

    aget-object v6, v8, v0

    const-string v10, "mfc"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 57
    aget-object v3, v8, v9

    .line 58
    .local v3, "cmd":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v1, v8, v6

    .line 59
    .local v1, "msgId":Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v2, v8, v6

    .line 61
    .local v2, "time":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "pwd":Ljava/lang/String;
    const/4 v5, 0x0

    .line 62
    .local v5, "digest":Ljava/lang/String;
    const-string v6, "k"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    aget-object v4, v8, v11

    .line 64
    aget-object v5, v8, v12

    .line 68
    :goto_1
    const-string v6, "##"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 69
    .local v7, "index":I
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    .line 71
    invoke-static/range {v0 .. v6}, Lcom/miui/internal/provider/MiCloudSmsCmd;->sendCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 72
    goto :goto_0

    .line 66
    .end local v7    # "index":I
    :cond_2
    aget-object v5, v8, v11

    goto :goto_1
.end method

.method private static isStrHex(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 153
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "ch":C
    sget-object v2, Lcom/miui/internal/provider/MiCloudSmsCmd;->sHexChars:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/miui/internal/provider/MiCloudSmsCmd;->sHexChars:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    .line 156
    :cond_0
    const/4 v2, 0x0

    .line 159
    .end local v0    # "ch":C
    :goto_1
    return v2

    .line 153
    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "ch":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static sendCmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "digest"    # Ljava/lang/String;
    .param p6, "address"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.device_msgId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "android.intent.extra.device_time"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "android.intent.extra.device_digest"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "android.intent.extra.device_cmd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "android.intent.extra.lock_password"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "android.intent.extra.from_address"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v2, "l"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const-string v0, "miui.intent.action.REQUEST_LOCATION"

    .line 97
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    :cond_1
    return-void

    .line 87
    :cond_2
    const-string v2, "n"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    const-string v0, "miui.intent.action.NOISE"

    goto :goto_0

    .line 89
    :cond_3
    const-string v2, "k"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    const-string v0, "miui.intent.action.LOCK_DEVICE"

    goto :goto_0

    .line 91
    :cond_4
    const-string v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    const-string v0, "miui.intent.action.WIPE_DATA"

    goto :goto_0

    .line 93
    :cond_5
    const-string v2, "d"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v0, "miui.intent.action.DISCARD_FIND_DEVICE_TOKEN"

    goto :goto_0
.end method
