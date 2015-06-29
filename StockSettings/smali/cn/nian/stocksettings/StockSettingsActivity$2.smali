.class Lcn/nian/stocksettings/StockSettingsActivity$2;
.super Ljava/lang/Object;
.source "StockSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nian/stocksettings/StockSettingsActivity;->DialogReboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nian/stocksettings/StockSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nian/stocksettings/StockSettingsActivity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcn/nian/stocksettings/StockSettingsActivity$2;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcn/nian/stocksettings/StockSettingsActivity$2;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-virtual {v0}, Lcn/nian/stocksettings/StockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070013

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 258
    return-void
.end method
