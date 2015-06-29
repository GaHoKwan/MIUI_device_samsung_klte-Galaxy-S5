.class public Lcom/miui/internal/component/plugin/PluginResourceLoader;
.super Ljava/lang/Object;
.source "PluginResourceLoader.java"


# instance fields
.field private pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/component/plugin/PluginLoader;)V
    .locals 0
    .param p1, "pluginLoader"    # Lcom/miui/internal/component/plugin/PluginLoader;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    .line 17
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/Class;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginException;
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/component/plugin/PluginResourceLoader;->lookup(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/component/plugin/PluginException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v3, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v3, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->getPlugins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 25
    .local v1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/plugin/Plugin;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 26
    :cond_0
    new-instance v3, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no plugin found for extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 27
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 28
    new-instance v3, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "more than one plugin found for extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/component/plugin/Plugin;

    .line 31
    .local v0, "plugin":Lcom/miui/internal/component/plugin/Plugin;
    iget-object v3, p0, Lcom/miui/internal/component/plugin/PluginResourceLoader;->pluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v3, v0}, Lcom/miui/internal/component/plugin/PluginLoader;->getResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;

    move-result-object v2

    .line 32
    .local v2, "resources":Landroid/content/res/Resources;
    return-object v2
.end method
