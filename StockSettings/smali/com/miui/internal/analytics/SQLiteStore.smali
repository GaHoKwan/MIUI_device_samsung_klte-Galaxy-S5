.class Lcom/miui/internal/analytics/SQLiteStore;
.super Ljava/lang/Object;
.source "SQLiteStore.java"

# interfaces
.implements Lcom/miui/internal/analytics/Storable;


# static fields
.field public static final TAG:Ljava/lang/String; = "ANALYTICS.SQLITESTORE"


# instance fields
.field private mDatabaseHelper:Lcom/miui/internal/analytics/DatabaseHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public create(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {}, Lcom/miui/internal/analytics/DatabaseHelper;->getInstance()Lcom/miui/internal/analytics/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/SQLiteStore;->mDatabaseHelper:Lcom/miui/internal/analytics/DatabaseHelper;

    .line 18
    return-void
.end method

.method public readDataset(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/internal/analytics/SQLiteStore;->mDatabaseHelper:Lcom/miui/internal/analytics/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/internal/analytics/SQLiteStore;->mDatabaseHelper:Lcom/miui/internal/analytics/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/miui/internal/analytics/DatabaseHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "param"    # Ljava/lang/String;
    .param p5, "trackTime"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/internal/analytics/SQLiteStore;->mDatabaseHelper:Lcom/miui/internal/analytics/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/internal/analytics/SQLiteStore;->mDatabaseHelper:Lcom/miui/internal/analytics/DatabaseHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/analytics/DatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method
