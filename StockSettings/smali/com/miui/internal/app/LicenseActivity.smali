.class public Lcom/miui/internal/app/LicenseActivity;
.super Lmiui/app/Activity;
.source "LicenseActivity.java"


# static fields
.field private static final CACHE:[Ljava/lang/String;

.field private static final CACHE_PATH_COPYRIGHT:Ljava/lang/String; = "license/%s/%s/copyright.html"

.field private static final CACHE_PATH_MIBI_LICENSE:Ljava/lang/String; = "license/%s/%s/mibilicense.html"

.field private static final CACHE_PATH_MIUI_MICLOUD_LICENSE:Ljava/lang/String; = "license/%s/%s/miclouduseragreement.htm"

.field private static final CACHE_PATH_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final CACHE_PATH_PRIVACY_POLICY:Ljava/lang/String; = "license/%s/%s/privacy.html"

.field private static final CACHE_PATH_USER_AGREEMENT:Ljava/lang/String; = "license/%s/%s/eula.html"

.field private static final CACHE_PATH_USER_MANUAL:Ljava/lang/String; = "user_manual/%s/%s/index.html"

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en_US"

.field private static final DEFAULT_REGION:Ljava/lang/String; = "default"

.field private static final DIALOG_HOST_UNREACHABLE:I = 0x1

.field private static final DIALOG_LOADING:I = 0x0

.field private static final TITLE:[I

.field private static final URL:[Ljava/lang/String;

.field private static final URL_COPYRIGHT:Ljava/lang/String; = "http://www.miui.com/res/doc/copyright.html?region=%s&lang=%s"

.field private static final URL_MIBI_LICENSE:Ljava/lang/String; = "http://www.miui.com/res/doc/mibilicense.html?region=%s&lang=%s"

.field private static final URL_MIUI_MICLOUD_LICENSE:Ljava/lang/String; = "https://i.mi.com/useragreement.htm?region=%s&lang=%s"

.field private static final URL_PRIVACY_POLICY:Ljava/lang/String; = "http://www.miui.com/res/doc/privacy.html?region=%s&lang=%s"

.field private static final URL_USER_AGREEMENT:Ljava/lang/String; = "http://www.miui.com/res/doc/eula.html?region=%s&lang=%s"

.field private static final URL_USER_MANUAL:Ljava/lang/String; = "http://www.miui.com/res/doc/manual.html?lang=%s&miphone=%s&version=v6"


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://www.miui.com/res/doc/copyright.html?region=%s&lang=%s"

    aput-object v1, v0, v3

    const-string v1, "http://www.miui.com/res/doc/privacy.html?region=%s&lang=%s"

    aput-object v1, v0, v4

    const-string v1, "http://www.miui.com/res/doc/eula.html?region=%s&lang=%s"

    aput-object v1, v0, v5

    const-string v1, "http://www.miui.com/res/doc/manual.html?lang=%s&miphone=%s&version=v6"

    aput-object v1, v0, v6

    const-string v1, "http://www.miui.com/res/doc/mibilicense.html?region=%s&lang=%s"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "https://i.mi.com/useragreement.htm?region=%s&lang=%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/internal/app/LicenseActivity;->URL:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "license/%s/%s/copyright.html"

    aput-object v1, v0, v3

    const-string v1, "license/%s/%s/privacy.html"

    aput-object v1, v0, v4

    const-string v1, "license/%s/%s/eula.html"

    aput-object v1, v0, v5

    const-string v1, "user_manual/%s/%s/index.html"

    aput-object v1, v0, v6

    const-string v1, "license/%s/%s/mibilicense.html"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "license/%s/%s/miclouduseragreement.htm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/internal/app/LicenseActivity;->CACHE:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/miui/internal/R$string;->copyright:I

    aput v1, v0, v3

    sget v1, Lcom/miui/internal/R$string;->privacy_policy:I

    aput v1, v0, v4

    sget v1, Lcom/miui/internal/R$string;->user_agreement:I

    aput v1, v0, v5

    sget v1, Lcom/miui/internal/R$string;->user_manual:I

    aput v1, v0, v6

    sget v1, Lcom/miui/internal/R$string;->mibi_license:I

    aput v1, v0, v7

    sput-object v0, Lcom/miui/internal/app/LicenseActivity;->TITLE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 94
    new-instance v0, Lcom/miui/internal/app/LicenseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/LicenseActivity$1;-><init>(Lcom/miui/internal/app/LicenseActivity;)V

    iput-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 101
    new-instance v0, Lcom/miui/internal/app/LicenseActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/LicenseActivity$2;-><init>(Lcom/miui/internal/app/LicenseActivity;)V

    iput-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    new-instance v0, Lcom/miui/internal/app/LicenseActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/LicenseActivity$3;-><init>(Lcom/miui/internal/app/LicenseActivity;)V

    iput-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/LicenseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/LicenseActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/internal/app/LicenseActivity;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/LicenseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/LicenseActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/app/LicenseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/app/LicenseActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/internal/app/LicenseActivity;->onReceivedError()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/app/LicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/app/LicenseActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getCachePath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "licenseType"    # I
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "cachePath":Ljava/lang/String;
    sget-object v2, Lcom/miui/internal/app/LicenseActivity;->CACHE:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 251
    .local v1, "template":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 252
    const-string v2, "user_manual/%s/%s/index.html"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p3, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v2, "user_manual/%s/%s/index.html"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "en_US"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 256
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object p3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0}, Lcom/miui/internal/app/LicenseActivity;->isFileExistsInAssets(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v5

    const-string v3, "en_US"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/internal/app/LicenseActivity;->isFileExistsInAssets(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "default"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/internal/app/LicenseActivity;->isFileExistsInAssets(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "default"

    aput-object v3, v2, v5

    const-string v3, "en_US"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "licenseType"    # I
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 235
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 236
    .local v0, "device":Ljava/lang/String;
    sget-boolean v2, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v2, :cond_0

    .line 237
    const-string v0, "mi4"

    .line 239
    :cond_0
    sget-object v2, Lcom/miui/internal/app/LicenseActivity;->URL:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .end local v0    # "device":Ljava/lang/String;
    .local v1, "url":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 241
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/miui/internal/app/LicenseActivity;->URL:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method private isConnectivityActive()Z
    .locals 2

    .prologue
    .line 298
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/LicenseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 299
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isFileExistsInAssets(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 278
    .local v0, "exist":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 279
    const/4 v0, 0x1

    .line 282
    if-eqz v1, :cond_0

    .line 284
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 280
    :catch_0
    move-exception v2

    .line 282
    if-eqz v1, :cond_0

    .line 284
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 285
    :catch_1
    move-exception v2

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 284
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 286
    :cond_1
    :goto_1
    throw v2

    .line 285
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private isValidLicenseType(I)Z
    .locals 1
    .param p1, "licenseType"    # I

    .prologue
    .line 229
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onReceivedError()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/LicenseActivity;->dismissDialog(I)V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/LicenseActivity;->showDialog(I)V

    .line 306
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    sget v4, Lcom/miui/internal/R$layout;->license_activity:I

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/LicenseActivity;->setContentView(I)V

    .line 161
    sget v4, Lcom/miui/internal/R$id;->web_view:I

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 162
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 163
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/miui/internal/app/LicenseActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/miui/internal/app/LicenseActivity$4;

    invoke-direct {v5, p0}, Lcom/miui/internal/app/LicenseActivity$4;-><init>(Lcom/miui/internal/app/LicenseActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.LICENSE_TYPE"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 174
    .local v2, "licenseType":I
    invoke-direct {p0, v2}, Lcom/miui/internal/app/LicenseActivity;->isValidLicenseType(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->finish()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-object v4, Lcom/miui/internal/app/LicenseActivity;->TITLE:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mTitle:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "language":Ljava/lang/String;
    const-string v4, "ro.miui.region"

    const-string v5, "default"

    invoke-static {v4, v5}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "region":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v1}, Lcom/miui/internal/app/LicenseActivity;->getCachePath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;

    .line 183
    invoke-direct {p0, v2, v3, v1}, Lcom/miui/internal/app/LicenseActivity;->getUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mUrl:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/miui/internal/app/LicenseActivity;->isConnectivityActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/miui/internal/app/LicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 197
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/miui/internal/app/LicenseActivity;->onReceivedError()V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v4, p0, Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    return-object v1

    .line 206
    :pswitch_0
    new-instance v3, Lmiui/app/ProgressDialog;

    invoke-direct {v3, p0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 207
    .local v3, "progressDialog":Lmiui/app/ProgressDialog;
    sget v4, Lcom/miui/internal/R$string;->loading:I

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v3, v7}, Lmiui/app/ProgressDialog;->setProgressStyle(I)V

    .line 209
    move-object v1, v3

    .line 211
    goto :goto_0

    .line 214
    .end local v3    # "progressDialog":Lmiui/app/ProgressDialog;
    :pswitch_1
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    sget v4, Lcom/miui/internal/R$string;->license_host_unreachable:I

    invoke-virtual {p0, v4}, Lcom/miui/internal/app/LicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/internal/app/LicenseActivity;->mUrl:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/app/LicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    iget-object v6, p0, Lcom/miui/internal/app/LicenseActivity;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/app/LicenseActivity;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/miui/internal/app/LicenseActivity;->finish()V

    .line 322
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
