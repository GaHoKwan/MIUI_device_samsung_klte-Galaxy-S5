.class Lcn/nian/stocksettings/StockSettingsActivity$3;
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
    .line 247
    iput-object p1, p0, Lcn/nian/stocksettings/StockSettingsActivity$3;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    const-string v0, "busybox killall system_server"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 251
    return-void
.end method
