.class public Lcom/android/camera/network/net/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static instance:Lcom/android/camera/network/net/HttpManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequestCache:Lcom/android/camera/network/net/GalleryCache;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/network/net/HttpManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/camera/network/net/HttpManager;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/camera/network/net/HttpManager;

    invoke-direct {v0}, Lcom/android/camera/network/net/HttpManager;-><init>()V

    sput-object v0, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/android/camera/network/net/HttpManager;->instance:Lcom/android/camera/network/net/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addToRequestQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    iget-object v0, p0, Lcom/android/camera/network/net/HttpManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 67
    return-void
.end method

.method public putDefaultCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assetName"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    invoke-virtual {v1, p1}, Lcom/android/camera/network/net/GalleryCache;->isCacheValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    invoke-virtual {v1, p1}, Lcom/android/camera/network/net/GalleryCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/android/camera/network/net/HttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/android/camera/sticker/FileUtils;->copyFileIfNeed(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    .line 61
    iget-object v1, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    invoke-virtual {v1}, Lcom/android/camera/network/net/GalleryCache;->initialize()V

    .line 63
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public putToCache(Ljava/lang/String;[BJJ)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "expires"    # J
    .param p5, "softTtl"    # J

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/camera/network/net/HttpManager;->mRequestCache:Lcom/android/camera/network/net/GalleryCache;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/network/net/GalleryCache;->put(Ljava/lang/String;[BJJ)V

    .line 49
    return-void
.end method
