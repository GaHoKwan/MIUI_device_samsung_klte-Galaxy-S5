.class final Lcom/miui/internal/util/DirectIndexedFileExtractor$1;
.super Landroid/os/AsyncTask;
.source "DirectIndexedFileExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/util/DirectIndexedFileExtractor;->tryExtractDirectIndexedFiles(Landroid/content/Context;)V
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
.field final synthetic val$assetFiles:[Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$assetFiles:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$assetFiles:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 46
    .local v1, "file":Ljava/lang/String;
    const-string v4, ".idf"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/miui/internal/util/DirectIndexedFileExtractor$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/miui/internal/util/DirectIndexedFileExtractor;->extractDirectIndexedFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "file":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method
