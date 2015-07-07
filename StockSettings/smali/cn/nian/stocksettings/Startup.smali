.class public Lcn/nian/stocksettings/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 13
    invoke-static {p1}, Lcn/nian/stocksettings/StockSettingsActivity;->RestoreCABC(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lcn/nian/stocksettings/StockSettingsActivity;->RestoremKnock(Landroid/content/Context;)V


    .line 16
    invoke-static {p1}, Lcn/nian/stocksettings/mDNIeScenario;->restore(Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Lcn/nian/stocksettings/mDNIeMode;->restore(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcn/nian/stocksettings/VibratorTuning;->restore(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Lcn/nian/stocksettings/StockSettingsActivity;->RestoremLedFake(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Lcn/nian/stocksettings/StockSettingsActivity;->RestoremCharge(Landroid/content/Context;)V

    .line 33
    return-void
.end method
