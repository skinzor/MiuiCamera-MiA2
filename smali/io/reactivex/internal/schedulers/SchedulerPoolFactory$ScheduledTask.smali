.class final Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledTask"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 129
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_1_R":Ljava/lang/Object;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    :goto_1
    return-void

    .line 129
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 130
    .local v2, "e":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "-l_1_R":Ljava/lang/Object;
    .end local v2    # "e":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "-l_1_R":Ljava/lang/Object;
    .restart local v2    # "e":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_1
    :try_start_1
    sget-object v3, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
