<?php

use App\Http\Controllers\InvoiceController;
use App\Livewire\CategoryList;
use App\Livewire\ClientList;
use App\Livewire\CommandDetail;
use App\Livewire\CommandLineList;
use App\Livewire\CommandList;
use App\Livewire\HomePage;
use App\Livewire\ProductList;
use Illuminate\Support\Facades\Route;

Route::get('/', HomePage::class)->name('home');

Route::get('/products',  ProductList::class)->name('product.list');

Route::get('/categories',  CategoryList::class)->name('category.list');

Route::get('/clients',  ClientList::class)->name('client.list');

Route::get('/commands',  CommandList::class)->name('command.list');

Route::get('/commands-line',  CommandLineList::class)->name('command-line.list');

Route::get('/commands-detail/{cl}',  CommandDetail::class)->name('command.detail');

Route::get('/invoice/{cl}', [InvoiceController::class, 'index'])->name('invoice.index');
