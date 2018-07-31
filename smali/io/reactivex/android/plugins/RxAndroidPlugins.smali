.class public final Lio/reactivex/android/plugins/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile onInitMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;Lio/reactivex/Scheduler;>;"
    .local p1, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    invoke-static {p0, p1}, Lio/reactivex/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    .line 82
    .local v0, "scheduler":Lio/reactivex/Scheduler;
    if-eqz v0, :cond_0

    .line 85
    return-object v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Scheduler Callable returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    .line 71
    .local v1, "scheduler":Lio/reactivex/Scheduler;
    if-eqz v1, :cond_0

    .line 74
    return-object v1

    .line 72
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Scheduler Callable returned null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "scheduler":Lio/reactivex/Scheduler;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "scheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    if-eqz p0, :cond_0

    .line 38
    sget-object v0, Lio/reactivex/android/plugins/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/functions/Function;

    .line 39
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;Lio/reactivex/Scheduler;>;"
    if-eqz v0, :cond_1

    .line 42
    invoke-static {v0, p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 36
    .end local v0    # "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;Lio/reactivex/Scheduler;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "scheduler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .restart local v0    # "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;Lio/reactivex/Scheduler;>;"
    :cond_1
    invoke-static {p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 3
    .param p0, "scheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 53
    sget-object v0, Lio/reactivex/android/plugins/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/functions/Function;

    .line 54
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;>;"
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0, p0}, Lio/reactivex/android/plugins/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1

    .line 51
    .end local v0    # "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;>;"
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "scheduler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .restart local v0    # "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;>;"
    :cond_1
    return-object p0
.end method
