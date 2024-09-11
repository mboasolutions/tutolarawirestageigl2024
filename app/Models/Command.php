<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Command extends Model
{
    use HasFactory;

    protected $fillable = [
        'commandline_id',
        'product_name',
        'quantity',
        'price'
    ];

    public function commandline(): BelongsTo
    {
        return $this->belongsTo(CommandLine::class);
    }

    public function products(): BelongsToMany
    {
        return $this->belongsToMany(Product::class);
    }
    
}
