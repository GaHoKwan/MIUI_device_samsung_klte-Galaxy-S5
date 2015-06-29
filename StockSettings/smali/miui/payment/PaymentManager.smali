.class public Lmiui/payment/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/PaymentManager$PaymentManagerFuture;,
        Lmiui/payment/PaymentManager$PmsTask;,
        Lmiui/payment/PaymentManager$PaymentCallback;,
        Lmiui/payment/PaymentManager$PaymentManagerCallback;,
        Lmiui/payment/PaymentManager$PaymentListener;
    }
.end annotation


# static fields
.field private static final ACTION_PAYMENT:Ljava/lang/String; = "com.xiaomi.xmsf.action.PAYMENT"

.field public static final CAPABILITY:I = 0x3

.field private static final DEBUG:Z = true

.field public static final ERROR_CODE_ACCOUNT_CHANGED:I = 0xa

.field public static final ERROR_CODE_ACCOUNT_FROZEN:I = 0x9

.field public static final ERROR_CODE_AUTHENTICATION_ERROR:I = 0x5

.field public static final ERROR_CODE_CALLER_INVALID:I = 0xc

.field public static final ERROR_CODE_CALL_TOO_FAST:I = 0xe

.field public static final ERROR_CODE_CANCELED:I = 0x4

.field public static final ERROR_CODE_DUPLICATE_PURCHASE:I = 0x7

.field public static final ERROR_CODE_EXCEPTION:I = 0x1

.field public static final ERROR_CODE_INVALID_PARAMS:I = 0x2

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final ERROR_CODE_ORDER_ERROR:I = 0xd

.field public static final ERROR_CODE_SERVER_ERROR:I = 0x6

.field public static final ERROR_CODE_THIRD_PARTY:I = 0xb

.field public static final ERROR_CODE_USER_ID_MISMATCH:I = 0x8

.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final PACKAGE_PAYMENT:Ljava/lang/String; = "com.xiaomi.payment"

.field public static final PAYMENT_KEY_PAYMENT_RESULT:Ljava/lang/String; = "payment_payment_result"

.field public static final PAYMENT_KEY_QUICK:Ljava/lang/String; = "payment_quick"

.field public static final PAYMENT_KEY_TRADE_BALANCE:Ljava/lang/String; = "payment_trade_balance"

.field private static final TAG:Ljava/lang/String; = "PaymentManager"

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method static synthetic access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager;

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager;

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lmiui/payment/PaymentManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v0, Lmiui/payment/PaymentManager;

    invoke-direct {v0, p0}, Lmiui/payment/PaymentManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    .local p4, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lmiui/payment/PaymentManager$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmiui/payment/PaymentManager$3;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$3;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private internalGotoMiliCenter(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 335
    new-instance v0, Lmiui/payment/PaymentManager$4;

    invoke-direct {v0, p0, p1}, Lmiui/payment/PaymentManager$4;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$4;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 342
    return-void
.end method

.method private internalGotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Lmiui/payment/PaymentManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/payment/PaymentManager$6;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$6;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 364
    return-void
.end method

.method private internalGotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Lmiui/payment/PaymentManager$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/payment/PaymentManager$5;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$5;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 353
    return-void
.end method

.method private internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "order"    # Ljava/lang/String;
    .param p3, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    .local p4, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    new-instance v0, Lmiui/payment/PaymentManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lmiui/payment/PaymentManager$1;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$1;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private internalRecharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lmiui/payment/PaymentManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/payment/PaymentManager$2;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/payment/PaymentManager$2;->start()Lmiui/payment/PaymentManager$PaymentManagerFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "verify"    # Ljava/lang/String;
    .param p5, "paymentListener"    # Lmiui/payment/PaymentManager$PaymentListener;

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "serviceId cannot be empty"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "verify cannot be empty"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_2
    new-instance v0, Lmiui/payment/PaymentManager$PaymentCallback;

    invoke-direct {v0, p0, p3, p2, p5}, Lmiui/payment/PaymentManager$PaymentCallback;-><init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V

    .line 242
    .local v0, "paymentCallback":Lmiui/payment/PaymentManager$PaymentCallback;
    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/payment/PaymentManager;->internalGetMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 243
    return-void
.end method

.method public gotoMiliCenter(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lmiui/payment/PaymentManager;->internalGotoMiliCenter(Landroid/app/Activity;)V

    .line 252
    return-void
.end method

.method public gotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lmiui/payment/PaymentManager;->internalGotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public gotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "verify"    # Ljava/lang/String;

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lmiui/payment/PaymentManager;->internalGotoRechargeRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public isMibiServiceDisabled()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public payForOrder(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paymentId"    # Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;
    .param p4, "extra"    # Landroid/os/Bundle;
    .param p5, "paymentListener"    # Lmiui/payment/PaymentManager$PaymentListener;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "order cannot be empty"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_1
    new-instance v0, Lmiui/payment/PaymentManager$PaymentCallback;

    const-string v1, "thd"

    invoke-direct {v0, p0, v1, p2, p5}, Lmiui/payment/PaymentManager$PaymentCallback;-><init>(Lmiui/payment/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/payment/PaymentManager$PaymentListener;)V

    .line 190
    .local v0, "paymentCallback":Lmiui/payment/PaymentManager$PaymentCallback;
    invoke-direct {p0, p1, p3, p4, v0}, Lmiui/payment/PaymentManager;->internalPayForOrder(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 191
    return-void
.end method

.method public recharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rechargeId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "verify"    # Ljava/lang/String;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "serviceId cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "verify cannot be empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lmiui/payment/PaymentManager;->internalRecharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lmiui/payment/PaymentManager$PaymentManagerFuture;

    .line 214
    return-void
.end method
