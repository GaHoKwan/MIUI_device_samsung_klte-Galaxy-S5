.class Lcn/nian/stocksettings/StockSettingsActivity$1;
.super Ljava/lang/Object;
.source "StockSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nian/stocksettings/StockSettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 81
    iput-object p1, p0, Lcn/nian/stocksettings/StockSettingsActivity$1;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v5, 0x7f07000e

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 84
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, "NewDensity":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcn/nian/stocksettings/StockSettingsActivity$1;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-virtual {v4}, Lcn/nian/stocksettings/StockSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return v2

    .line 89
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "i":I
    const/16 v4, 0xb4

    if-lt v1, v4, :cond_1

    const/16 v4, 0x258

    if-le v1, v4, :cond_2

    .line 91
    :cond_1
    iget-object v4, p0, Lcn/nian/stocksettings/StockSettingsActivity$1;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-virtual {v4}, Lcn/nian/stocksettings/StockSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcn/nian/stocksettings/StockSettingsActivity$1;->this$0:Lcn/nian/stocksettings/StockSettingsActivity;

    invoke-virtual {v2}, Lcn/nian/stocksettings/StockSettingsActivity;->DialogReboot()V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setprop qemu.sf.lcd_density "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    move v2, v3

    .line 96
    goto :goto_0
.end method
