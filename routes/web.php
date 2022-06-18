<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\User\TicketController;
use App\Http\Controllers\User\WalletController;
use App\Http\Controllers\User\ProfileController;
use App\Http\Controllers\Auth\AdminAuthController;
use App\Http\Controllers\User\DashboardController;
use App\Http\Controllers\User\LoginuserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::namespace('Auth')->prefix('admin')->group(function () {
    Route::get('/login', [AdminAuthController::class, 'getLogin'])->name('adminLogin');
    Route::post('/login', [AdminAuthController::class, 'postLogin'])->name('adminLoginPost');
    Route::post('/logout', [AdminAuthController::class, 'logout'])->name('adminLogout');
    });


    Route::prefix('user')->namespace('User')->name('user.')->group(function () {
        Route::get('/login', [LoginuserController::class, 'login'])->name('login');
        Route::post('/login', [LoginuserController::class, 'authenticate'])->name('login.post');

        Route::get('/register', [LoginuserController::class, 'register'])->name('register');
        Route::post('/register', [LoginuserController::class, 'store'])->name('register.post');


        Route::post('/logout', [LoginuserController::class, 'logout'])->name('logout');
    });



    Route::prefix('user')->namespace('User')->name('user.')->middleware([ 'userauth'])->group(function () {


        Route::prefix('dashboard')->name('dashboard.')->group(function () {
            Route::get('/', [DashboardController::class, 'dashboard'])->name('index');
        });


            //profile
            Route::prefix('profile')->name('profile.')->group(function () {
                Route::get('/', [ProfileController::class, 'index'])->name('index');
                Route::get('/show', [ProfileController::class, 'show'])->name('show');
                Route::get('/edit', [ProfileController::class, 'edit'])->name('edit');
                Route::put('/update', [ProfileController::class, 'update'])->name('update');
                Route::get('/secret', [ProfileController::class, 'secret'])->name('secret');
                Route::put('/secret', [ProfileController::class, 'secret_update'])->name('secret.update');
            });




        Route::prefix('ticket')->name('ticket.')->group(function () {
            Route::get('/indexticket', [TicketController::class, 'index'])->name('index');
            Route::get('/createticket', [TicketController::class, 'create'])->name('create');
            Route::post('/', [TicketController::class, 'store'])->name('store');
            Route::get('/{id}', [TicketController::class, 'show'])->name('show');
            Route::put('/{ticket}', [TicketController::class, 'update'])->name('update');
            Route::delete('/{id}', [TicketController::class, 'destroy'])->name('destroy');



        });


        Route::prefix('wallet')->name('wallet.')->group(function () {
            Route::get('/indexwallet', [WalletController::class, 'index'])->name('index');
            Route::get('/createwallet', [WalletController::class, 'create'])->name('create');
            Route::post('/', [WalletController::class, 'store'])->name('store');


          });

        });







Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




 //Clear route cache
 Route::get('/route-cache', function() {
    Artisan::call('route:cache');
    return 'Routes cache cleared';
});

//Clear config cache
Route::get('/config-cache', function() {
    Artisan::call('config:cache');
    return 'Config cache cleared';
});

// Clear application cache
Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return 'Application cache cleared';
});

// Clear view cachee
Route::get('/view-clear', function() {
    Artisan::call('view:clear');
    return 'View cache cleared';
});

// Clear cache using reoptimized class
Route::get('/optimize-clear', function() {
    Artisan::call('optimize:clear');
    return 'View cache cleared';
});

// composer dump-autoload
Route::get('/updateapp', function() {

    exec('composer dump-autoload');
    echo 'composer dump-autoload complete';
});


//salam farmande

// git remote set-url origin "https://mostafayosefi@github.com/mostafayosefi/payment.git"

