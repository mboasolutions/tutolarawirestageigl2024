<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CommandLine extends Model
{
    use HasFactory;

    protected $fillable = [
        'client_id',
        'total_command'
    ];

    public function commands(): HasMany
    {
        return $this->hasMany(Command::class);
    }

    public function client(): BelongsTo
    {
        return $this->belongsTo(Client::class);
    }
}
