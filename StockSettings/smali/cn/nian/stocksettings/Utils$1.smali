.class final Lcn/nian/stocksettings/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nian/stocksettings/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nian/stocksettings/Utils$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcn/nian/stocksettings/Utils$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    return-void
.end method
