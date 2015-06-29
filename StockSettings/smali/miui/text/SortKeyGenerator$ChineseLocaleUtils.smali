.class Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;
.super Lmiui/text/SortKeyGenerator$BaseGenerator;
.source "SortKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/SortKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseLocaleUtils"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/text/SortKeyGenerator;


# direct methods
.method private constructor <init>(Lmiui/text/SortKeyGenerator;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;->this$0:Lmiui/text/SortKeyGenerator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/text/SortKeyGenerator;
    .param p2, "x1"    # Lmiui/text/SortKeyGenerator$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;-><init>(Lmiui/text/SortKeyGenerator;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x20

    .line 192
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 193
    .local v3, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/text/ChinesePinyinConverter$Token;

    .line 198
    .local v2, "token":Lmiui/text/ChinesePinyinConverter$Token;
    const/4 v4, 0x2

    iget v5, v2, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    if-ne v4, v5, :cond_2

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 200
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v4, v2, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v4, v2, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 210
    iget-object v4, v2, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    iget-object v4, v2, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 216
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    iget-object v4, v2, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    .end local v2    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_5
    invoke-super {p0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
