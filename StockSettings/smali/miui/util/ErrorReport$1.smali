.class final Lmiui/util/ErrorReport$1;
.super Landroid/os/AsyncTask;
.source "ErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ErrorReport;->sendReportRequestAsync(Landroid/content/Context;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lorg/json/JSONObject;

.field final synthetic val$flag:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lmiui/util/ErrorReport$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$1;->val$data:Lorg/json/JSONObject;

    iput p3, p0, Lmiui/util/ErrorReport$1;->val$flag:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/util/ErrorReport$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 333
    iget-object v0, p0, Lmiui/util/ErrorReport$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$1;->val$data:Lorg/json/JSONObject;

    iget v2, p0, Lmiui/util/ErrorReport$1;->val$flag:I

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method