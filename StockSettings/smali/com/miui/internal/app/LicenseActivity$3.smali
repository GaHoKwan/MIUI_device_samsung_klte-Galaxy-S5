.class Lcom/miui/internal/app/LicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "LicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/LicenseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasLoadFirstPage:Z

.field final synthetic this$0:Lcom/miui/internal/app/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/LicenseActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/LicenseActivity;->dismissDialog(I)V

    .line 120
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/LicenseActivity;->showDialog(I)V

    .line 115
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # invokes: Lcom/miui/internal/app/LicenseActivity;->isDeviceProvisioned()Z
    invoke-static {v0}, Lcom/miui/internal/app/LicenseActivity;->access$000(Lcom/miui/internal/app/LicenseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # getter for: Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/internal/app/LicenseActivity;->access$100(Lcom/miui/internal/app/LicenseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # getter for: Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/internal/app/LicenseActivity;->access$100(Lcom/miui/internal/app/LicenseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # invokes: Lcom/miui/internal/app/LicenseActivity;->onReceivedError()V
    invoke-static {v0}, Lcom/miui/internal/app/LicenseActivity;->access$200(Lcom/miui/internal/app/LicenseActivity;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # getter for: Lcom/miui/internal/app/LicenseActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/miui/internal/app/LicenseActivity;->access$300(Lcom/miui/internal/app/LicenseActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # getter for: Lcom/miui/internal/app/LicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/internal/app/LicenseActivity;->access$100(Lcom/miui/internal/app/LicenseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    iget-object v3, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    # invokes: Lcom/miui/internal/app/LicenseActivity;->isDeviceProvisioned()Z
    invoke-static {v3}, Lcom/miui/internal/app/LicenseActivity;->access$000(Lcom/miui/internal/app/LicenseActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/miui/internal/app/LicenseActivity$3;->mHasLoadFirstPage:Z

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 152
    :goto_0
    return v1

    .line 142
    :cond_0
    iget-boolean v3, p0, Lcom/miui/internal/app/LicenseActivity$3;->mHasLoadFirstPage:Z

    if-eqz v3, :cond_1

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/app/LicenseActivity$3;->this$0:Lcom/miui/internal/app/LicenseActivity;

    invoke-virtual {v1, v0}, Lcom/miui/internal/app/LicenseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v2

    .line 149
    goto :goto_0

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-boolean v2, p0, Lcom/miui/internal/app/LicenseActivity$3;->mHasLoadFirstPage:Z

    goto :goto_0

    .line 147
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
