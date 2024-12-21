<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    // In Favorite model
public function product()
{
    return $this->belongsTo(Product::class); // Assuming 'product_id' is the foreign key in the 'favorites' table
}

}
